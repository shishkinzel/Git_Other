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

  if frmWaterMeterReadings.flagEdit then
    dmAccessBD.tblWater.Cancel;

  frmWaterMeterReadings.flagAdd := False;
  frmWaterMeterReadings.flagEdit := False;

  frmEditWater.Enabled := False;
  pnlHot.Enabled := False;
  pnlCold.Enabled := False;
end;

procedure TfrmEditWater.FormShow(Sender: TObject);
var
{Объявляем переменные для вычисляемых полей}
  fPriorHot, fPriorCold: Integer;    // переменные для начальных значений счётчиков холодной и горячей воды
  fPriorWaterHot, fPriorWaterCold: string;     // default значение счётчика
  flagCancelHot, flagCancelCold: Boolean;
    fError: Boolean;
    fnow : TDate;
begin
  fPriorWaterHot := '-1';
  fPriorWaterCold := '-1';
  flagCancelHot := False;
  flagCancelCold := False;
    fError := False;
// Открываем базу для редактирования и ставим маркер на последнюю строчку таблицы
  dmAccessBD.tblWater.edit;
  dmAccessBD.tblWater.Last;
  if not (frmWaterMeterReadings.flagAdd) and not (frmWaterMeterReadings.flagEdit) then
  begin
   // Написать код
    ShowMessage('Код просмотра');
  end
  else if frmWaterMeterReadings.flagAdd and not (frmWaterMeterReadings.flagEdit) then
  begin
   // Написать код
    repeat
      begin
        flagCancelHot := InputQuery('Начальное показание счётчика горячей воды', 'Введите начальные показания счётчика', fPriorWaterHot);
        if not(flagCancelHot) then
           begin
             btnCancel.Enabled := True;
             Break;
           end;

        flagCancelCold := InputQuery('Начальное показание счётчика холодной воды', 'Введите начальные показания счётчика', fPriorWaterCold);
         if not(flagCancelCold) then
           begin
             btnCancel.Enabled := True;
             Break;
           end;


        if (StrToInt(fPriorWaterHot) < 0) and (StrToInt(fPriorWaterCold) < 0) then
          ShowMessage('Вы ввели недопустимое значение')
        else
          fError := True;
      end;
    until fError;
// Все проверки прошли успешно следующий код
   {Инициализация переменных}
    fPriorHot := StrToIntDef(fPriorWaterHot, 0);
    fPriorCold := StrToIntDef(fPriorWaterCold, 0);
    dmAccessBD.tblWater.Insert;
    dmAccessBD.tblWater.FieldByName('CounterReadingsHotPrevious').AsInteger := fPriorHot;
    dmAccessBD.tblWater.FieldByName('CounterReadingsColdPrevious').AsInteger := fPriorCold;
    {Разблокировка панелей}
    grpEditElectricity.Enabled := True;
    pnlHot.Enabled := True;
    pnlCold.Enabled := True;
    fnow := Now;
    dbedtHotPrior.EditText := IntToStr(fPriorHot);
    dbedtColdPrior.EditText := IntToStr(fPriorCold);
    dbedtHotNow.Enabled := True;
    dbedtColdNow.Enabled := True;
    dbmmoComment.Enabled := True;
//    dbedtDate.Enabled := True;
    btnCancel.Enabled := True;
    btnEnter.Enabled := True;
    dbedtHotNow.SetFocus;
    dbedtDate.EditText := DateToStr(fnow);
  end
  else
  begin
    // Написать код
    ShowMessage('Код редактирования');
  end;
end;

end.

