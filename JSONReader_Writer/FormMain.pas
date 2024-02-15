unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Memo2: TMemo;
    Panel3: TPanel;
    Memo1: TMemo;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
  System.JSON.Writers,
  System.JSON.Types,
  System.JSON.readers;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  StringWriter : TStringWriter;
  JsonWriter : TJsonTextWriter;
begin
  StringWriter := TStringWriter.Create;
  JsonWriter := TJsonTextWriter.Create(StringWriter);
  try
    JsonWriter.Formatting := TJsonFormatting.Indented;
    JsonWriter.WriteStartObject;
    JsonWriter.WritePropertyName('nome');
    JSONwriter.WriteValue('Julio Cesar');
    JSONwriter.WritePropertyName('endereco');
    JSONwriter.WriteValue('Rua Comandante');
    JSONwriter.WritePropertyName('numero');
    JSONwriter.WriteValue(100);
    JSONwriter.WritePropertyName('isValid');
    JSONwriter.WriteValue(true);
    JsonWriter.WritePropertyName('referencia');
    Jsonwriter.WriteStartArray;
      JsonWriter.WriteStartObject;
        JsonWriter.WritePropertyName('contato');
        JsonWriter.WriteValue('Parente1');
        JsonWriter.WritePropertyName('telefone');
        JsonWriter.WriteValue('(99)99999-9999');
      JsonWriter.WriteEndObject;
      JsonWriter.WriteStartObject;
        JsonWriter.WritePropertyName('contato');
        JsonWriter.WriteValue('Parente2');
        JsonWriter.WritePropertyName('telefone');
        JsonWriter.WriteValue('(99)99999-9999');
      JsonWriter.WriteEndObject;
    JsonWriter.WriteEndArray;
    JsonWriter.WriteEndObject;

    Memo1.Text := StringWriter.ToString;
  finally
    JsonWriter.Free;
    StringWriter.Free;
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  StringReader : TStringReader;
  JSONReader : TJsonTextReader;
  campo, auxiliar : String;
begin
  StringReader := TStringReader.Create(Memo1.Text);
  JSONReader := TJsonTextReader.Create(StringReader);
  try
    while JSONReader.Read do
    begin
      case JSOnreader.TokenType of
        TJsonToken.PropertyName :
          Campo := JSONReader.Value.ToString;
        TJsonToken.Integer,
        TJsonToken.String,
        TJsonToken.Boolean :
          Memo2.Lines.Add(auxiliar + Campo + ' = ' + JSONreader.Value.ToString);
        TJsonToken.StartArray :
        begin
          Memo2.Lines.Add(Campo);
          auxiliar := '    ';
        end;
        TJsonToken.EndArray :
         auxiliar := '';
      end;
    end;

  finally
    JSONReader.Free;
    StringReader.Free;
  end;

end;

end.
