unit FLoadSoft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmFReportLoadSoft = class(TForm)
    reportLoadSoft: TfrxReport;
    frPrevLoadSoft: TfrxPreview;
    dbLoadSoft: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFReportLoadSoft: TfrmFReportLoadSoft;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
