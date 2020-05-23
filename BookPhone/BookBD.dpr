program BookBD;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FLogin in 'FLogin.pas' {frmLog};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.ShowMainForm := False;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLog, frmLog);
  Application.Run;
end.
