program MainMacAdressIterator;

uses
  Vcl.Forms,
  MacAdressIterator in 'MacAdressIterator.pas' {frmMAC},
  dmMacIterator in 'dmMacIterator.pas' {DataModuleMacIterator: TDataModule},
  frmFastReportMac in 'frmFastReportMac.pas' {frmFReport},
  frmFastReportList in 'frmFastReportList.pas' {frmFRList},
  frmFReportBarCode in 'frmFReportBarCode.pas' {frmFRBarCode},
  fTest in 'fTest.pas' {frmTestGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMAC, frmMAC);
  Application.CreateForm(TDataModuleMacIterator, DataModuleMacIterator);
  Application.CreateForm(TfrmFReport, frmFReport);
  Application.CreateForm(TfrmFRList, frmFRList);
  Application.CreateForm(TfrmFRBarCode, frmFRBarCode);
  Application.CreateForm(TfrmTestGrid, frmTestGrid);
  Application.Run;
end.
