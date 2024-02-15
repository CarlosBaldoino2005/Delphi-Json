unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.JSON.Builders,
  System.Classes;
type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Memo2: TMemo;
    Panel3: TPanel;
    Memo1: TMemo;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    procedure Iterator(Value : TJSONIterator);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  System.JSON,
  System.JSON.Writers,
  System.JSON.Types,
  System.JSON.Readers;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  StringWriter : TStringWriter;
  JsonWriter : TJSONTextWriter;
  JsonBuilder : TJsonObjectBuilder;
begin
  StringWriter := TStringWriter.Create;
  Jsonwriter := TJsonTextWriter.Create(StringWriter);
  JsonBuilder := TJSONObjectBuilder.Create(JsonWriter);
  try
    JsonWriter.Formatting := TJsonFormatting.Indented;
     JsonBuilder
     .BeginObject
      .Add('nome', 'Julio Cesar')
      .Add('endereco', 'Rua Comandante')
      .Add('numero', 100)
      .Add('isValid', false)
      .BeginArray('referencia')
        .BeginObject
          .Add('contato', 'Parente1')
          .Add('telefone', '(99)99999-9999')
        .EndObject
        .BeginObject
          .Add('contato', 'Parente2')
          .Add('telefone', '(99)99999-9999')
        .EndObject
      .EndArray
     .EndObject;

     Memo1.Text := StringWriter.ToString;
  finally
    JsonBuilder.Free;
    JSonWriter.Free;
    StringWriter.Free;
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
var
  StringWriter : TStringWriter;
  JsonWriter : TJSONTextWriter;
  JsonBuilder : TJsonArrayBuilder;
  ArrayElement : TJSONCollectionBuilder.TElements;
  I : Integer;
begin
  StringWriter := TStringWriter.Create;
  Jsonwriter := TJsonTextWriter.Create(StringWriter);
  JsonBuilder := TJSONArrayBuilder.Create(JsonWriter);
  try
    JsonWriter.Formatting := TJsonFormatting.Indented;
    ArrayElement := JsonBuilder.BeginArray;

    for I := 1 to 2 do
    begin
      ArrayElement
       .BeginObject
        .Add('nome', 'Julio Cesar' + I.ToString)
        .Add('endereco', 'Rua Comandante')
        .Add('numero', 100)
        .Add('isValid', false)
        .BeginArray('referencia')
          .BeginObject
            .Add('contato', 'Parente1')
            .Add('telefone', '(99)99999-9999')
          .EndObject
          .BeginObject
            .Add('contato', 'Parente2')
            .Add('telefone', '(99)99999-9999')
          .EndObject
        .EndArray
       .EndObject
    end;
    ArrayElement.EndArray;

     Memo1.Text := StringWriter.ToString;
  finally
    JsonBuilder.Free;
    JSonWriter.Free;
    StringWriter.Free;
  end;
end;

procedure TForm4.Button3Click(Sender: TObject);
var
  StringReader : TStringReader;
  JsonReader : TJsonTextReader;
  JsonIterator : TJSONIterator;
begin
  Memo2.Clear;
  StringReader := TStringReader.Create(Memo1.Text);
  JsonReader := TJsonTextReader.Create(StringReader);
  JsonIterator := TJSONIterator.Create(JsonReader);
  try
    Iterator(JSonITerator);

//    JsonIterator.Recurse;
//      JSonIterator.Next;
//      Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);
//      JSonIterator.Next;
//      Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);
//      JSonIterator.Next;
//      Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsValue.ToString);
//      JSonIterator.Next;
//      Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsValue.ToString);
//      JSonIterator.Next;
//      Memo2.Lines.Add(JsonIterator.Key);
//      JsonIterator.Recurse;
//        JSonIterator.Next;
//        JsonIterator.Recurse;
//          JSonIterator.Next;
//          Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);
//          JSonIterator.Next;
//          Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);
//        JsonIterator.Return;
//        JSonIterator.Next;
//        JsonIterator.Recurse;
//          JSonIterator.Next;
//          Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);
//          JSonIterator.Next;
//          Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);
//        JsonIterator.Return;
//      JsonIterator.Return;
//    JsonIterator.Return;
  finally
    JsonIterator.Free;
    JsonReader.Free;
    StringReader.Free;
  end;
end;

procedure TForm4.Button4Click(Sender: TObject);
var
  StringReader : TStringReader;
  JsonReader : TJsonTextReader;
  JsonIterator : TJSONIterator;
begin
  Memo2.Clear;
  StringReader := TStringReader.Create(Memo1.Text);
  JsonReader := TJsonTextReader.Create(StringReader);
  JsonIterator := TJSONIterator.Create(JsonReader);
  try
    JsonIterator.Find('referencia[0].contato');
    JsonIterator.Recurse;
    Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);
    JSonIterator.Next;
    Memo2.Lines.Add( JsonIterator.Key + ' = ' + JsonIterator.AsString);

  finally
    JsonIterator.Free;
    JsonReader.Free;
    StringReader.Free;
  end;

end;

procedure TForm4.Iterator(Value: TJSONIterator);
begin
  while value.Next do
  begin
    case value.&Type of
      TJsonToken.StartObject :
      begin
        Value.Recurse;
        Iterator(value);
      end;
      TJsonToken.String :
        Memo2.Lines.Add(StringOfChar(' ', value.Depth ) + Value.Key + ' = ' + Value.AsString);
      TJSonToken.Integer :
        Memo2.Lines.Add(StringOfChar(' ', value.Depth )+ Value.Key + ' = ' + Value.AsInteger.ToString);
      TJsonToken.Boolean :
        Memo2.Lines.Add(StringOfChar(' ', value.Depth )+ Value.Key + ' = ' + Value.AsValue.ToString);
      TJsonToken.StartArray :
      begin
        Memo2.Lines.Add(StringOfChar(' ', value.Depth ) + Value.Key);
        value.Recurse;
        Iterator(value);
        value.Return;
      end;
    end;
  end;
  value.Return;
end;
end.
