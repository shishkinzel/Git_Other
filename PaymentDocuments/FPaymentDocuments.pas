unit FPaymentDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls,
  FdmPayment, funUntil, FTableAll, FTableMeteringDevice, FFRMeteringDevice, FTableEditing,
  FFRTableAll, FSelectDate, FAdmin,
  FInputData, FFRListReport,
  FireDAC.Stan.StorageJSON, Data.DB;

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
    lblDezApp: TLabel;
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
    dsPayAndRecord: TDataSource;
    dsListReport: TDataSource;
    lblWHotPrev: TLabel;
    lblWHotNext: TLabel;
    lblWHotExpense: TLabel;
    mniAdmin: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure mniAllTableClick(Sender: TObject);
    procedure mniPayAndRecordClick(Sender: TObject);
    procedure mniInputDataClick(Sender: TObject);
    procedure mniEditDataClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniFRPayAndRecordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniAdminClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fStatusList : Boolean;      // ���� ��� ������ ������ ����� - ��������� false
  end;

const
  fJsonFile = 'payment_documents.fds';
  fJsonFileAll = 'db_allTable.fds';

var
  frmPaymentDocuments: TfrmPaymentDocuments;

implementation

{$R *.dfm}



procedure TfrmPaymentDocuments.FormCreate(Sender: TObject);
var
  i: Integer;
begin
 fStatusList := False;

end;

procedure TfrmPaymentDocuments.FormShow(Sender: TObject);
begin
    dmPayment.fmTabPayAndRecord.Open;
    if not (dsPayAndRecord.DataSet.IsEmpty) then
    begin
    // ������������� ��������� ���������� ���������
      dsPayAndRecord.DataSet.Last;
    //    dtpPay.Enabled := False;
      dtpPay.Date := dmPayment.fmTabPayAndRecord.FieldByName('date').AsDateTime;

      lblEprev.Caption := dmPayment.fmTabPayAndRecord.FieldByName('lightPrev').AsString + ' ���/���';
      lblEnext.Caption := dmPayment.fmTabPayAndRecord.FieldByName('lightNext').AsString + ' ���/���';
      lblEexpense.Caption := dmPayment.fmTabPayAndRecord.FieldByName('lightExpense').AsString + ' ���/���';

      lblWGoldPrev.Caption := dmPayment.fmTabPayAndRecord.FieldByName('WaterColdPrev').AsString + ' ���.';
      lblWGoldNext.Caption := dmPayment.fmTabPayAndRecord.FieldByName('WaterColdNext').AsString + ' ���.';
      lblWGoldExpense.Caption := dmPayment.fmTabPayAndRecord.FieldByName('WaterColdExpense').AsString + ' ���.';

      lblWHotPrev.Caption := dmPayment.fmTabPayAndRecord.FieldByName('WaterHotPrev').AsString + ' ���.';
      lblWHotNext.Caption := dmPayment.fmTabPayAndRecord.FieldByName('WaterHotNext').AsString + ' ���.';
      lblWHotExpense.Caption := dmPayment.fmTabPayAndRecord.FieldByName('WaterHotExpense').AsString + ' ���.';

      lblDezAmount.Caption := CurrToStr(dmPayment.fmTabPayAndRecord.FieldByName('DezSum').AsCurrency) + ' ���.';
      lblMosEnAmount.Caption := CurrToStr(dmPayment.fmTabPayAndRecord.FieldByName('MosEn').AsCurrency) + ' ���.';
      lblOnLineAmount.Caption := CurrToStr(dmPayment.fmTabPayAndRecord.FieldByName('OnLime').AsCurrency) + ' ���.';
    // ���������� ������
      if dmPayment.fmTabPayAndRecord.FieldByName('DezSum').AsCurrency = 0 then
        lblDezApp.Caption := '�������'
      else
        lblDezApp.Caption := '��������';

      if dmPayment.fmTabPayAndRecord.FieldByName('MosEn').AsCurrency = 0 then
        lblMosEnApp.Caption := '�������'
      else
        lblMosEnApp.Caption := '��������';

      if dmPayment.fmTabPayAndRecord.FieldByName('OnLime').AsCurrency = 0 then
        lblOnLineApp.Caption := '�������'
      else
        lblOnLineApp.Caption := '��������';
    end;

// // ������������ ����� �����
//  fStatusList := False;
//  ShowMessage('�� �������� ����������� ������ ����� � ������ �����');


end;

procedure TfrmPaymentDocuments.mniAdminClick(Sender: TObject);
begin
frmAdmin := TfrmAdmin.Create(nil);
frmAdmin.ShowModal;
end;

procedure TfrmPaymentDocuments.mniAllTableClick(Sender: TObject);
begin
  frmTableAll := TfrmTableAll.Create(nil);
  frmTableAll.ShowModal;
end;

procedure TfrmPaymentDocuments.mniEditDataClick(Sender: TObject);
begin
  frmEditing := TfrmEditing.Create(nil);
  frmEditing.ShowModal;
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

// ����� - "������ ����� � ������ �����"
procedure TfrmPaymentDocuments.mniFRPayAndRecordClick(Sender: TObject);
var
  i: Integer;
begin
  frmSelectionDate := TfrmSelectionDate.Create(nil);
  frmSelectionDate.ShowModal;
end;
// �������� �����

procedure TfrmPaymentDocuments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // dmPayment.fmTabSummaryTable.Close;
  // dmPayment.fmTabPayAndRecord.Close;
end;

end.

