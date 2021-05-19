unit AppDatabase;

interface

uses
  fpjson, sqldb, db, SQLite3Conn, sysutils, Generics.Collections, fgl, Variants, SQLite3;

type
  // SQL параметр вы виде пары имя-значение
  TParamPair = specialize TPair<String, Variant, String>;
  // Динамический массив параметров
  TParamsArray = Array of TParamPair;
  
  // Строка таблицы
  TRow = specialize TFPGMap<String, Variant>;
  // Таблица
  TTable = specialize TList<TRow>;

  // Класс базы данных приложения
  TAppDatabase = class (TInterfacedObject)
    // Объект соединения с базой данных
    Connection: TSQLite3Connection;
    // Объект транзакции
    Transaction: TSQLTransaction;
    // Объект запроса
    Query: TSQLQuery;

    // Выполнить SQL запрос с параметрами без возврата результата
    procedure Exec(AQuery: String; AParams: TParamsArray);
    // Выполнить SQL запрос без параметров и без возврата результата
    procedure Exec(AQuery: String);
    // Выполнить SQL запрос с параметрами и с возвратом результата
    function ExecOut(AQuery: String; AParams: TParamsArray): TTable;
    // Выполнить SQL запрос без параметров с возвратом результата
    function ExecOut(AQuery: String): TTable;

    constructor Create;
    destructor Free;
  end;

// Функция для упрощенного создания объекта TParamPair
function par(AName: String; AValue: Variant): TParamPair;


implementation

// ===== TDatabase =====

procedure TAppDatabase.Exec(AQuery: String; AParams: TParamsArray);
var
  Param: TParamPair;
begin
  Transaction.StartTransaction;

  Query.SQL.Text := AQuery;

  if Length(AParams) > 0 then
    for Param in AParams do
      Query.ParamByName(Param.Key).Value := Param.Value;
  Query.Prepare;

  try
		Query.ExecSQL;
  finally
		Transaction.Commit;

		Query.Clear;

		Transaction.EndTransaction;
	end;
end;

procedure TAppDatabase.Exec(AQuery: String);
begin
  Exec(AQuery, nil);
end;

function TAppDatabase.ExecOut(AQuery: String; AParams: TParamsArray): TTable;
var
  Param: TParamPair;
  Row: TRow;
  Field: TField;
begin
  Transaction.StartTransaction;

  Query.SQL.Text := AQuery;

  if Length(AParams) > 0 then
    for Param in AParams do
      Query.ParamByName(Param.Key).Value := Param.Value;
  Query.Prepare;

  try
    Query.Open;

    Result := TTable.Create;
    while not Query.EOF do
    begin
      Row := TRow.Create;
      for Field in Query.Fields do
        Row.Add(Field.FieldName, Field.Value);
      Result.Add(Row);

      Query.Next;
    end;
  finally
    Query.Close;

		Transaction.Commit;

    Query.Clear;

    Transaction.EndTransaction;
	end;
end;

function TAppDatabase.ExecOut(AQuery: String): TTable;
begin
  Result := ExecOut(AQuery, nil);
end;

constructor TAppDatabase.Create;
begin
  //if not FileExists('./application.db') then
  //begin
  //  FileCreate('./application.db');
  //end;

  Connection := TSQLite3Connection.Create(nil);
  Transaction := TSQLTransaction.Create(nil);
  Query := TSQLQuery.Create(nil);

  Connection.DatabaseName := './application.db';

  Connection.Transaction := Transaction;

  Query.DataBase := Connection;

  Connection.Open;

  Exec('CREATE TABLE IF NOT EXISTS "groups" ("name" TEXT NOT NULL UNIQUE,"github_id" TEXT NOT NULL UNIQUE,"id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE)');
  Exec('CREATE TABLE IF NOT EXISTS "tasks" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,"name" TEXT NOT NULL,"files" TEXT NOT NULL)');
end;

destructor TAppDatabase.Free;
begin
  Transaction.EndTransaction;

  Connection.Connected := False;

  Connection.Free;
  Transaction.Free;
  Query.Free;
end;


function par(AName: String; AValue: Variant): TParamPair;
begin
  Result.Key := AName;
  Result.Value := AValue;
end;


//procedure dbExecIn(queryString: String);
//begin
//  trans.startTransaction();
//  conn.executeDirect(queryString);
//  trans.commit();
//  trans.endTransaction();
//end;
//
//function dbExecOut(queryString: String): TJSONArray;
//var
//  response: TJSONArray;
//  responseRow: TJSONObject;
//  i: Integer;
//begin
//  response := TJSONArray.create();
//  query.SQL.text := queryString;
//  query.open();
//  while not query.eof do
//  begin
//    responseRow := TJSONObject.create();
//    for i := 0 to query.fields.count-1 do
//    begin
//      case query.fields[i].dataType of
//        TFieldType.ftInteger:
//          responseRow.add(query.fields[i].fieldName, query.fields[i].asInteger);
//        TFieldType.ftFloat:
//          responseRow.add(query.fields[i].fieldName, query.fields[i].asFloat);
//        TFieldType.ftMemo:
//          responseRow.add(query.fields[i].fieldName, query.fields[i].asString);
//        TFieldType.ftBlob:
//          responseRow.add(query.fields[i].fieldName, query.fields[i].asInteger);
//      end;
//    end;
//    response.add(responseRow);
//    query.Next;
//  end;
//  query.close();
//  trans.endTransaction();
//  result := response;
//end;

begin

end.

