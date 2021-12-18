unit frmFastReportList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview, frxExportBaseDialog,
  frxExportDOCX, frxBarcode;

type
  TfrmFRList = class(TForm)
    frxrprtList: TfrxReport;
    frxprvwList: TfrxPreview;
    frxdbdtstList: TfrxDBDataset;
    frxdcxprtList: TfrxDOCXExport;
    frxbrcdbjctList: TfrxBarCodeObject;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFRList: TfrmFRList;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
