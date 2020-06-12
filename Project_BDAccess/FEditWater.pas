unit FEditWater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEditWater = class(TForm)
    grpEditElectricity: TGroupBox;
    lblComment: TLabel;
    lblDate: TLabel;
    Label1: TLabel;
    dbmmoComment: TDBMemo;
    dbnvgrElectricity: TDBNavigator;
    btnEnter: TButton;
    dbedtDate: TDBEdit;
    btnCancel: TButton;
    dbedtHotPrior: TDBEdit;
    dbedtHotNow: TDBEdit;
    dbedtHotResult: TDBEdit;
    dbedtColdPrior: TDBEdit;
    dbedtColdNow: TDBEdit;
    dbedtColdResult: TDBEdit;
    pnlHot: TPanel;
    pnlCold: TPanel;
    lblHot: TLabel;
    lblCold: TLabel;
    lblHotPrior: TLabel;
    lblHotNow: TLabel;
    lblHotTotal: TLabel;
    lblColdPrior: TLabel;
    lblColdNow: TLabel;
    lblColdTotal: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditWater: TfrmEditWater;

implementation

uses
  FWaterMeter, FDataModule;

{$R *.dfm}

procedure TfrmEditWater.btnCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmEditWater.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmWaterMeterReadings.flagAdd := False;
  frmWaterMeterReadings.flagEdit := False;
  if frmWaterMeterReadings.flagEdit then
    dmAccessBD.tblWater.Cancel;
end;

procedure TfrmEditWater.FormShow(Sender: TObject);
var
  i: Integer;
begin
  if not(frmWaterMeterReadings.flagAdd) and not(frmWaterMeterReadings.flagEdit) then
  begin
   // Написать код
   ShowMessage('Код просмотра');
  end
  else
  if frmWaterMeterReadings.flagAdd and not(frmWaterMeterReadings.flagEdit) then
   begin
   // Написать код
   btnCancel.Enabled := True;
      ShowMessage('Код вставки');
  end
  else
  begin
    // Написать код
       ShowMessage('Код редактирования');
  end;
end;

end.

