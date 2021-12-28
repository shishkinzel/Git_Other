unit FSelectDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
   System.DateUtils, Vcl.Graphics, FTestForm,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmSelectionDate = class(TForm)
    txtTitle: TStaticText;
    dtpSelectDate: TDateTimePicker;
    pnlTitle: TPanel;
    btnStart: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
    fDateSelect : TDate;
  public
    { Public declarations }
  end;

var
  frmSelectionDate: TfrmSelectionDate;

implementation

uses
  FPaymentDocuments, FdmPayment;

{$R *.dfm}

procedure TfrmSelectionDate.FormShow(Sender: TObject);
var
  i: Integer;
  fDate: TDateTime;
begin
  fDate := Now;
  dtpSelectDate.Date := RecodeDay(fDate, 15);
  dmPayment.fmTabPayAndRecord.Open;
   dmPayment.fmTabListReport.Close;
  dmPayment.fmTabListReport.Open;

end;
// выбор даты печати листа учета

procedure TfrmSelectionDate.btnStartClick(Sender: TObject);
var
  fStatus : string;
begin
fStatus := '';
  fDateSelect := dtpSelectDate.Date;
  dmPayment.fmTabListReport.Append;
  dmPayment.fmTabPayAndRecord.Locate('date', fDateSelect, []);
//заполняем таблицу данными для формирования листа учета
  dmPayment.fmTabListReport.FieldByName('number').AsString := dmPayment.fmTabPayAndRecord.FieldByName('number').AsString;
  dmPayment.fmTabListReport.FieldByName('date').AsString := dmPayment.fmTabPayAndRecord.FieldByName('date').AsString;
  dmPayment.fmTabListReport.FieldByName('lightPrev').AsString := dmPayment.fmTabPayAndRecord.FieldByName('lightPrev').AsString;
  dmPayment.fmTabListReport.FieldByName('lightNext').AsString := dmPayment.fmTabPayAndRecord.FieldByName('lightNext').AsString;
  dmPayment.fmTabListReport.FieldByName('lightExpense').AsString := dmPayment.fmTabPayAndRecord.FieldByName('lightExpense').AsString;
  dmPayment.fmTabListReport.FieldByName('WaterColdPrev').AsString := dmPayment.fmTabPayAndRecord.FieldByName('WaterColdPrev').AsString;
  dmPayment.fmTabListReport.FieldByName('WaterColdNext').AsString := dmPayment.fmTabPayAndRecord.FieldByName('WaterColdNext').AsString;
  dmPayment.fmTabListReport.FieldByName('WaterColdPExpense').AsString := dmPayment.fmTabPayAndRecord.FieldByName('WaterColdExpense').AsString;
  dmPayment.fmTabListReport.FieldByName('WaterHotPrev').AsString := dmPayment.fmTabPayAndRecord.FieldByName('WaterHotPrev').AsString;
  dmPayment.fmTabListReport.FieldByName('WaterHotNext').AsString := dmPayment.fmTabPayAndRecord.FieldByName('WaterHotNext').AsString;
  dmPayment.fmTabListReport.FieldByName('WaterHotExpense').AsString := dmPayment.fmTabPayAndRecord.FieldByName('WaterHotExpense').AsString;
  dmPayment.fmTabListReport.FieldByName('DezSum').AsString := dmPayment.fmTabPayAndRecord.FieldByName('DezSum').AsString;
  dmPayment.fmTabListReport.FieldByName('MosEn').AsString := dmPayment.fmTabPayAndRecord.FieldByName('MosEn').AsString;
  dmPayment.fmTabListReport.FieldByName('OnLime').AsString := dmPayment.fmTabPayAndRecord.FieldByName('OnLime').AsString;
 // выполнение
  if StrToInt(dmPayment.fmTabListReport.FieldByName('DezSum').AsString) = 0 then
    fStatus := 'Отложен'
  else
    fStatus := 'Исполнен';
  dmPayment.fmTabListReport.FieldByName('ExecutionPayDezSum').AsString := fStatus;

  if StrToInt(dmPayment.fmTabListReport.FieldByName('MosEn').AsString) = 0 then
    fStatus := 'Отложен'
  else
    fStatus := 'Исполнен';
  dmPayment.fmTabListReport.FieldByName('ExecutionPayMosEn').AsString  := fStatus;

  if StrToInt(dmPayment.fmTabListReport.FieldByName('OnLime').AsString) = 0 then
    fStatus := 'Отложен'
  else
    fStatus :='Исполнен';

  dmPayment.fmTabListReport.FieldByName('ExecutionPayOnLime').AsString  := fStatus;

  dmPayment.fmTabListReport.Post;
  frmTestForm.Show;
  frmSelectionDate.Close;
  frmSelectionDate.Release;
end;

end.

