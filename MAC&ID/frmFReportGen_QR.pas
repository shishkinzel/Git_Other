unit frmFReportGen_QR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmGen_OR = class(TForm)
    frR_Gen_QR: TfrxReport;
    frP_Gen_QR: TfrxPreview;
    dbfr_Gen_QR: TfrxDBDataset;
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
