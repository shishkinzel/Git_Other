unit FEditWater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEditWater = class(TForm)
    grpEditWater: TGroupBox;
    lblComment: TLabel;
    lblDate: TLabel;
    Label1: TLabel;
    dbmmoComment: TDBMemo;
    dbnvgrWater: TDBNavigator;
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
    procedure dbedtHotNowKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtColdNowKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtHotNowExit(Sender: TObject);
    procedure dbedtColdNowExit(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure dbedtHotPriorKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtColdPriorKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtHotPriorExit(Sender: TObject);
    procedure dbedtColdPriorExit(Sender: TObject);
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
  if dmAccessBD.tblWater.Modified then
    dmAccessBD.tblWater.Cancel;
  btnCancel.Enabled := False;
  btnEnter.Enabled := False;
  grpEditWater.Enabled := False;
  btnEnter.Visible := True;
  btnCancel.Caption := 'Отменить';
  self.Close;
end;

procedure TfrmEditWater.btnEnterClick(Sender: TObject);
begin
  if dmAccessBD.tblWater.Modified then
  begin
    try
      dmAccessBD.tblWater.Post;
      dmAccessBD.tblWater.Refresh;
    except
      on E: Exception do
      begin
        ShowMessage('Проверте заполнение всех обязательных полей!');
        dmAccessBD.tblWater.Cancel;
      end;
    end;
  end;
  frmWaterMeterReadings.flagEdit := False;
  Self.Close;
end;

procedure TfrmEditWater.dbedtColdNowExit(Sender: TObject);
var
  key: char;
begin
  key := #13;
  Self.dbedtColdNowKeyPress(nil, key);
end;

procedure TfrmEditWater.dbedtColdNowKeyPress(Sender: TObject; var Key: Char);
var
  fValue: Integer;
begin
  if Key = #13 then
  begin
    fValue := StrToIntDef(dbedtColdNow.EditText, -1);
    if (fValue <= 99999) and (fValue > 0) then
    begin
      if fValue < StrToInt(dbedtColdPrior.EditText) then
      begin
        ShowMessage('Проверте введённые значения');
        Exit;
      end
      else
      begin
        dbedtColdResult.EditText := IntToStr(fValue - StrToInt(dbedtColdPrior.EditText));
        btnEnter.Enabled := True;
        btnCancel.Enabled := True;
      end;
    end;
  end;
end;



procedure TfrmEditWater.dbedtHotNowExit(Sender: TObject);
var
  key: char;
begin
  key := #13;
  Self.dbedtHotNowKeyPress(nil, key);
end;

procedure TfrmEditWater.dbedtHotNowKeyPress(Sender: TObject; var Key: Char);
var
  fValue: Integer;
begin
  if Key = #13 then
  begin
    fValue := StrToIntDef(dbedtHotNow.EditText, -1);
    if (fValue <= 99999) and (fValue > 0) then
    begin
      if fValue < StrToInt(dbedtHotPrior.EditText) then
      begin
        ShowMessage('Проверте введённые значения');
        Exit;
      end
      else
      begin
        dbedtHotResult.EditText := IntToStr(fValue - StrToInt(dbedtHotPrior.EditText));
        btnEnter.Enabled := True;
        btnCancel.Enabled := True;
      end;
    end;
  end;
end;


procedure TfrmEditWater.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if frmWaterMeterReadings.flagEdit or dmAccessBD.tblWater.Modified then
    dmAccessBD.tblWater.Cancel;

  frmWaterMeterReadings.flagAdd := False;
  frmWaterMeterReadings.flagEdit := False;
  pnlHot.Enabled := False;
  pnlCold.Enabled := False;

  btnEnter.Enabled := False;
  btnCancel.Enabled := False;
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
  //  Просмотр показания счётчика
   // Расширеный просмотр таблицы
    btnEnter.Visible := False;
    grpEditWater.Enabled := True;
    btnCancel.Enabled := True;
    btnCancel.Caption := 'Закрыть';
    ShowMessage('Открыт расширенный режим просмотра, без возможности редактирования');
  end
  else if frmWaterMeterReadings.flagAdd and not (frmWaterMeterReadings.flagEdit) then
  begin
   // Код ввода показаний
   if (dbedtHotPrior.EditText = '') and (dbedtColdPrior.EditText = '') then
    begin
    repeat
      begin
        flagCancelHot := InputQuery('Начальное показание счётчика горячей воды', 'Введите начальные показания счётчика', fPriorWaterHot);
        if not (flagCancelHot) then
        begin
          grpEditWater.Enabled := True;
          btnCancel.Enabled := True;
          Break;
        end;

        flagCancelCold := InputQuery('Начальное показание счётчика холодной воды', 'Введите начальные показания счётчика', fPriorWaterCold);
        if not (flagCancelCold) then
        begin
          grpEditWater.Enabled := True;
          btnCancel.Enabled := True;
          Break;
        end;
          if (StrToInt(fPriorWaterHot) < 0) and (StrToInt(fPriorWaterCold) < 0) then
            ShowMessage('Вы ввели недопустимое значение')
          else
            fError := True;
        end;
      until fError;
    end
    else
    begin
      flagCancelCold := True;
      flagCancelHot := True;
      fPriorWaterHot  := dmAccessBD.tblWater.FieldByName('CounterReadingsHotNow').AsString;
      fPriorWaterCold := dmAccessBD.tblWater.FieldByName('CounterReadingsColdNow').AsString;
    end;
    if flagCancelCold and flagCancelHot then
    begin
          // Все проверки прошли успешно следующий код
      {Инициализация переменных}
      fPriorHot := StrToIntDef(fPriorWaterHot, 0);
      fPriorCold := StrToIntDef(fPriorWaterCold, 0);
      dmAccessBD.tblWater.Insert;
      dmAccessBD.tblWater.FieldByName('CounterReadingsHotPrevious').AsInteger := fPriorHot;
      dmAccessBD.tblWater.FieldByName('CounterReadingsColdPrevious').AsInteger := fPriorCold;
      {Разблокировка панелей}
      grpEditWater.Enabled := True;
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
    end;

  end
  else
  begin
    // Написать код
    grpEditWater.Enabled := True;
    pnlHot.Enabled := True;
    pnlCold.Enabled := True;
    grpEditWater.Caption := 'Редактирование показаний счётчика';

    with dbnvgrWater do
      VisibleButtons := VisibleButtons + [nbDelete];

    dbedtHotPrior.Enabled := True;
    dbedtColdPrior.Enabled := True;
    dbedtHotNow.Enabled := True;
    dbedtColdNow.Enabled := True;
    dbedtDate.Enabled := True;
    dbmmoComment.Enabled := True;
  end;
end;
{$REGION 'Обработка кнопки HotPrior'}
procedure TfrmEditWater.dbedtHotPriorExit(Sender: TObject);
var
  key: Char;
begin
  key := #13;
  Self.dbedtHotPriorKeyPress(nil, key);
end;

procedure TfrmEditWater.dbedtHotPriorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
//    btnEnter.Enabled := True;
//    btnCancel.Enabled := True;
    dbedtHotResult.Clear;
  end;
end;
{$ENDREGION}
{$REGION 'Обработка кнопки ColdPrior'}

procedure TfrmEditWater.dbedtColdPriorExit(Sender: TObject);
var
  key: Char;
begin
  key := #13;
  Self.dbedtColdPriorKeyPress(nil, key);
end;

procedure TfrmEditWater.dbedtColdPriorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
//    btnEnter.Enabled := True;
//    btnCancel.Enabled := True;
    dbedtColdResult.Clear;
  end;
end;
{$ENDREGION}

end.

