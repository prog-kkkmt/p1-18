unit TaskFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  CheckLst, ColorBox, ShellCtrls, ComCtrls, Buttons, AppDatabase, fpjson;

type

  { TTaskForm }

  TTaskForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Label1: TLabel;
    LabeledEdit1: TLabeledEdit;
    Panel1: TPanel;
    TreeView1: TTreeView;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    EditId: Integer;
    function TreeToPathsGenerator(Tree: TTreeNodes): TStringList;
    function TreeFromPathsGenerator(Paths: TStringList): TTreeNodes;
  public
    constructor Create(TheOwner: TComponent);
    constructor Create(TheOwner: TComponent; TaskForEditing: Integer); overload;
    procedure MakeForEdit(TaskId: Integer);
  end;

implementation

{$R *.lfm}

{ TTaskForm }

procedure TTaskForm.Button3Click(Sender: TObject);
var
  Filename: String;
begin
  Filename := InputBox('Введите имя файла',
      'Введите имя файла для проверки', '');
  if not Filename.IsEmpty then
    TreeView1.Items.AddChild(TreeView1.Selected, Filename);
end;

procedure TTaskForm.Button4Click(Sender: TObject);
begin
  if TreeView1.Selected <> nil then
    TreeView1.Items.Delete(TreeView1.Selected);
end;

procedure TTaskForm.TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
begin
  if not Assigned(TreeView1.GetNodeAt(X, Y)) then
    for i := 0 to TreeView1.Items.Count - 1 do
      TreeView1.Items[i].Selected := false;
end;

procedure TTaskForm.Button1Click(Sender: TObject);
var
  AppDB: TAppDatabase;
  FilePath: String;
  json: TJSONArray;
begin
  if Length(LabeledEdit1.Text) <= 0 then
  begin
    MessageDlg('Введите имя задания', mtError,
      [mbOK], 0);
    ModalResult := mrNone;
    exit;
  end;
  if TreeView1.Items.Count <= 0 then
  begin
    MessageDlg('Задайте структуру задания', mtError,
      [mbOK], 0);
    ModalResult := mrNone;
    exit;
  end;

  json := TJSONArray.Create;
  AppDB := TAppDatabase.Create;
  for FilePath in TreeToPathsGenerator(TreeView1.Items) do
    json.Add(FilePath.Substring(1));
  //ShowMessage(json.AsJSON);
  try
	  if EditId = -1 then
	    AppDB.Exec('INSERT INTO tasks (name, files) VALUES (:name, :files);', [par('name', LabeledEdit1.Text), par('files', json.AsJSON)] )
	  else
	    AppDB.Exec('UPDATE tasks SET name=:name, files=:files WHERE id=:id;',
	      [par('name', LabeledEdit1.Text), par('files', json.AsJSON), par('id', EditId)] );
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

procedure TTaskForm.Button2Click(Sender: TObject);
begin

end;

function TTaskForm.TreeToPathsGenerator(Tree: TTreeNodes): TStringList;
var Paths: TStringList;
  procedure TreeWalker(Node: TTreeNode; PathString: String);
  var
    i: Integer;
  begin
    PathString += '/'+Node.Text;
    if Node.HasChildren then
      for i:=0 to Node.Count-1 do
        TreeWalker(Node.Items[i], PathString)
    else
      Paths.Add(PathString);
  end;

var
  Node: TTreeNode;
begin
  Paths := TStringList.Create;
  for Node in Tree do
  begin
    if Node.Parent = nil then
      TreeWalker(Node, '');
  end;

  Result := Paths;
end;

function TTaskForm.TreeFromPathsGenerator(Paths: TStringList): TTreeNodes;
var
  Path: String;
  PathParsed: TStringArray;
  i, j: Integer;
  Node, ChildNode: TTreeNode;
begin
  Result := TreeView1.Items;
  for Path in Paths do
  begin
    PathParsed := Path.Split(['/'], TStringSplitOptions.ExcludeEmpty);

    Node := Result.FindNodeWithText(PathParsed[0]);
    if (Node = nil) or (Node.Parent <> nil) then
      Node := Result.AddChild(nil, PathParsed[0]);

    for i := 1 to Length(PathParsed)-1 do
    begin
      ChildNode := Node.FindNode(PathParsed[i]);
      if ChildNode = nil then
        ChildNode := Result.AddChild(Node, PathParsed[i]);
      Node := ChildNode;
    end;
  end;
end;

constructor TTaskForm.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  EditId := -1;
end;

constructor TTaskForm.Create(TheOwner: TComponent; TaskForEditing: Integer);
begin
  inherited Create(TheOwner);
  MakeForEdit(TaskForEditing);
end;

procedure TTaskForm.MakeForEdit(TaskId: Integer);
var
  AppDB: TAppDatabase;
  ResultTable: TTable;
  Paths: TStringList;
  Enum: TJSONEnum;
begin
  AppDB := TAppDatabase.Create;

  ResultTable := AppDB.ExecOut('SELECT * FROM tasks WHERE id=:id;', [par('id', TaskId)]);

  Self.LabeledEdit1.Text := ResultTable[0].KeyData['name'];

  Paths := TStringList.Create;
  for Enum in TJSONArray(GetJSON(ResultTable[0].KeyData['files'])) do
    Paths.Add(Enum.Value.AsString);
  Self.TreeFromPathsGenerator(Paths);

  Self.Caption := 'Изменение задания';

  Self.EditId := TaskId;
end;

end.

