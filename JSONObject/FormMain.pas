unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  System.JSON,
  System.Generics.Collections;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  JSONPessoa, JSONReferencia : TJSONObject;
begin
  JSONPessoa := TJSONObject.Create;
  try
    JSONPessoa.AddPair('nome', 'Julio Cesar');
    JSONPessoa.AddPair('endereco', 'Rua Comandante');
    JSONPessoa.AddPair('numero', TJSONNumber.Create(100));
    JSONPessoa.AddPair('isValid', TJSONBool.Create(false));

    JSONReferencia := TJSONObject.Create;
    JSONReferencia.AddPair('telefone', '(99)99999-9999');

    JSONPessoa.AddPair('referencia', JSONReferencia);
    Memo1.Text := JSOnPessoa.Format(3);
  finally
    JSONPessoa.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  JSONPessoa : TJSONObject;
begin
  JSONPessoa := TJSONObject.ParseJSONValue(Memo1.Text) as TJSONObject;
  try
    JSONPessoa.RemovePair('endereco').Free;
    Memo2.Text := JSONPessoa.Format(3);
  finally
    JSONpessoa.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  JSONPessoa, JSONReferencia : TJSONObject;
begin
  JSONPessoa := TJSONObject.ParseJSONValue(Memo1.Text) as TJSONObject;
  try
    Memo2.Lines.Add('Nome = ' + JSONPessoa.GetValue<string>('nome'));
    Memo2.Lines.Add('endereco = ' + JSONPessoa.GetValue<string>('endereco'));
    Memo2.Lines.Add('numero = ' + JSONPessoa.GetValue<integer>('numero').ToString);

    JSONReferencia := JSONPessoa.GetValue('referencia') as TJSONObject;

    Memo2.Lines.Add('referencia = ' + JSONReferencia.GetValue('telefone').AsType<string>);
  finally
    JSONPessoa.Free;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  JSONPessoa, JSONReferencia : TJSONObject;
  I : integer;
begin
  JSONPessoa := TJSONObject.ParseJSONValue(Memo1.Text) as TJSONObject;
  try
    for I := 0 to JSONPessoa.Count - 1 do
    begin
      if JSONPessoa.Pairs[I].JsonValue is TJSONObject then
      begin
        JSONReferencia := JSONPessoa.Pairs[I].JsonValue as TJSONObject;
        Memo2.Lines.Add('referencia = ' + JSONReferencia.GetValue('telefone').AsType<string>);
      end
      else
        Memo2.Lines.Add(JSONPessoa.Pairs[I].JsonString.ToString + ' = ' + JSONPessoa.Pairs[I].JsonValue.ToString);
    end;
  finally
    JSONPessoa.Free;
  end;

end;

end.
