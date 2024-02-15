program AulaJSONObjectToJSONObject;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {Form5},
  AulaJson.Model.Pedido in 'AulaJson.Model.Pedido.pas',
  AulaJson.Model.Pedido.Item in 'AulaJson.Model.Pedido.Item.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
