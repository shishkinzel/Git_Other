program ProjectBDAccess;

uses
  Vcl.Forms,
  FMainAccess in 'FMainAccess.pas' {frmListBD},
  FDataModule in 'FDataModule.pas' {dmAccessBD: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmListBD, frmListBD);
  Application.CreateForm(TdmAccessBD, dmAccessBD);
  Application.Run;
end.
