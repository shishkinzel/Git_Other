unit frmFastReportMac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxExportDOCX, frxExportPDF,
  frxExportBaseDialog, frxExportXML, frxDBSet;

type
  TfrmFReport = class(TForm)
    frxrprtMac: TfrxReport;
    frxprvwMac: TfrxPreview;
    frxmlxprtMac: TfrxXMLExport;
    frxpdfxprtMac: TfrxPDFExport;
    frxdcxprtMac: TfrxDOCXExport;
    frxdbdtstMac: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
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

procedure TfrmFReport.FormCreate(Sender: TObject);
 var
 i : Integer;
begin

end;

end.
