unit FInputData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TfrmInputData = class(TForm)
    pnlInData: TPanel;
    spl1: TSplitter;
    pnldown: TPanel;
    pnlRight: TPanel;
    spl2: TSplitter;
    txtTitle: TStaticText;
    lblEl: TLabel;
    lblColdWater: TLabel;
    lblHotWater: TLabel;
    dbedtEle: TDBEdit;
    dbedtColdWater: TDBEdit;
    dbedtHotWater: TDBEdit;
    dbedtElePrev: TDBEdit;
    dbedtHotWaterPrev: TDBEdit;
    dbedtColdWaterPrev: TDBEdit;
    lblHotWaterPrev: TLabel;
    lblColdWaterPrev: TLabel;
    lblElPrev: TLabel;
    txtTitlePrev: TStaticText;
    lblDate: TLabel;
    dsPayAndRecord: TDataSource;
    btnStart: TButton;
    dtpDate: TDateTimePicker;
    lblDez: TLabel;
    lblMosEn: TLabel;
    lblOnLime: TLabel;
    dbedtDez: TDBEdit;
    dbedtMEle: TDBEdit;
    dbedtOnLime: TDBEdit;
    btnApply: TButton;
    dsSummaryTable: TDataSource;
    lblUse: TLabel;
    dbedtUseEle: TDBEdit;
    dbedtUseColdWater: TDBEdit;
    dbedtUseHotWater: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
  private
    { Private declarations }
    stepNub : Integer;
  public
    { Public declarations }
  end;

var
  frmInputData: TfrmInputData;

implementation

uses
  FPaymentDocuments, FdmPayment;

{$R *.dfm}

procedure TfrmInputData.FormShow(Sender: TObject);
begin
  dmPayment.fmTabPayAndRecord.Open;
  if dsPayAndRecord.DataSet.IsEmpty then
  begin
    ShowMessage('� ��� ������ ���� ������');
    dbedtElePrev.Text := '0';
    dbedtColdWaterPrev.Text := '0';
    dbedtHotWaterPrev.Text := '0';
    pnlInData.Enabled := False;
    stepNub := 1;
  end
  else
  begin
    dsPayAndRecord.DataSet.Last;
    stepNub := dsPayAndRecord.DataSet.FieldByName('number').AsInteger;
    Inc(stepNub);
// �������� �������������� ������
   dbedtElePrev.Text := dsPayAndRecord.DataSet.FieldByName('lightPrev').AsString;
    dbedtColdWaterPrev.Text := dsPayAndRecord.DataSet.FieldByName('WaterColdPrev').AsString;
    dbedtHotWaterPrev.Text := dsPayAndRecord.DataSet.FieldByName('WaterHotPrev').AsString;

    dmPayment.fmTabPayAndRecord.Append;
  end;
end;


// ���� ��������� �������� � �������
procedure TfrmInputData.btnApplyClick(Sender: TObject);
var
s : string;
begin

  dmPayment.fmTabPayAndRecord.FieldByName('number').AsInteger := stepNub;
  dmPayment.fmTabPayAndRecord.FieldByName('date').AsDateTime := dtpDate.Date;
  dmPayment.fmTabPayAndRecord.Refresh;
  dmPayment.fmTabPayAndRecord.Next;


// ������ � ������� fmTabSummaryTable - dsSummaryTable
  dmPayment.fmTabSummaryTable.Open;
  dmPayment.fmTabSummaryTable.Append;
  dmPayment.fmTabSummaryTable.FieldByName('number').AsInteger := stepNub;
  dmPayment.fmTabSummaryTable.FieldByName('date').AsDateTime := dtpDate.Date;
  dmPayment.fmTabSummaryTable.FieldByName('lightMeterReading').AsInteger :=StrToInt(dbedtEle.Text);
   dmPayment.fmTabSummaryTable.FieldByName('waterColdMeterReading').AsInteger :=StrToInt(dbedtColdWater.Text);
    dmPayment.fmTabSummaryTable.FieldByName('waterHotMeterReading').AsInteger :=StrToInt(dbedtHotWater.Text);
  frmInputData.Close;
end;

// ���� ��������� ������ � ������ �������
procedure TfrmInputData.btnStartClick(Sender: TObject);
begin
if dbedtElePrev.Text = '' then

  pnlRight.Enabled := False;
  pnlInData.Enabled := True;
  pnldown.Enabled := True;
  dmPayment.fmTabPayAndRecord.FieldByName('number').AsInteger := stepNub;
  dmPayment.fmTabPayAndRecord.FieldByName('date').AsDateTime := dtpDate.Date;
  dmPayment.fmTabPayAndRecord.Refresh;

end;

procedure TfrmInputData.FormActivate(Sender: TObject);
begin
  if dsPayAndRecord.DataSet.IsEmpty then
  begin
    ShowMessage('���������� ������� ������ � ������ �������');
    pnlRight.Enabled := True;
    pnlInData.Enabled := False;
    pnldown.Enabled := False;
  end
  else
  begin
    pnlRight.Enabled := False;
  end;
end;

end.

