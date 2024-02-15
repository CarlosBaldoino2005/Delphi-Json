unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Memo1: TMemo;
    Panel4: TPanel;
    Memo2: TMemo;
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
  Form3: TForm3;

implementation
uses
  System.JSON,
  System.Generics.Collections;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  ArrayPessoa, ArrayReferencia : TJSONArray;
  JSONPessoa, JSONReferencia : TJSONObject;
  I, J : Integer;
begin
  ArrayPessoa := TJSONArray.Create;
  try
    for I := 1 to 2 do
    begin
      JSONPessoa := TJSONObject.Create;
      JSONPessoa.AddPair('nome', 'Julio Cesar' + I.ToString);
      JSONPessoa.AddPair('endereco', 'Rua Comandante' + I.ToString);
      JSONPessoa.AddPair('numero', TJSONNumber.Create(100 + I) );
      JSONPessoa.AddPair('isValid', TJSONBool.Create(false));

      ArrayReferencia := TJSONArray.Create;
      for J := 1 to 2 do
      begin
        JSONReferencia := TJSONObject.Create;
        JSONReferencia.AddPair('contato', 'Parente' + J.ToString);
        JSONReferencia.AddPair('telefone', '(99)99999-9999');
        ArrayReferencia.AddElement(JSONReferencia);
      end;

      JSONPessoa.AddPair('referencia', ArrayReferencia);

      ArrayPessoa.AddElement(JSONPessoa);
    end;
    Memo1.Text := ArrayPessoa.Format(3);
  finally
    ArrayPessoa.Free;
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  ArrayPessoa, ArrayReferencia : TJSONArray;
  I, J : Integer;
begin
  ArrayPessoa := TJSONObject.ParseJSONValue(Memo1.Text) as TJSONArray;
  try
    for I := 0 to ArrayPessoa.Count -1 do
    begin
      Memo2.Lines.Add('Nome = ' + ArrayPessoa.Items[I].GetValue<String>('nome'));
      Memo2.Lines.Add('Endereco = ' + ArrayPessoa.Items[I].GetValue<String>('endereco'));
      Memo2.Lines.Add('Numero = ' + ArrayPessoa.Items[I].GetValue<String>('numero'));
      Memo2.Lines.Add('IsValid = ' + ArrayPessoa.Items[I].GetValue<String>('isValid'));

      ArrayReferencia := ArrayPessoa.Items[I].GetValue<TJSONArray>('referencia');
      for J := 0 to ArrayReferencia.Count -1 do
      begin
        Memo2.Lines.Add('Referencia');
        Memo2.Lines.Add('    Contato = ' + ArrayReferencia.Items[J].GetValue<string>('contato'));
        Memo2.Lines.Add('    Telefone = ' + ArrayReferencia.Items[J].GetValue<string>('telefone'));
      end;
      Memo2.Lines.Add('');
    end;
  finally
    ArrayPessoa.Free
  end;
end;

end.
