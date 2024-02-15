program AulaJSONBuilderIterator;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {Form4};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
