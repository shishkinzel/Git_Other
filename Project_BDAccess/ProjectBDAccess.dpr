program ProjectBDAccess;

uses
  Vcl.Forms,
  FMainAccess in 'FMainAccess.pas' {frmListBD};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmListBD, frmListBD);
  Application.Run;
end.
