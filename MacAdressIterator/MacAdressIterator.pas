unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, dmMacIterator, frmFastReportMac,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin,
  FireDAC.Stan.StorageJSON, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frmFastReportList, Vcl.Menus;

type
  TfrmMAC = class(TForm)
    lblTitle: TLabel;
    lblMAC: TLabel;
    lblID: TLabel;
    lblDevice: TLabel;
    edtDevice: TEdit;
    lblModule: TLabel;
    medtModule: TMaskEdit;
    medtDate: TMaskEdit;
    lblDate: TLabel;
    medtGroup: TMaskEdit;
    lblNumber: TLabel;
    medtNumber: TMaskEdit;
    lblGruop: TLabel;
    lblHighOrderBit: TLabel;
    medtBit_4: TMaskEdit;
    lblColon_1: TLabel;
    medtBit_5: TMaskEdit;
    Label1: TLabel;
    medtBit_6: TMaskEdit;
    lblStepIterator: TLabel;
    lblQuantity: TLabel;
    btnStart: TButton;
    btnApply: TButton;
    seStepIterator: TSpinEdit;
    seQuantity: TSpinEdit;
    btnRestart: TButton;
    mmMAC: TMainMenu;
    mniChoice: TMenuItem;
    mniPrintMac: TMenuItem;
    mniIterator: TMenuItem;
    mniReset: TMenuItem;
    mniExit: TMenuItem;
    mniReport: TMenuItem;
    mnifrView: TMenuItem;
    mniExport: TMenuItem;
    mnifrPrint: TMenuItem;
    N9: TMenuItem;
    mniQuit: TMenuItem;
    N2: TMenuItem;
    N8: TMenuItem;
    mniApply: TMenuItem;
    fdmtblMac: TFDMemTable;
    fdmtblMacNumber: TStringField;
    fdmtblMacMACadress: TStringField;
    fdmtblMacidnumber: TStringField;
    pdf1: TMenuItem;
    xml1: TMenuItem;
    doc1: TMenuItem;
    fdmtblTitle: TFDMemTable;
    fdmtblTitlenameDevice: TStringField;
    fdmtblTitlefirstOrderBit: TStringField;
    fdmtblTitlestepIterator: TStringField;
    fdmtblTitlefirstIdDevice: TStringField;
    fdmtblTitlequantityDevice: TStringField;
    lblPrintMac: TLabel;
    procedure btnApplyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnifrViewClick(Sender: TObject);
    procedure btnRestartClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pdf1Click(Sender: TObject);
    procedure xml1Click(Sender: TObject);
    procedure doc1Click(Sender: TObject);
    procedure mnifrPrintClick(Sender: TObject);
    procedure mniPrintMacClick(Sender: TObject);
    procedure mniIteratorClick(Sender: TObject);
    procedure mniExitClick(Sender: TObject);
  private
    { Private declarations }
    var
      stepIteration: Integer;
      quantity: Integer;
      idModule: Integer;
      idDate: Integer;
      idGroup: Integer;
      idNumber: Integer;
      fileId: TextFile;
      utilityMAC: Boolean;
      fnameDevice: string;          // наименование устройства
      ffirstOrderBit: string;       // начальный МАС-адрес для итерации
      fstepIterator: string;        // шаг итерации МАС-адреса
      ffirstIdDevice: string;       // начальный серийный номер комплекта
      fquantityDevice: string;      // количество устройств

  public
  { Public declarations }
    const
      nameFile = 'id_mac_iterator.txt';
    var
      idMAC: array[0..2] of Byte;
  end;

var
  frmMAC: TfrmMAC;

implementation

uses
  IdGlobal;
{$R *.dfm}
// создание формы начальные настройки

procedure TfrmMAC.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  utilityMAC := True;
  AssignFile(fileId, nameFile);

  if not FileExists(nameFile) then
  begin
    Rewrite(fileId);
    CloseFile(fileId);
  end;

end;
// выбор утилиты

procedure TfrmMAC.mniIteratorClick(Sender: TObject);
begin

  utilityMAC := True;
  mniPrintMac.Enabled := True;
  mniIterator.Enabled := False;
// включение отключенных окон
  lblTitle.Visible := True;
  edtDevice.Visible := True;
  lblDevice.Visible := True;
  lblPrintMac.Visible := False;
  lblID.Enabled := True;
  lblModule.Enabled := True;
  lblDate.Enabled := True;
  lblGruop.Enabled := True;
  lblNumber.Enabled := True;
  medtModule.Enabled := True;
  medtDate.Enabled := True;
  medtGroup.Enabled := True;
  medtNumber.Enabled := True;
  mniExport.Visible := True;

  btnRestartClick(nil);
end;

procedure TfrmMAC.mniPrintMacClick(Sender: TObject);
begin

  utilityMAC := False;

  mniPrintMac.Enabled := False;
  mniIterator.Enabled := True;

// отключение ненужных окон
  lblTitle.Visible := False;
  edtDevice.Visible := False;
  lblDevice.Visible := False;
  lblPrintMac.Visible := True;
  lblID.Enabled := False;
  lblModule.Enabled := False;
  lblDate.Enabled := False;
  lblGruop.Enabled := False;
  lblNumber.Enabled := False;
  medtModule.Enabled := False;
  medtDate.Enabled := False;
  medtGroup.Enabled := False;
  medtNumber.Enabled := False;
  mniExport.Visible := False;

  btnRestartClick(nil);
end;


// приминение выбора

procedure TfrmMAC.btnApplyClick(Sender: TObject);
var
  i, stepMac, stepNubmer, range: Integer;
  s, numberS, rangeLast: string;
  s1, tmp, tmp1, tmp2: string;
  highOrderBit, highIdNumber: string;
  bit0, bit1, bit2: string;
begin
  btnStart.Enabled := True;
  mniApply.Enabled := False;
  btnApply.Enabled := False;
  btnRestart.Enabled := True;
  mniReset.Enabled := True;
  stepMac := 1;
  stepIteration := StrToIntDef(seStepIterator.Text, 0);
  quantity := StrToIntDef(seQuantity.Text, 0);
  range := stepIteration;

//  заполнение массива
  idMAC[0] := DataModuleMacIterator.HexStrToInt(medtBit_4.Text);
  idMAC[1] := DataModuleMacIterator.HexStrToInt(medtBit_5.Text);
  idMAC[2] := DataModuleMacIterator.HexStrToInt(medtBit_6.Text);
  bit2 := IntToHex(idMAC[0]) + '';
  bit1 := IntToHex(idMAC[1]) + '';
  bit0 := IntToHex(idMAC[2]) + '';
  bit2 := bit2 + ' : ' + bit1 + ' : ' + bit0;
//************************************************************
// установка системных переменных для формирования отчета
  fnameDevice := edtDevice.Text;
  ffirstOrderBit := '68 : EB : C5 : ' + bit2;
  fstepIterator := seStepIterator.Text;
  ffirstIdDevice := medtModule.Text + ' ' + medtDate.Text + ' ' + medtGroup.Text + ' ' + medtNumber.Text;
  fquantityDevice := seQuantity.Text;
//*******************************************************

  highOrderBit := lblHighOrderBit.Caption;

  idModule := StrToIntDef(medtModule.Text, 0);
  idDate := StrToIntDef(medtDate.Text, 0);
  idGroup := StrToIntDef(medtGroup.Text, 0);
  idNumber := StrToIntDef(medtNumber.Text, 0);

  if utilityMAC then
  begin
//   формирование файла
    Rewrite(fileId);
    for i := 1 to quantity do
    begin
      stepNubmer := idNumber + (i - 1);
      numberS := Format('  ' + '%.3d', [stepNubmer]);
      s := Format('%.4d', [i]);
      Write(fileId, s);
      Write(fileId, DataModuleMacIterator.ArrayToString(idMAC));
      Write(fileId, numberS);
      while stepMac <= stepIteration do
      begin
        DataModuleMacIterator.IncArrayOne(idMAC);
        Inc(stepMac);
      end;
      stepMac := 1;
      Writeln(fileId);
    end;
// закрытие файла
    CloseFile(fileId);

// заполняем FDMemTable
    fdmtblTitle.Open;
    fdmtblTitle.Table.Clear;
    fdmtblTitle.Append;
//  fdmtblMac.Post;
//  fdmtblMac.Next;

    fdmtblTitle.Insert;
    fdmtblTitle.FieldByName('nameDevice').AsString := fnameDevice;
    fdmtblTitle.FieldByName('firstOrderBit').AsString := ffirstOrderBit;
    fdmtblTitle.FieldByName('stepIterator').AsString := fstepIterator;
    fdmtblTitle.FieldByName('firstIdDevice').AsString := ffirstIdDevice;
    fdmtblTitle.FieldByName('quantityDevice').AsString := fquantityDevice;

    fdmtblMac.Open;
    fdmtblMac.Table.Clear;
    fdmtblMac.Append;
//
    fdmtblMac.FieldByName('Number').AsString := '';
    fdmtblMac.FieldByName('MAC - adress').AsString := '';
    fdmtblMac.FieldByName('id - number').AsString := '';
//
    Reset(fileId);
    fdmtblMac.First;
    while (not EOF(fileId)) do
    begin
      fdmtblMac.Insert;
      Readln(fileId, s1);
      tmp := Trim(Fetch(s1, '|'));
      tmp1 := Trim(Fetch(s1, '|'));
      fdmtblMac.FieldByName('Number').AsString := tmp;
      fdmtblMac.FieldByName('MAC - adress').AsString := tmp1;
      fdmtblMac.FieldByName('id - number').AsString := s1;
      fdmtblMac.Post;
      fdmtblMac.Next;
    end;
    CloseFile(fileId);
  end
  else
  begin
  //   формирование файла
    Rewrite(fileId);
    for i := 1 to quantity do
    begin
      s := DataModuleMacIterator.ArrayToStringShort(idMAC);
      Delete(s, 9, 3);
      s := '68:EB:C5:' + s;
      Write(fileId, s);
      if stepIteration <> 1 then
      begin
        while stepMac <= stepIteration do
        begin
          DataModuleMacIterator.IncArrayOne(idMAC);
          Inc(stepMac);
          Dec(range);
          if range = 1 then
          begin
            rangeLast := '-' + IntToHex(idMAC[2]);
            write(fileId, rangeLast);
          end;
        end;
      end
      else
        DataModuleMacIterator.IncArrayOne(idMAC);
      stepMac := 1;
      range := stepIteration;
      Writeln(fileId);
    end;
// закрытие файла
    CloseFile(fileId);

// заполняем FDMemTable
    fdmtblMac.Open;
    fdmtblMac.Table.Clear;
    fdmtblMac.Append;
    fdmtblMac.FieldByName('MAC - adress').AsString := '';
//
    Reset(fileId);
    fdmtblMac.First;
    while (not EOF(fileId)) do
    begin
      fdmtblMac.Insert;
      Readln(fileId, s);
      fdmtblMac.FieldByName('MAC - adress').AsString := s;
      fdmtblMac.Post;
      fdmtblMac.Next;
    end;
    CloseFile(fileId);
  end;
end;

// процедура сброса
procedure TfrmMAC.btnRestartClick(Sender: TObject);
begin
   if utilityMAC then
   edtDevice.SetFocus
   else
    medtBit_4.SetFocus;
  mniApply.Enabled := True;
  btnApply.Enabled := True;
  btnRestart.Enabled := False;
  mniReset.Enabled := False;
  btnStart.Enabled := False;
// сбрасываем все окна
  edtDevice.Clear;
  medtBit_4.Clear;
  medtBit_5.Clear;
  medtBit_6.Clear;
  medtModule.Clear;
  medtDate.Clear;
  medtGroup.Clear;
  medtNumber.Clear;

  seStepIterator.Value := 1;
  seQuantity.Value := 1;
  medtBit_4.Text := '00';
  medtBit_5.Text := '00';
  medtBit_6.Text := '00';
end;

// процедура закрытия формы
procedure TfrmMAC.mniExitClick(Sender: TObject);
begin
  frmMAC.Close;
end;

// обработка кнопок главного меню
procedure TfrmMAC.mnifrViewClick(Sender: TObject);
begin
  if utilityMAC then
  begin
    frmFReport.Show;
    frmFReport.frxprvwMac.Clear;
    frmFReport.frxrprtMac.ShowReport();
  end
  else
  begin
    frmFRList.Show;
    frmFRList.frxprvwList.Clear;
    frmFRList.frxrprtList.ShowReport();
  end;
end;

procedure TfrmMAC.mnifrPrintClick(Sender: TObject);
begin
  if utilityMAC then
  begin
    frmFReport.frxrprtMac.ShowReport();
    frmFReport.frxrprtMac.Print;
  end
  else
  begin
    frmFRList.frxrprtList.ShowReport();
    frmFRList.frxrprtList.Print;
  end;
end;

procedure TfrmMAC.pdf1Click(Sender: TObject);
begin
  frmFReport.frxrprtMac.ShowReport();
  frmFReport.frxrprtMac.Export(frmFReport.frxpdfxprtMac);
end;

procedure TfrmMAC.xml1Click(Sender: TObject);
begin
  frmFReport.frxrprtMac.ShowReport();
  frmFReport.frxrprtMac.Export(frmFReport.frxmlxprtMac);
end;

procedure TfrmMAC.doc1Click(Sender: TObject);
begin
  frmFReport.frxrprtMac.ShowReport();
  frmFReport.frxrprtMac.Export(frmFReport.frxdcxprtMac);
end;

// закрытие формы
procedure TfrmMAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdmtblMac.Close;
  fdmtblTitle.Close;
end;

end.



