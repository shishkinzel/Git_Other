unit frmFReportGen_QR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview, frxExportXML, frxExportPDF,
  frxExportBaseDialog, frxExportDOCX;

type
  TfrmGen_OR = class(TForm)
    frR_Gen_QR: TfrxReport;
    frP_Gen_QR: TfrxPreview;
    dbfr_Gen_QR: TfrxDBDataset;
    fr_Gen_QR_Ex_DOC: TfrxDOCXExport;
    fr_Gen_QR_Ex_PDF: TfrxPDFExport;
    fr_Gen_QR_Ex_XML: TfrxXMLExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGen_OR: TfrmGen_OR;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
