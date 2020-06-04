unit FEditElectricity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, DateUtils;

type
  TfrmEditElectriity = class(TForm)
    grpEditElectricity: TGroupBox;
    lblPrior: TLabel;
    lblNow: TLabel;
    lblTariff: TLabel;
    lblTotal: TLabel;
    lblComment: TLabel;
    lblReference: TLabel;
    lblConsumption: TLabel;
    dbedtConsumption: TDBEdit;
    dbedtNow: TDBEdit;
    dbedtlTotal: TDBEdit;
    dbedtPrior: TDBEdit;
    dbmmoComment: TDBMemo;
    dbnvgrElectricity: TDBNavigator;
    btnEnter: TButton;
    dbedtReference: TDBEdit;
    btnApply: TButton;
    dbedtDate: TDBEdit;
    dbedtTariff: TDBEdit;
    lblDate: TLabel;
    procedure FormShow(Sender: TObject);
    procedure dbedtNowKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedtTariffKeyPress(Sender: TObject; var Key: Char);
    procedure btnEnterClick(Sender: TObject);
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

procedure TfrmEditElectriity.btnEnterClick(Sender: TObject);
begin
  if dmAccessBD.tblElectricitt.Modified then
  begin
  try
    dmAccessBD.tblElectricitt.Post;
    dmAccessBD.tblElectricitt.Refresh;
  except
    on E : Exception do
    begin
    ShowMessage('Проверти заполнение всех обязательных полей!');
    dmAccessBD.tblElectricitt.Cancel;
    end;
  end;
  end;
  frmElectricity.fFlagEdit := False;
  Self.Close;
end;

procedure TfrmEditElectriity.dbedtNowKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    dbedtConsumption.EditText := IntToStr(StrToInt(dbedtNow.EditText) - StrToInt(dbedtPrior.EditText));
    dbedtTariff.SetFocus;
  end;
end;

procedure TfrmEditElectriity.dbedtTariffKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    dbedtlTotal.EditText := FloatToStr(StrToInt(dbedtConsumption.EditText) * StrToFloat(dbedtTariff.EditText));
    btnEnter.SetFocus;
  end;
end;

procedure TfrmEditElectriity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dbnvgrElectricity.Visible := True;
  dbedtNow.Enabled := False;
  dbedtTariff.Enabled := False;
  dbedtDate.Enabled := False;
  btnEnter.Enabled := False;
  dbmmoComment.Enabled := False;
  grpEditElectricity.Caption := 'Просмотр показаний электросчётчика';
  if frmElectricity.fFlagEdit then
    dmAccessBD.tblElectricitt.Cancel;
  frmElectricity.fFlagEdit := False;
  frmElectricity.fFlagAdd := False;
end;

procedure TfrmEditElectriity.FormShow(Sender: TObject);
var
  fnow: TDate;
  s: string;
  fError: Boolean;
begin
  fError := True;
  dbedtConsumption.Enabled := False;
  dbedtlTotal.Enabled := False;
  dmAccessBD.tblElectricitt.edit;
  dmAccessBD.tblElectricitt.Last;
  if (dbedtPrior.EditText = '') and frmElectricity.fFlagEdit and not(frmElectricity.fFlagAdd) then
  begin
    while fError do
    begin
      s := InputBox('Введите начальные показания счётчика', 'CounterReadingsPrevious', '-1');
      if StrToInt(s) < 0 then
        ShowMessage('Вы ввели недопустимое значение')
      else
        fError := False;
    end;

    fPriorReading := StrToInt(s);
    dmAccessBD.tblElectricitt.Insert;
    dmAccessBD.tblElectricitt.FieldByName('CounterReadingsPrevious').AsInteger := fPriorReading;
    fnow := Now;
    dbedtNow.Enabled := True;
    dbedtTariff.Enabled := True;
    dbedtDate.Enabled := True;
    dbedtNow.SetFocus;
    dbedtDate.EditText := DateToStr(fnow);
  end
  else
  begin
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
      dbedtNow.SetFocus;
      fnow := Now;
      dbedtDate.EditText := DateToStr(fnow);
    end;
  end;

  if not (frmElectricity.fFlagEdit) and frmElectricity.fFlagAdd then
  begin
    grpEditElectricity.Caption := 'Редактирование показаний электросчётчика';
    dbedtPrior.Enabled := True;
    dbedtNow.Enabled := True;
    dbedtTariff.Enabled := True;
    dbedtDate.Enabled := True;
    btnEnter.Enabled := True;
    dbmmoComment.Enabled := True;
  end;

end;

end.

