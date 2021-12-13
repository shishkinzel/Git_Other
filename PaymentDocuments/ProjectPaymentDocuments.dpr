program ProjectPaymentDocuments;

uses
  Vcl.Forms,
  FPaymentDocuments in 'FPaymentDocuments.pas' {frmPaymentDocuments},
  FdmPayment in 'FdmPayment.pas' {dmPayment: TDataModule},
  funUntil in 'funUntil.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPaymentDocuments, frmPaymentDocuments);
  Application.CreateForm(TdmPayment, dmPayment);
  Application.Run;
end.
