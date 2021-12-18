unit fTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmTestGrid = class(TForm)
    dbgrd1: TDBGrid;
    dstt: TDataSource;
    img1: TImage;
    img2: TImage;
    dbgrd2: TDBGrid;
    ds2: TDataSource;
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestGrid: TfrmTestGrid;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

procedure TfrmTestGrid.img1Click(Sender: TObject);
begin
img1.Picture.Assign(dstt.DataSet.FieldByName('BarCodeMAC'));
img2.Picture.Assign(dstt.DataSet.FieldByName('BarCodeId'));
end;

end.
