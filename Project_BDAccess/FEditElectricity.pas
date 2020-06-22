unit FEditElectricity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, DateUtils, ShellApi;

type
  TfrmEditElectriity = class(TForm)
    grpEditElectricity: TGroupBox;
    lblPrior: TLabel;
    lblNow: TLabel;
    lblTariff: TLabel;
    lblTotal: TLabel;
    lblComment: TLabel;
    lblConsumption: TLabel;
    dbedtConsumption: TDBEdit;
    dbedtNow: TDBEdit;
    dbedtlTotal: TDBEdit;
    dbedtPrior: TDBEdit;
    dbmmoComment: TDBMemo;
    dbnvgrElectricity: TDBNavigator;
    btnEnter: TButton;
    dbedtDate: TDBEdit;
    dbedtTariff: TDBEdit;
    lblDate: TLabel;
    Label1: TLabel;
    btnCancel: TButton;
    procedure FormShow(Sender: TObject);
    procedure dbedtNowKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedtTariffKeyPress(Sender: TObject; var Key: Char);
    procedure btnEnterClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dbedtNowExit(Sender: TObject);
    procedure dbedtDateKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDateExit(Sender: TObject);
    procedure dbedtPriorKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtPriorExit(Sender: TObject);
  private
    { Private declarations }
    var
      fPriorReading: Integer;
  public
    { Public declarations }
  end;

var
  frmEditElectriity: TfrmEditElectriity;

implementation

uses
  FElectricity, FDataModule;

{$R *.dfm}

procedure TfrmEditElectriity.btnCancelClick(Sender: TObject);
begin
  if dmAccessBD.tblElectricitt.Modified then
    dmAccessBD.tblElectricitt.Cancel;
  self.Close;
end;

procedure TfrmEditElectriity.btnEnterClick(Sender: TObject);
begin

  if dbedtlTotal.EditText = '' then
  begin
    ShowMessage('Поле сумма - пустое');
    Exit;
  end;
  if dmAccessBD.tblElectricitt.Modified then
  begin
    try
      dmAccessBD.tblElectricitt.Post;
      dmAccessBD.tblElectricitt.Refresh;
    except
      on E: Exception do
      begin
        ShowMessage('Проверте заполнение всех обязательных полей!');
        dmAccessBD.tblElectricitt.Cancel;
      end;
    end;
  end;
  frmElectricity.fFlagEdit := False;
  Self.Close;
end;

procedure TfrmEditElectriity.dbedtDateExit(Sender: TObject);
var
  Key: Char;
begin
  Key := #13;
  self.dbedtDateKeyPress(nil, Key);
end;

procedure TfrmEditElectriity.dbedtDateKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if dmAccessBD.tblElectricitt.Modified then
    begin
      btnEnter.Enabled := True;
      btnCancel.Enabled := True;
    end;

//    dbedtPrior.SetFocus;
  end;
end;

procedure TfrmEditElectriity.dbedtNowExit(Sender: TObject);
var
  Key: Char;
begin
  Key := #13;
  self.dbedtNowKeyPress(nil, Key);
end;

procedure TfrmEditElectriity.dbedtNowKeyPress(Sender: TObject; var Key: Char);
var
  fValue: Integer;
begin
  if Key = #13 then
  begin
    if dmAccessBD.tblElectricitt.Modified then
    begin
      btnEnter.Enabled := True;
      btnCancel.Enabled := True;
    end;

    fValue := StrToIntDef(dbedtNow.EditText, -1);
    if (fValue <= 99999) and (fValue > 0) then
    begin
      if fValue < StrToInt(dbedtPrior.EditText) then
      begin
       ShowMessage('Проверте введённые значения');
       Exit;
      end
      else
      begin
        dbedtConsumption.EditText := IntToStr(fValue - StrToInt(dbedtPrior.EditText));
        dbedtlTotal.Clear;
//        dbedtTariff.SetFocus;
      end;
    end
    else
    begin
      ShowMessage('Проверте введённое значение');
//      dbedtNow.SetFocus;
      Exit;
    end;
  end;
end;

procedure TfrmEditElectriity.dbedtPriorExit(Sender: TObject);
var
  Key: Char;
begin
  Key := #13;
  self.dbedtPriorKeyPress(nil, Key);
end;

procedure TfrmEditElectriity.dbedtPriorKeyPress(Sender: TObject; var Key: Char);
var
  fValue: Integer;
begin
  if Key = #13 then
  begin
    if dmAccessBD.tblElectricitt.Modified then
    begin
      btnEnter.Enabled := True;
      btnCancel.Enabled := True;
    end;

    fValue := StrToIntDef(dbedtPrior.EditText, -1);
    if (fValue <= 99999) and (fValue >= 0) then
    begin
//      dbedtNow.SetFocus;
    end
    else
    begin
      ShowMessage('Проверте введёное значение');
//      dbedtPrior.SetFocus;
      Exit;
    end;
  end;
end;
{$REGION 'Процедура нажатие кнопки Тариф'}

procedure TfrmEditElectriity.dbedtTariffKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if dmAccessBD.tblElectricitt.Modified then
    begin
      btnEnter.Enabled := True;
      btnCancel.Enabled := True;
    end;

    dbedtlTotal.EditText := FloatToStr(StrToInt(dbedtConsumption.EditText) * StrToFloat(dbedtTariff.EditText));
//    btnEnter.SetFocus;
  end;
end;
{$ENDREGION}
{$REGION 'Процедура закрытия формы'}

procedure TfrmEditElectriity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dbnvgrElectricity.Visible := True;
  dbedtNow.Enabled := False;
  dbedtTariff.Enabled := False;
  dbedtDate.Enabled := False;
  btnEnter.Enabled := False;
  dbmmoComment.Enabled := False;
  btnCancel.Enabled := False;
  grpEditElectricity.Caption := 'Просмотр показаний электросчётчика';
  if frmElectricity.fFlagEdit then
    dmAccessBD.tblElectricitt.Cancel;
  frmElectricity.fFlagEdit := False;
  frmElectricity.fFlagAdd := False;
  with dbnvgrElectricity do
    VisibleButtons := VisibleButtons - [nbDelete];
end;
{$ENDREGION}


procedure TfrmEditElectriity.FormShow(Sender: TObject);
{$REGION 'Проверка заполнения таблицы начальными значениями и расширенный просмотр'}
var
  fnow: TDate;
  s: string;
  fError: Boolean;
  flagCancel: Boolean;
begin
  s := '-1';
  fError := True;
  flagCancel := False;
  dbedtConsumption.Enabled := False;
  dbedtlTotal.Enabled := False;
  dmAccessBD.tblElectricitt.edit;
  dmAccessBD.tblElectricitt.Last;
  if (dbedtPrior.EditText = '') and frmElectricity.fFlagEdit and not (frmElectricity.fFlagAdd) then
  begin
    repeat
      begin
        flagCancel := InputQuery('Начальное показание счётчика', 'Введите начальные показания счётчика', s);
        if not (flagCancel) then
        begin
          btnCancel.Enabled := True;
          Exit;
        end;
        if StrToInt(s) < 0 then
          ShowMessage('Вы ввели недопустимое значение')
        else
          fError := False;
      end;
    until not (fError);
    fPriorReading := StrToInt(s);
    dmAccessBD.tblElectricitt.Insert;
    dmAccessBD.tblElectricitt.FieldByName('CounterReadingsPrevious').AsInteger := fPriorReading;
    fnow := Now;
    dbedtNow.Enabled := True;
    dbedtTariff.Enabled := True;
    dbedtDate.Enabled := True;
    btnCancel.Enabled := True;
    btnEnter.Enabled := True;
//    dbedtNow.SetFocus;
    dbedtDate.EditText := DateToStr(fnow);
{$ENDREGION}
  end
  else
  begin
  {$REGION 'Ввод показаний счетчика'}
    if frmElectricity.fFlagEdit and not (frmElectricity.fFlagAdd) then
    begin
      grpEditElectricity.Caption := 'Ввод показаний электросчётчика';
      fPriorReading := dmAccessBD.tblElectricitt.FieldByName('CounterReadingsNow').AsInteger;
      dmAccessBD.tblElectricitt.Insert;
      dmAccessBD.tblElectricitt.FieldByName('CounterReadingsPrevious').AsInteger := fPriorReading;
      dbnvgrElectricity.Visible := False;
      dbedtNow.Enabled := True;
      dbedtTariff.Enabled := True;
      dbedtDate.Enabled := True;
      btnEnter.Enabled := True;
      dbmmoComment.Enabled := True;
      btnCancel.Enabled := True;
//      dbedtNow.SetFocus;
      fnow := Now;
      dbedtDate.EditText := DateToStr(fnow);
      {$ENDREGION}
    end;
  end;
  {$REGION 'Редактирование показания счётчика'}
  if not (frmElectricity.fFlagEdit) and frmElectricity.fFlagAdd then
  begin
    grpEditElectricity.Caption := 'Редактирование показаний электросчётчика';
    with dbnvgrElectricity do
      VisibleButtons := VisibleButtons + [nbDelete];

    dbedtPrior.Enabled := True;
    dbedtNow.Enabled := True;
    dbedtTariff.Enabled := True;
    dbedtDate.Enabled := True;
//    dbedtDate.SetFocus;
//    btnEnter.Enabled := True;
//    btnCancel.Enabled := True;
    dbmmoComment.Enabled := True;
   {$ENDREGION}
  end;

end;

procedure TfrmEditElectriity.Label1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'Open', 'https://my.mosenergosbyt.ru/accounts/1168438/events/all-events', nil, nil, SW_SHOW);
end;

//https://my.mosenergosbyt.ru/accounts/1168438/events/all-events
end.

