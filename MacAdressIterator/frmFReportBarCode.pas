unit frmFReportBarCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TfrmFRBarCode = class(TForm)
    frxrprtBarCode: TfrxReport;
    frxprvwBarCode: TfrxPreview;
    frxdbdtstBarCode: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFRBarCode: TfrmFRBarCode;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

end.
