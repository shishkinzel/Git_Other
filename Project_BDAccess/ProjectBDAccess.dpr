program ProjectBDAccess;

uses
  Vcl.Forms,
  FMainAccess in 'FMainAccess.pas' {frmListBD},
  FDataModule in 'FDataModule.pas' {dmAccessBD: TDataModule},
  FPhoneBook in 'FPhoneBook.pas' {frmPhoneBook},
  FAuthorization in 'FAuthorization.pas' {frmAuthorization},
  FElectricity in 'FElectricity.pas' {frmElectricity},
  FWaterMeter in 'FWaterMeter.pas' {frmWaterMeterReadings},
  FEditPhoneBook in 'FEditPhoneBook.pas' {frmEditPhoneBook},
  FEditAuthorization in 'FEditAuthorization.pas' {frmEditAuthorization};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmAccessBD, dmAccessBD);
  Application.CreateForm(TfrmListBD, frmListBD);
  Application.CreateForm(TfrmPhoneBook, frmPhoneBook);
  Application.CreateForm(TfrmAuthorization, frmAuthorization);
  Application.CreateForm(TfrmElectricity, frmElectricity);
  Application.CreateForm(TfrmWaterMeterReadings, frmWaterMeterReadings);
  Application.CreateForm(TfrmEditPhoneBook, frmEditPhoneBook);
  Application.CreateForm(TfrmEditAuthorization, frmEditAuthorization);
  Application.Run;
end.
