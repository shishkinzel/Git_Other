unit frmFastReportMac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxExportDOCX, frxExportPDF,
  frxExportBaseDialog, frxExportXML;

type
  TfrmFReport = class(TForm)
    frxrprtMac: TfrxReport;
    frxprvwMac: TfrxPreview;
    frxsrdtstMac: TfrxUserDataSet;
    frxmlxprtMac: TfrxXMLExport;
    frxpdfxprtMac: TfrxPDFExport;
    frxdcxprtMac: TfrxDOCXExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFReport: TfrmFReport;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
