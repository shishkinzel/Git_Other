unit FPaymentDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
   FdmPayment, funUntil, FTableAll, FTableMeteringDevice, FFRMeteringDevice, FFRTableAll, FInputData,
  FireDAC.Stan.StorageJSON;

type
  TfrmPaymentDocuments = class(TForm)
    txtTitle: TStaticText;
    mmPayment: TMainMenu;
    mniFile: TMenuItem;
    pnlTitle: TPanel;
    pnlDate: TPanel;
    pnlApply: TPanel;
    pnlShow: TPanel;
    mniOpenDB: TMenuItem;
    mniFind: TMenuItem;
    mniShow: TMenuItem;
    mniAllTable: TMenuItem;
    mniReport: TMenuItem;
    dtpPay: TDateTimePicker;
    txtDate: TStaticText;
    txtApplyPay: TStaticText;
    lblSource: TLabel;
    lblPrev: TLabel;
    lblNext: TLabel;
    lblExpense: TLabel;
    lblElectric: TLabel;
    lblEprev: TLabel;
    lblEnext: TLabel;
    lblEexpense: TLabel;
    lblWcold: TLabel;
    lblWGoldPrev: TLabel;
    lblWGoldNext: TLabel;
    lblWGoldExpense: TLabel;
    lblAppPay: TLabel;
    lblExecute: TLabel;
    lblAmount: TLabel;
    lblDezAmount: TLabel;
    lblDezApply: TLabel;
    lblDez: TLabel;
    lblMosEn: TLabel;
    lblMosEnAmount: TLabel;
    lblOnLineApp: TLabel;
    lblOnLineAmount: TLabel;
    lblMosEnApp: TLabel;
    lblOnLine: TLabel;
    StaticText1: TStaticText;
    pnlShowTitle: TPanel;
    pnlShowRow: TPanel;
    pnlShowDate: TPanel;
    pnlApplyTitle: TPanel;
    pnlApplyRow: TPanel;
    pnlApplyDate: TPanel;
    mniPayAndRecord: TMenuItem;
    mniForms: TMenuItem;
    mniInputData: TMenuItem;
    mniEditData: TMenuItem;
    mniSetting: TMenuItem;
    mniFRPayAndRecord: TMenuItem;
    mniFRTableAll: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure mniAllTableClick(Sender: TObject);
    procedure mniPayAndRecordClick(Sender: TObject);
    procedure mniInputDataClick(Sender: TObject);
    procedure mniEditDataClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

const
  fJsonFile = 'payment_documents.fdc';

var
  frmPaymentDocuments: TfrmPaymentDocuments;

implementation


{$R *.dfm}



procedure TfrmPaymentDocuments.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmPayment.fmTabSummaryTable.Close;
  dmPayment.fmTabPayAndRecord.Close;
end;

procedure TfrmPaymentDocuments.FormCreate(Sender: TObject);
var
i : Integer;
begin


end;

procedure TfrmPaymentDocuments.mniAllTableClick(Sender: TObject);
begin
  frmTableAll := TfrmTableAll.Create(nil);
  frmTableAll.ShowModal;
end;

procedure TfrmPaymentDocuments.mniEditDataClick(Sender: TObject);
begin
  frmInputData := TfrmInputData.Create(nil);
  frmInputData.ShowModal;
end;

procedure TfrmPaymentDocuments.mniInputDataClick(Sender: TObject);
begin
  frmInputData := TfrmInputData.Create(nil);
  frmInputData.ShowModal;
end;

procedure TfrmPaymentDocuments.mniPayAndRecordClick(Sender: TObject);
begin
  frmMeteringDevice := TfrmMeteringDevice.Create(nil);
  frmMeteringDevice.ShowModal;
end;

end.

