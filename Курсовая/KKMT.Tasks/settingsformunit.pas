unit SettingsFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TSettingsForm }

  TSettingsForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure LoadConfig;
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

