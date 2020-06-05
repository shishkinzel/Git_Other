unit FEditWater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEditWater = class(TForm)
    grpEditElectricity: TGroupBox;
    lblPrior: TLabel;
    lblNow: TLabel;
    lblTariff: TLabel;
    lblTotal: TLabel;
    lblComment: TLabel;
    lblConsumption: TLabel;
    lblDate: TLabel;
    Label1: TLabel;
    dbedtConsumption: TDBEdit;
    dbedtNow: TDBEdit;
    dbedtlTotal: TDBEdit;
    dbedtPrior: TDBEdit;
    dbmmoComment: TDBMemo;
    dbnvgrElectricity: TDBNavigator;
    btnEnter: TButton;
    dbedtDate: TDBEdit;
    dbedtTariff: TDBEdit;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditWater: TfrmEditWater;

implementation

uses
  FWaterMeter;

{$R *.dfm}

end.
