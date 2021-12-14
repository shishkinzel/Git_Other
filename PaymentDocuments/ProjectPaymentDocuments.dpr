program ProjectPaymentDocuments;

uses
  Vcl.Forms,
  FPaymentDocuments in 'FPaymentDocuments.pas' {frmPaymentDocuments},
  FdmPayment in 'FdmPayment.pas' {dmPayment: TDataModule},
  funUntil in 'funUntil.pas',
  FTableAll in 'FTableAll.pas' {frmTableAll},
  FTableMeteringDevice in 'FTableMeteringDevice.pas' {frmMeteringDevice},
  FFRMeteringDevice in 'FFRMeteringDevice.pas' {frmFRMeteringDevice},
  FFRTableAll in 'FFRTableAll.pas' {frmFRTableAll},
  FInputData in 'FInputData.pas' {frmInputData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPaymentDocuments, frmPaymentDocuments);
  Application.CreateForm(TdmPayment, dmPayment);
  Application.Run;
end.
