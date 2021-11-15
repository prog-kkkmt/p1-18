unit MainFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CheckLst,
  ExtCtrls, Grids, ValEdit, ComCtrls, SQLite3, jsonparser, fpjson, fphttpclient,
  Types, LCLIntf, Buttons,
  Utils, AppDatabase,
  GroupFormUnit, TaskFormUnit, SettingsFormUnit;

type

 { TMainForm }

  // Класс главной формы
  TMainForm = class(TForm)
    // Кнопка добавления группы
    AddGroupButton: TBitBtn;
    // Кнопока добавления группы
    AddTaskList: TBitBtn;
    // Кнопка удаления группы
    DeleteGroupButton: TBitBtn;
    // Кнопка удаления таска
    DeleteTaskButton: TBitBtn;
    // Кнопка редактирования группы
    EditGroupButton: TBitBtn;
    // Группа редактирования таска
    EditTaskButton: TBitBtn;
    IconList: TImageList;
    Panel3: TPanel;
    // Кнопка сохранения репорта
    SaveStatusReportButton: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    // Кнопка настроек
    SettingsButton: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    // Лист групп
    GroupsList: TListBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    // Лист тасков
    TasksList: TListBox;
    // Главный лист с статусом выполнения заданий
    ListView1: TListView;
    TasksPanel: TPanel;
    GroupsPanel: TPanel;
    // Кнопка обновления репорта
    UpdateStatusButton: TBitBtn;
    // Нажатие на кнопку добавления группы
    procedure AddGroupButtonClick(Sender: TObject);
    // Нажатие на кнопку добавления таска
    procedure AddTaskListClick(Sender: TObject);
    // Нажатие лист групп
    procedure GroupsListClick(Sender: TObject);
    // Двойное нажатие на лист с статусами заданий
    procedure ListView1DblClick(Sender: TObject);
    // Нажатие на кнопку сохранения репорта
    procedure SaveStatusReportButtonClick(Sender: TObject);
    // Нажатие на кнопку настроек
    procedure SettingsButtonClick(Sender: TObject);
    // Нажатие на лист тасков
    procedure TasksListClick(Sender: TObject);
    // Нажатие на кнопку обновления статусов заданий
    procedure UpdateStatusButtonClick(Sender: TObject);
    // Нажатие на кнопку удаления группы
    procedure DeleteGroupButtonClick(Sender: TObject);
    // Нажатие на кнопку удаления таска
    procedure DeleteTaskButtonClick(Sender: TObject);
    // Нажатие на кнопку редактирования группы
    procedure EditGroupButtonClick(Sender: TObject);
    // Нажатие на кнопку редактирования таска
    procedure EditTaskButtonClick(Sender: TObject);
    // Создание формы
    procedure FormCreate(Sender: TObject);
    // Функция обновления листа
    procedure UpdateList(TableName: String; UpdatingList: TListBox);
    // 
    procedure UpdateCurrentGroup;
    // 
    procedure UpdateCurrentTask;
    // Toggle блокировку формы
    procedure ChangeFormBlock(AEnabled: Boolean);
  private
    // Айди выбранной группы
    SelectedGroup: Integer;
    // Айди выбранного таска
    SelectedTask: Integer;
    // Айди загруженной группы
    LoadedGroup: Integer;
    // Айди загруженного таска
    LoadedTask: Integer;
  public
    // Обновляется ли сейчас статус задания
    NowUpdating: Boolean;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

type

  { TReportUpdateThread }

  TReportUpdateThread = class(TThread)
  private
    // Нужна ли остановка обновления
    FStop: Boolean;
    // Количество веток для проверки
    FMax: Integer;
    // Уже проверено веток
    FProgress: Integer;
    // Айди выбранной группы
    FSelectedGroup: Integer;
    // Айди выбранного таска
    FSelectedTask: Integer;
    // Лист итемов для добавления в вывод
    FListItemToAdd: TListItem;
    // Изменить прогресс бар
    procedure ChangeProgressBar;
    // Обновить прогресс
    procedure UpdateProgress;
    // Проверка была выполнена успешно
    procedure SuccessfulExecute;
  protected
    // Главная функция потока
    procedure Execute; override;
    // Вызовится в любом случае после завершения работы
    procedure AfterExecute(Sender: TObject);
  public
    constructor Create(CreateSuspended: Boolean; SelectedGroup, SelectedTask: Integer);
    // Запуск проверки
    procedure Start;
    // Остановка проверки
    procedure StopUpdating;
  end;

var
  // Поток проверки заданий
  Thread: TReportUpdateThread;

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  UpdateList('groups', GroupsList);
  UpdateList('tasks', TasksList);
  SelectedGroup := -1;
  SelectedTask := -1;
  LoadedGroup := -1;
  LoadedTask := -1;
end;

procedure TMainForm.UpdateStatusButtonClick(Sender: TObject);
begin
  if not NowUpdating then
  begin
	  if (SelectedGroup = -1) and (SelectedTask = -1) then exit;

    Label2.Caption := StaticText2.Caption;
    Label4.Caption := StaticText1.Caption;

	  Thread := TReportUpdateThread.Create(True, SelectedGroup, SelectedTask);
	  Thread.Start;
	end
  else
  begin
		Thread.StopUpdating;
	end;
end;

procedure TMainForm.SaveStatusReportButtonClick(Sender: TObject);
var
  AppDB: TAppDatabase;
  ResultTable: TTable;
  GroupName, TaskName: String;
  ReportContents: TStringList;
  FileName: String;
  ListItem: TListItem;
begin
  if (LoadedGroup = -1) or (LoadedTask = -1) then
    exit;

  AppDB := TAppDatabase.Create;
  ResultTable := AppDB.ExecOut('SELECT name FROM groups WHERE id=:id', [par('id', LoadedGroup)]);
  GroupName := ResultTable[0].KeyData['name'];
  ResultTable := AppDB.ExecOut('SELECT name FROM tasks WHERE id=:id', [par('id', LoadedTask)]);
  TaskName := ResultTable[0].KeyData['name'];
  ResultTable.Free;
  AppDB.Free;

  ReportContents := TStringList.Create;

  FileName := Format('%s_%s_%s',
    [GroupName, TaskName, FormatDateTime('DD-MM-YYYY_hh-nn-ss', Now)]);
  ReportContents.Add('KKMT TASKS REPORT');
  ReportContents.Add(Format('%s', [FileName]));
  ReportContents.Add('');

  for ListItem in ListView1.Items do
    ReportContents.Add(Format('%s , %s , %s',
      [ListItem.Caption, ListItem.SubItems[0], ListItem.SubItems[1]]));

  ForceDirectories(Application.Location+'/reports');
  ReportContents.SaveToFile(Application.Location+'/reports/'+FileName+'.txt');
end;

procedure TMainForm.SettingsButtonClick(Sender: TObject);
var
  ModalForm: TSettingsForm;
begin
  ModalForm := TSettingsForm.Create(nil);
  ModalForm.ShowModal;
  ModalForm.Free;
end;

procedure TMainForm.ListView1DblClick(Sender: TObject);
begin
  if ListView1.ItemIndex < 0 then
     exit;
  OpenURL(ListView1.Items[ListView1.ItemIndex].SubItems.Strings[0]);
end;

{ === GroupsPanel === }

procedure TMainForm.GroupsListClick(Sender: TObject);
begin
  if GroupsList.ItemIndex < 0 then
     exit;
  SelectedGroup := TIntObj(GroupsList.Items.Objects[GroupsList.ItemIndex]).I;
  StaticText2.Caption := GroupsList.GetSelectedText;
end;

procedure TMainForm.AddGroupButtonClick(Sender: TObject);
var
  ModalForm: TGroupForm;
begin
  ModalForm := TGroupForm.Create(MainForm);
  ModalForm.ShowModal;
  ModalForm.Free;
  //OpenDialog(TGroupForm);
  UpdateList('groups', GroupsList);
end;

procedure TMainForm.DeleteGroupButtonClick(Sender: TObject);
var
  AppDB: TAppDatabase;
begin
  if GroupsList.ItemIndex >= 0 then
  begin
    AppDB := TAppDatabase.Create;
    AppDB.Exec('DELETE FROM groups WHERE id=:id',
      [par('id', TIntObj(GroupsList.Items.Objects[GroupsList.ItemIndex]).I)]);
    UpdateCurrentGroup;
    UpdateList('groups', GroupsList);
  end;
end;

procedure TMainForm.EditGroupButtonClick(Sender: TObject);
var
  ModalForm: TGroupForm;
begin
  if GroupsList.ItemIndex >= 0 then
  begin
    ModalForm := TGroupForm.Create(MainForm, TIntObj(GroupsList.Items.Objects[GroupsList.ItemIndex]).I);
    ModalForm.ShowModal;
		if ModalForm.ModalResult = mrOK then
    begin
      UpdateCurrentGroup;
    	UpdateList('groups', GroupsList);
		end;
		ModalForm.Free;
  end;
end;

{ === TasksPanel === }

procedure TMainForm.TasksListClick(Sender: TObject);
begin
  if TasksList.ItemIndex < 0 then
     exit;
  SelectedTask := TIntObj(TasksList.Items.Objects[TasksList.ItemIndex]).I;
  StaticText1.Caption := TasksList.GetSelectedText;
end;

procedure TMainForm.AddTaskListClick(Sender: TObject);
var
  ModalForm: TTaskForm;
begin
  ModalForm := TTaskForm.Create(MainForm);
  ModalForm.ShowModal;
  ModalForm.Free;
  UpdateList('tasks', TasksList);
end;

procedure TMainForm.DeleteTaskButtonClick(Sender: TObject);
var
  AppDB: TAppDatabase;
begin
  if TasksList.ItemIndex >= 0 then
  begin
    AppDB := TAppDatabase.Create;
    AppDB.Exec('DELETE FROM tasks WHERE id=:id',
      [par('id', TIntObj(TasksList.Items.Objects[TasksList.ItemIndex]).I)]);
    UpdateCurrentTask;
    UpdateList('tasks', TasksList);
  end;
end;

procedure TMainForm.EditTaskButtonClick(Sender: TObject);
var
  ModalForm: TTaskForm;
begin
  if TasksList.ItemIndex >= 0 then
  begin
    ModalForm := TTaskForm.Create(MainForm, TIntObj(TasksList.Items.Objects[TasksList.ItemIndex]).I);
    ModalForm.ShowModal;
    if ModalForm.ModalResult = mrOk then
    begin
      UpdateCurrentTask;
      UpdateList('tasks', TasksList);
		end;
		ModalForm.Free;
  end;
end;

procedure TMainForm.UpdateList(TableName: String; UpdatingList: TListBox);
var
  AppDB: TAppDatabase;
  Table: TTable;
  Row: TRow;
begin
  AppDB := TAppDatabase.Create;
  Table := AppDB.ExecOut('SELECT * FROM '+TableName+';');

  UpdatingList.Clear;
  for Row in Table do
  begin
    UpdatingList.Items.AddObject(Row.KeyData['name'], TIntObj.Create(Row.KeyData['id']));
  end;
end;

procedure TMainForm.UpdateCurrentGroup;
var
  AppDB: TAppDatabase;
  Table: TTable;
begin
  if SelectedGroup <> -1 then
  begin
		AppDB := TAppDatabase.Create;
	  Table := AppDB.ExecOut('SELECT * FROM groups WHERE id=:id;', [par('id', SelectedGroup)]);
	  if Table.Count = 0 then
	  begin
	    SelectedGroup := -1;
	    Label2.Caption := '';
		end
    else
    begin
			Label2.Caption := Table.Items[0].KeyData['name'];
		end;
	end;

  if LoadedGroup <> -1 then
  begin
		Table := AppDB.ExecOut('SELECT * FROM groups WHERE id=:id;', [par('id', LoadedGroup)]);
	  if Table.Count = 0 then
	  begin
	    LoadedGroup := -1;
	    ListView1.Clear;
		end;
	end;

  Table.Free;
end;

procedure TMainForm.UpdateCurrentTask;
var
  AppDB: TAppDatabase;
  Table: TTable;
begin
  if SelectedTask <> -1 then
  begin
		AppDB := TAppDatabase.Create;
	  Table := AppDB.ExecOut('SELECT * FROM tasks WHERE id=:id;', [par('id', SelectedTask)]);
	  if Table.Count = 0 then
	  begin
	    SelectedTask := -1;
	    Label4.Caption := '';
		end
    else
    begin
			Label4.Caption := Table.Items[0].KeyData['name'];
		end;
	end;

	if LoadedTask <> -1 then
  begin
		Table := AppDB.ExecOut('SELECT * FROM tasks WHERE id=:id;', [par('id', LoadedTask)]);
	  if Table.Count = 0 then
	  begin
	    LoadedTask := -1;
	    ListView1.Clear;
		end;
	end;

  Table.Free;
end;

procedure TMainForm.ChangeFormBlock(AEnabled: Boolean);
begin
  GroupsList.Enabled := AEnabled;
  AddGroupButton.Enabled := AEnabled;
  DeleteGroupButton.Enabled := AEnabled;
  EditGroupButton.Enabled := AEnabled;
  TasksList.Enabled := AEnabled;
	AddTaskList.Enabled := AEnabled;
  DeleteTaskButton.Enabled := AEnabled;
  EditTaskButton.Enabled := AEnabled;
  SaveStatusReportButton.Enabled := AEnabled;
  SettingsButton.Enabled := AEnabled;
end;

{ TReportUpdateThread }

constructor TReportUpdateThread.Create(CreateSuspended: Boolean; SelectedGroup, SelectedTask: Integer);
begin
  inherited Create(CreateSuspended);

  FreeOnTerminate := True;
  FStop := False;
  FProgress := 0;
  FSelectedGroup := SelectedGroup;
  FSelectedTask := SelectedTask;
  FListItemToAdd := nil;
  OnTerminate := @AfterExecute;

  MainForm.ProgressBar1.Style := TProgressBarStyle.pbstMarquee;
  MainForm.ProgressBar1.Position := 0;
  MainForm.ListView1.Clear;
end;

procedure TReportUpdateThread.Start;
begin
  MainForm.NowUpdating := True;
  MainForm.UpdateStatusButton.ImageIndex := 1;

	MainForm.ChangeFormBlock(False);

	inherited Start;
end;

procedure TReportUpdateThread.StopUpdating;
begin
  FStop := True;
end;

procedure TReportUpdateThread.AfterExecute(Sender: TObject);
begin
  MainForm.ProgressBar1.Style := TProgressBarStyle.pbstNormal;
  MainForm.ProgressBar1.Position := 0;
  MainForm.NowUpdating := False;
  MainForm.UpdateStatusButton.ImageIndex := 3;

	MainForm.ChangeFormBlock(True);
end;

procedure TReportUpdateThread.ChangeProgressBar;
// this method is executed by the mainthread and can therefore access all GUI elements.
begin
  MainForm.ProgressBar1.Style := TProgressBarStyle.pbstNormal;
  MainForm.ProgressBar1.Max := FMax;
end;

procedure TReportUpdateThread.UpdateProgress;
// this method is executed by the mainthread and can therefore access all GUI elements.
begin
  MainForm.ProgressBar1.StepIt;
  MainForm.ListView1.Items.AddItem(FListItemToAdd);
end;

procedure TReportUpdateThread.SuccessfulExecute;
begin
  MainForm.LoadedGroup := FSelectedGroup;
  MainForm.LoadedTask := FSelectedTask;
end;

procedure TReportUpdateThread.Execute;
var
  HTTP: TFPHttpClient;
  AppDB: TAppDatabase;
  Table: TTable;
  GitHubId: String;
  HttpResult: String;
  BranchesJSON: TJSONArray;
  Enum, Enum2: TJSONEnum;
  Files: TStringList;
  Counter: Integer;
begin
  HTTP := CreateGitHubHTTP;
  AppDB := TAppDatabase.Create;

  Table := AppDB.ExecOut('SELECT github_id FROM groups WHERE id=:id;', [par('id', FSelectedGroup)]);
  if Table.Count <= 0 then
    exit;
  GitHubId := Table[0].KeyData['github_id'];

  Table := AppDB.ExecOut('SELECT * FROM tasks WHERE id=:id;', [par('id', FSelectedTask)]);
  if Table.Count <= 0 then
    exit;
  Files := TStringList.Create;
  for Enum in TJSONArray(GetJSON(Table[0].KeyData['files'])) do
    Files.Add(Enum.Value.AsString);

  try
    HttpResult := HTTP.Get(Format('https://api.github.com/repos/%s/branches', [GitHubId] ));
  except
    MessageDlg('Ошибка получения данных о ветках репозитория. Возможно репозиторий не существует.', mtError,
      [mbOK], 0);
    exit;
  end;

  BranchesJSON := TJSONArray(GetJSON(HttpResult));
  FMax := BranchesJSON.Count;

  Synchronize(@ChangeProgressBar);

  for Enum in BranchesJSON do
  begin
    if FStop then break;

    FListItemToAdd := TListItem.Create(MainForm.ListView1.Items);
    FListItemToAdd.Caption := TJSONObject(enum.Value)['name'].AsString;
    FListItemToAdd.SubItems.Add(Format('https://github.com/%s/tree/%s',
      [GitHubId, TJSONObject(enum.Value)['name'].AsString]));

    HttpResult := HTTP.Get(Format('https://api.github.com/repos/%s/git/trees/%s?recursive=1',
      [GitHubId, TJSONObject(enum.Value).GetPath('commit.sha').AsString]));

    Counter := Files.Count;
    for Enum2 in TJSONObject(GetJSON(HttpResult)).Arrays['tree'] do
    begin
      if Files.IndexOf(TJSONObject(Enum2.Value).Strings['path']) <> -1 then
        Dec(Counter);
    end;
    if Counter = 0 then
    // something good
      FListItemToAdd.SubItems.Add('DA')
    else
    // somethinf bad
      FListItemToAdd.SubItems.Add('NYET');

    Synchronize(@UpdateProgress);
  end;

  BranchesJSON.Free;
  AppDB.Free;
  HTTP.Free;
  Table.Free;
  Files.Free;

  Synchronize(@SuccessfulExecute);
end;

end.

