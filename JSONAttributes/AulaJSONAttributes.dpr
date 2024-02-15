program AulaJSONAttributes;

uses
  Vcl.Forms,
  AulaJson.Model.Pedido.Item in 'AulaJson.Model.Pedido.Item.pas',
  AulaJson.Model.Pedido in 'AulaJson.Model.Pedido.pas',
  FormMain in 'FormMain.pas' {Form5};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
