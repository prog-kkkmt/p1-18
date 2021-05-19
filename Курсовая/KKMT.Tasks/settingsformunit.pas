unit SettingsFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

 { TSettingsForm }

  TSettingsForm = class(TForm)
    // Кнопка сохранения
    Button1: TButton;
    // Кнопка отмены
    Button2: TButton;
    // Поле с именем пользователя GitHub
    LabeledEdit1: TLabeledEdit;
    // Поле с токеном пользователя GitHub
    LabeledEdit2: TLabeledEdit;
    // Нажатие на кнопку сохранения
    procedure Button1Click(Sender: TObject);
    // Нажатие на кнопку отмены
    procedure Button2Click(Sender: TObject);
    // Создания формы
    procedure FormCreate(Sender: TObject);
  private
    // Сохранение настроек в конфиг
    procedure LoadConfig;
    // Загрузка настроек из конфига
    procedure SaveConfig;
  public

  end;

implementation

{$R *.lfm}

uses
  jsonConf;

{ TSettingsForm }

procedure TSettingsForm.Button2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TSettingsForm.FormCreate(Sender: TObject);
begin
  LoadConfig;
end;

procedure TSettingsForm.Button1Click(Sender: TObject);
begin
  SaveConfig;
  Self.Close;
end;

procedure TSettingsForm.LoadConfig;
var
  c: TJSONConfig;
begin
  c := TJSONConfig.Create(nil);
  c.Filename := Application.Location+'/config.json';

  LabeledEdit1.Text := c.GetValue('/github/login', '');
  LabeledEdit2.Text := c.GetValue('/github/token', '');

  c.Free;
end;

procedure TSettingsForm.SaveConfig;
var
  c: TJSONConfig;
begin
  c := TJSONConfig.Create(nil);
  c.Filename := Application.Location+'/config.json';

  c.SetValue('/github/login', LabeledEdit1.Text);
  c.SetValue('/github/token', LabeledEdit2.Text);

  c.Free;
end;

end.

