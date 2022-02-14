unit fTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmTestGrid = class(TForm)
    dbgrd1: TDBGrid;
    dstt: TDataSource;
    dbgrd2: TDBGrid;
    ds2: TDataSource;
    dsLoad: TDataSource;
    grdLoad: TDBGrid;
    dsIDandMAC: TDataSource;
    grdIDandMAC: TDBGrid;
    dsGen_OR: TDataSource;
    grdGen_OR: TDBGrid;
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

end.
