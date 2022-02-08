unit frmFReportIDandMAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxDBSet;

type
  TfrmFR_IDandMAC = class(TForm)
    reportIDandMAC: TfrxReport;
    frPrevIDandMAC: TfrxPreview;
    dbIDandMAC: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFR_IDandMAC: TfrmFR_IDandMAC;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
