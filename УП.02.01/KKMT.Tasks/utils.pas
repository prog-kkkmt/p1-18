unit Utils;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Dialogs, fpjson, fphttpclient, Forms;

type
  // Класс инкапсуляции объекта Integer
  TIntObj = class
   private
      FI: Integer;
   public
      property I: Integer Read FI;
      constructor Create(IValue: Integer);
   end;
  
// Создание и подготовка HttpClient для работы с GitHub API
function CreateGitHubHTTP: TFPHttpClient;
// Функция быстрого открытия модального окна
procedure OpenDialog(FormClass: TFormClass);

implementation

uses
  opensslsockets, jsonConf;

{ TIntObj }

constructor TIntObj.Create(IValue: Integer);
begin
   Inherited Create;
   FI := IValue;
end;

function CreateGitHubHTTP: TFPHttpClient;
var
  c: TJSONConfig;
begin
  c := TJSONConfig.Create(nil);
  Result := TFPHTTPClient.Create(nil);

  c.Filename := Application.Location+'/config.json';

  Result.AllowRedirect := True;
  Result.AddHeader('User-Agent', 'Mozilla/5.0 (compatible; fpweb)');
  Result.AddHeader('Accept', 'application/vnd.github.v3+json');
  Result.UserName := c.GetValue('/github/login', '');
  Result.Password := c.GetValue('/github/token', '');
end;

procedure OpenDialog(FormClass: TFormClass);
var
  ModalForm: TForm;
begin
  ModalForm := FormClass.Create(nil);
  ModalForm.ShowModal;
  ModalForm.Free;
end;

end.

