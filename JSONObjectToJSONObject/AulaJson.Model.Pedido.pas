unit AulaJson.Model.Pedido;

interface
uses
  AulaJson.Model.Pedido.Item,
  Rest.JSON.Types;
type
  TModelPedido = class
    private
      FIsApproved : boolean;
      FCliente : String;
      FData : TDateTime;
      FItem : TArray<TModelPedidoItem>;
      FNumero : Integer;
      FValor : Double;
    public
      destructor Destroy; override;
      function IsApproved(Value : Boolean) : TModelPedido; overload;
      function IsApproved : Boolean; overload;
      function Cliente(Value : String) : TModelPedido; overload;
      function Cliente : string; overload;
      function Data(Value : TDateTime) : TModelPedido; overload;
      function Data : TDateTime; overload;
      function Item : TModelPedidoItem; overload;
      function Item(Indice : Integer) : TModelPedidoItem; overload;
      function Numero(Value : Integer) : TModelPedido; overload;
      function Numero : Integer; overload;
      function Valor(Value : Double) : TModelPedido; overload;
      function Valor : Double; overload;
  end;
implementation

{ TModelPedido }

function TModelPedido.Cliente(Value: String): TModelPedido;
begin
  Result := Self;
  FCliente := Value;
end;

function TModelPedido.Cliente: string;
begin
  Result := FCliente;
end;

function TModelPedido.Data: TDateTime;
begin
  Result := FData;
end;

destructor TModelPedido.Destroy;
var
  I : Integer;
begin
  for I := Low(FItem) to High(FItem) do
    FItem[I].Free;
  Finalize(FItem);
  inherited;
end;

function TModelPedido.IsApproved: Boolean;
begin
  Result := FIsApproved;
end;

function TModelPedido.IsApproved(Value: Boolean): TModelPedido;
begin
  Result := Self;
  FIsApproved := Value;
end;

function TModelPedido.Item(Indice: Integer): TModelPedidoItem;
begin
  Result := FItem[Indice];
end;

function TModelPedido.Item: TModelPedidoItem;
begin
  Insert(TModelPedidoItem.Create, FItem, Succ(High(FItem)));
  Result := FItem[High(FItem)];
end;

function TModelPedido.Data(Value: TDateTime): TModelPedido;
begin
  Result := Self;
  FData := Value;
end;

function TModelPedido.Numero(Value: Integer): TModelPedido;
begin
  Result := Self;
  FNumero := Value;
end;

function TModelPedido.Numero: Integer;
begin
  Result := FNumero;
end;

function TModelPedido.Valor(Value: Double): TModelPedido;
begin
  Result := Self;
  FValor := Value;
end;

function TModelPedido.Valor: Double;
begin
  Result := FValor;
end;

end.
