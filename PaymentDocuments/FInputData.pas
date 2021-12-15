unit FInputData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Vcl.ComCtrls;

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
    ShowMessage('У Вас пустая база данных');
    stepNub :=1;
  end;

  dsPayAndRecord.DataSet.Last;
  stepNub := dsPayAndRecord.DataSet.FieldByName('number').AsInteger;
  Inc(stepNub);
end;

// ввод начальных значений в таблицу
procedure TfrmInputData.btnApplyClick(Sender: TObject);
begin
  dmPayment.fmTabPayAndRecord.FieldByName('number').AsInteger := stepNub;

  dmPayment.fmTabPayAndRecord.Refresh;

end;

procedure TfrmInputData.btnStartClick(Sender: TObject);
begin
  dmPayment.fmTabPayAndRecord.FieldByName('number').AsInteger := stepNub;
  dmPayment.fmTabPayAndRecord.FieldByName('date').AsDateTime := dtpDate.Date;
  dmPayment.fmTabPayAndRecord.Refresh;
  dmPayment.fmTabPayAndRecord.Next;
end;

procedure TfrmInputData.FormActivate(Sender: TObject);
begin
  ShowMessage('Пожалуйста введите данные в правую колонку');
  pnlRight.Enabled := True;
end;

end.

