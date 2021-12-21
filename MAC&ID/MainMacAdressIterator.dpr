program MainMacAdressIterator;

uses
  Vcl.Forms,
  MacAdressIterator in 'MacAdressIterator.pas' {frmMAC},
  dmMacIterator in 'dmMacIterator.pas' {DataModuleMacIterator: TDataModule},
  frmFastReportMac in 'frmFastReportMac.pas' {frmFReport},
  frmFastReportList in 'frmFastReportList.pas' {frmFRList},
  frmFReportBarCode in 'frmFReportBarCode.pas' {frmFRBarCode},
  fTest in 'fTest.pas' {frmTestGrid},
  frmFReportBarCodeLong in 'frmFReportBarCodeLong.pas' {frmFRBarCodeLong},
  FShowSoft in 'FShowSoft.pas' {frmShowSoft},
  FLoadSoft in 'FLoadSoft.pas' {frmFReportLoadSoft};

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
  Application.CreateForm(TfrmFRBarCodeLong, frmFRBarCodeLong);
  Application.CreateForm(TfrmShowSoft, frmShowSoft);
  Application.CreateForm(TfrmFReportLoadSoft, frmFReportLoadSoft);
  Application.Run;
end.
