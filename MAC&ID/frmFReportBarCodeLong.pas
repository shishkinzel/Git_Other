unit frmFReportBarCodeLong;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportPDF, frxExportXML, frxClass, frxExportBaseDialog,
  frxExportDOCX, frxDBSet, frxPreview;

type
  TfrmFRBarCodeLong = class(TForm)
    reportBarCodeLong: TfrxReport;
    frPrevBarCodeLong: TfrxPreview;
    dbBarCodeLong: TfrxDBDataset;
    frDOC: TfrxDOCXExport;
    frXML: TfrxXMLExport;
    frPDF: TfrxPDFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFRBarCodeLong: TfrmFRBarCodeLong;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
