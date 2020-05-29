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
    pnlTabPhone: TPanel;
    dbgrdWater: TDBGrid;
    pnlDown: TPanel;
    lblSearch: TLabel;
    lblOne: TLabel;
    lblTwo: TLabel;
    dbedtSearch: TDBEdit;
    dbedtOne: TDBEdit;
    dbedtTwo: TDBEdit;
    btnSearch: TButton;
    btnOne: TButton;
    btnTwo: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWaterMeterReadings: TfrmWaterMeterReadings;

implementation

uses
  FDataModule, FMainAccess;

{$R *.dfm}

procedure TfrmWaterMeterReadings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListBD.Show;
end;

end.
