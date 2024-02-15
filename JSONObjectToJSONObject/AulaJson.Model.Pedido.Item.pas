unit AulaJson.Model.Pedido.Item;

interface
uses
  REST.JSON.Types;
type
  TModelPedidoItem = class
    private
      FCusto : Double;
      FProduto : String;
      [JSONNameAttribute('qnt')]
      FQuantidade : Double;
      FVenda : Double;
    public
      function Custo(Value : Double) : TModelPedidoItem; overload;
      function Custo : Double; overload;
      function Produto(Value : String) : TModelPedidoItem; overload;
      function Produto : string; overload;
      function Quantidade(Value : Double) : TModelPedidoItem; overload;
      function Quantidade : Double; overload;
      function Venda(Value : Double) : TModelPedidoItem; overload;
      function Venda : Double; overload;
  end;
implementation

{ TModelItemPedido }

function TModelPedidoItem.Custo: Double;
begin
  Result := FCusto;
end;

function TModelPedidoItem.Custo(Value: Double): TModelPedidoItem;
begin
  Result := Self;
  FCusto := Value;
end;

function TModelPedidoItem.Produto: string;
begin
  Result := FProduto;
end;

function TModelPedidoItem.Produto(Value: String): TModelPedidoItem;
begin
  Result := Self;
  FProduto := Value;
end;

function TModelPedidoItem.Quantidade(Value: Double): TModelPedidoItem;
begin
  Result := Self;
  FQuantidade := Value;
end;

function TModelPedidoItem.Quantidade: Double;
begin
  Result := FQuantidade;
end;

function TModelPedidoItem.Venda(Value: Double): TModelPedidoItem;
begin
  Result := Self;
  FVenda := Value;
end;

function TModelPedidoItem.Venda: Double;
begin
  Result := FVenda;
end;

end.
