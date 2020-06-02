unit FWaterMeter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmWaterMeterReadings = class(TForm)
    pnlNav: TPanel;
    dbnvgrWater: TDBNavigator;
    pnlTabWater: TPanel;
    dbgrdWater: TDBGrid;
    pnlDown: TPanel;
    lblSearch: TLabel;
    lblOne: TLabel;
    lblScan: TLabel;
    lblSearchTwo: TLabel;
    bvlDown: TBevel;
    bvlDownTwo: TBevel;
    btnEdit: TButton;
    btnReview: TButton;
    edtSearch: TEdit;
    edtSearchTwo: TEdit;
    btnSearc: TButton;
    splWater: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWaterMeterReadings: TfrmWaterMeterReadings;

implementation

uses
  FDataModule, FMainAccess, FEditWater;

{$R *.dfm}

procedure TfrmWaterMeterReadings.btnReviewClick(Sender: TObject);
begin
frmEditWater.ShowModal;
end;

procedure TfrmWaterMeterReadings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListBD.Show;
end;

end.
