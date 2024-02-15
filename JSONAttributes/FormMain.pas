unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel3: TPanel;
    Memo1: TMemo;
    Panel4: TPanel;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  AulaJson.Model.Pedido,
  REST.JSON,
  System.Json;
{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  Pedido : TModelPedido;
  JSonPedido : TJSONObject;
begin
  Pedido := TModelPedido.Create;
  try
    Pedido
      .isApproved(false)
      .Cliente('Julio Cesar')
      .Numero(100)
      .Data(Now)
      .Numero(140)
      .Valor(210.30);
    Pedido.Item
      .Custo(10)
      .Produto('Produto1')
      .Quantidade(20)
      .Venda(40);
    Pedido.Item
      .Custo(30)
      .Produto('Produto2')
      .Quantidade(10)
      .Venda(50);
    Pedido.Item
      .Custo(50)
      .Produto('Produto3')
      .Quantidade(100)
      .Venda(80);
    JSonPedido := TJSON.ObjectToJsonObject(Pedido);
    try
      Memo1.Text := JSonPedido.Format;
    finally
      JSONPedido.Free;
    end;

  finally
    Pedido.Free;
  end;
end;

procedure TForm5.Button2Click(Sender: TObject);
var
  Pedido : TModelPedido;
begin
  Memo2.Clear;
  Pedido := TJSON.JsonToObject<TModelPedido>(Memo1.Text);
  try
    Memo2.Lines.Add('IsApproved = ' + BoolToStr(Pedido.IsApproved, true));
    Memo2.Lines.Add('Cliente = ' + Pedido.Cliente);
    Memo2.Lines.Add('Valor = ' + Pedido.Valor.ToString);
    Memo2.Lines.Add('Numero = ' + Pedido.Numero.ToString);
    Memo2.Lines.Add('Pedido Item (Produto) = ' + Pedido.Item(0).Produto);
    Memo2.Lines.Add('Pedido Item (Custo) = ' + Pedido.Item(0).Custo.ToString);
    Memo2.Lines.Add('Pedido Item (Venda) = ' + Pedido.Item(0).Venda.ToString);
  finally
    Pedido.Free;
  end;
end;

end.
