program AulaJSONArray;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {Form3};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
