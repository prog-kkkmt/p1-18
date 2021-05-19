unit GroupFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  fphttpclient,
  AppDatabase, Utils;

type

  { TGroupForm }

  TGroupForm = class(TForm)
    // OK кнопка
    Button1: TButton;
    // Кнопка отмены
    Button2: TButton;
    // Поле имени группы
    LabeledEdit1: TLabeledEdit;
    // Поле айди репозитория группы
    LabeledEdit2: TLabeledEdit;
    // Нажатие на ОК кнопку
    procedure Button1Click(Sender: TObject);
    // Нажатие на кнопку отмены
    procedure Button2Click(Sender: TObject);
  private
    // Айди группы для режима реадктирования
    EditId: Integer;
  public
    constructor Create(TheOwner: TComponent);
    constructor Create(TheOwner: TComponent; GroupForEditing: Integer); overload;
    // Изменить дизайн формы для редактирования группы
    procedure MakeForEdit(GroupId: Integer);
  end;

implementation

{$R *.lfm}

{ TGroupForm }

procedure TGroupForm.Button1Click(Sender: TObject);
var
  HTTP: TFPHttpClient;
  HttpResult: String;
  AppDB: TAppDatabase;
begin
  HTTP := CreateGitHubHTTP;
  AppDB := TAppDatabase.Create;

  //ShowMessage(Format('https://api.github.com/repos/%s', [LabeledEdit2.Text]));

  if String(LabeledEdit1.Text).IsEmpty or String(LabeledEdit1.Text).Contains(' ') then
  begin
    MessageDlg('Имя группы не должно быть пустым или иметь пробелы', mtError,
      [mbOK], 0);
    ModalResult := mrNone;
    exit;
  end;

  try
    HttpResult := HTTP.Get(Format('https://api.github.com/repos/%s', [LabeledEdit2.Text]));
  except
    if HTTP.ResponseStatusCode = 404 then
    begin
      MessageDlg('Репозиторий не найден', mtError,
        [mbOK], 0);
      ModalResult := mrNone;
      exit;
    end
    else
    begin
      MessageDlg('Ошибка получения данных о репозитории. Возможно репозиторий не существует.', mtError,
        [mbOK], 0);
      ModalResult := mrNone;
      exit;
    end;
  end;

  try
	  if EditId = -1 then
	    AppDB.Exec('INSERT INTO groups (name, github_id) VALUES (:name, :rep_id);',
	      [par('name', LabeledEdit1.Text), par('rep_id', LabeledEdit2.Text)])
	  else
	    AppDB.Exec('UPDATE groups SET name=:name, github_id=:rep_id WHERE id=:id;',
	      [par('name', LabeledEdit1.Text), par('rep_id', LabeledEdit2.Text), par('id', EditId)] );
	except
    on E: Exception do
    begin
			MessageDlg('Ошибка при записи в базу данных.'+LineEnding+E.Message, mtError,
	      [mbOK], 0);
	    ModalResult := mrNone;
	    exit;
		end;
	end;
end;

procedure TGroupForm.Button2Click(Sender: TObject);
begin

end;

constructor TGroupForm.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  EditId := -1;
end;

constructor TGroupForm.Create(TheOwner: TComponent; GroupForEditing: Integer);
begin
  inherited Create(TheOwner);
  MakeForEdit(GroupForEditing);
end;

procedure TGroupForm.MakeForEdit(GroupId: Integer);
var
  AppDB: TAppDatabase;
  ResultTable: TTable;
begin
  AppDB := TAppDatabase.Create;

  ResultTable := AppDB.ExecOut('SELECT * FROM groups WHERE id=:id;', [par('id', GroupId)]);

  Self.LabeledEdit1.Text := ResultTable[0].KeyData['name'];
  Self.LabeledEdit2.Text := ResultTable[0].KeyData['github_id'];

  Self.Caption := 'Изменение группы';

  Self.EditId := GroupId;
end;

end.

