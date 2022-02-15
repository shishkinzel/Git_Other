unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, dmMacIterator, frmFastReportMac,
  frmFReportIDandMAC, frmFReportBarCodeLong, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, Barcode, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, frmFReportBarCode , FShowSoft, FLoadSoft, frmFReportGen_QR,
  FireDAC.Stan.StorageJSON, frmFastReportList, fTest;


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
    mniSeparator3: TMenuItem;
    mniQuit: TMenuItem;
    mniSeparator2: TMenuItem;
    mniSeparator1: TMenuItem;
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
    brcdMAC: TBarcode;
    mniBarCode: TMenuItem;
    mniApplyBarCode: TMenuItem;
    fdmtblBarCode: TFDMemTable;
    fdmtblBarCodeBarCodeMAC: TBlobField;
    fdmtblBarCodeBarCodeId: TBlobField;
    smlntfldBarCodeNumber: TSmallintField;
    mniPrintBarCode: TMenuItem;
    mniPreview: TMenuItem;
    mniSeparator5: TMenuItem;
    mniExportBarCode: TMenuItem;
    mniDOCBarCode: TMenuItem;
    mniPDFBarCode: TMenuItem;
    mniXMLBarCode: TMenuItem;
    intgrfldTitleStepPrintBarCode: TIntegerField;
    fdBarCodeLong: TFDMemTable;
    fdBarCodeLongnumber: TIntegerField;
    fdBarCodeLongBarCodeLong: TBlobField;
    mniBarCodeLong: TMenuItem;
    mniApplyBarCodeLong: TMenuItem;
    mniPreviewLong: TMenuItem;
    mniSeparator4: TMenuItem;
    mniExportBarCodeLong: TMenuItem;
    mniPrintBarCodeLong: TMenuItem;
    mniiDOCBarCodeLong: TMenuItem;
    mniPDFBarCodeLong: TMenuItem;
    mniXMLBarCodeLong: TMenuItem;
    strngfldBarCodeLongMacAndId: TStringField;
    mniLoadSoft: TMenuItem;
    mniShowWindow: TMenuItem;
    mniSeparator6: TMenuItem;
    mniShowApply: TMenuItem;
    mniShowPrev: TMenuItem;
    fdmtblLoadSoft: TFDMemTable;
    fdmtblLoadSoftnumber: TIntegerField;
    fdmtblLoadSoftLoadSoft: TBlobField;
    fdmtblLoadSoftMacAndId: TStringField;
    mnimniSeparator7: TMenuItem;
    mniExportLoadSoft: TMenuItem;
    mniPrintLoadSoft: TMenuItem;
    mniFrReset: TMenuItem;
    mniResetBarCode: TMenuItem;
    mniResetBarCodeLong: TMenuItem;
    mniResetLoadSoft: TMenuItem;
    mniQRIDMAC: TMenuItem;
    mniApplay_IDandMAC: TMenuItem;
    mniIDandMAC: TMenuItem;
    mniShow_IDandMAC: TMenuItem;
    mniExport_IDandMAC: TMenuItem;
    mniPrint_IDandMAC: TMenuItem;
    mniReset_IDandMAC: TMenuItem;
    fdIDandMAC: TFDMemTable;
    fdIDandMACnumber: TIntegerField;
    fdIDandMACQR_ID: TBlobField;
    fdIDandMACQR_MAC: TBlobField;
    fdIDandMACText_IDMAC: TStringField;
    blbfldTitlehardWare: TBlobField;
    mniDOC_IDandMAC: TMenuItem;
    mniXML_IDandMAC: TMenuItem;
    mniPDF_IDandMAC: TMenuItem;
    mniGen_QR: TMenuItem;
    mniShow_OR: TMenuItem;
    mniSeparatorGen_QR: TMenuItem;
    mniGen_QR_Apply: TMenuItem;
    mniGen_QR_ShowPrev: TMenuItem;
    mniSeparatorGen_QR2: TMenuItem;
    mniGen_QR_Print: TMenuItem;
    mniGen_QR_Export: TMenuItem;
    mniGen_QR_Reset: TMenuItem;
    fmTab_Gen_OR: TFDMemTable;
    fmTab_Gen_ORnumber: TIntegerField;
    fmTab_Gen_ORQR_Text_string: TStringField;
    fmTab_Gen_ORQR_Text_Blob: TBlobField;
    fmTab_Gen_OROther: TStringField;
    blbfldTab_Gen_ORusb: TBlobField;
    blbfldTab_Gen_ORpyton: TBlobField;
    mniGen_QR_PDF: TMenuItem;
    mniGen_QR_DOC: TMenuItem;
    mniGen_QR_XML: TMenuItem;
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
    procedure mniApplyBarCodeClick(Sender: TObject);
    procedure mniPrintBarCodeClick(Sender: TObject);
    procedure mniPreviewClick(Sender: TObject);
    procedure mniDOCBarCodeClick(Sender: TObject);
    procedure mniPDFBarCodeClick(Sender: TObject);
    procedure mniXMLBarCodeClick(Sender: TObject);
    procedure mniPreviewLongClick(Sender: TObject);
    procedure mniPrintBarCodeLongClick(Sender: TObject);
    procedure mniPDFBarCodeLongClick(Sender: TObject);
    procedure mniShowWindowClick(Sender: TObject);
    procedure mniShowApplyClick(Sender: TObject);
    procedure mniShowPrevClick(Sender: TObject);
    procedure mniPrintLoadSoftClick(Sender: TObject);
    procedure mniApplay_IDandMACClick(Sender: TObject);
    procedure mniShow_IDandMACClick(Sender: TObject);
    procedure mniPrint_IDandMACClick(Sender: TObject);
    procedure mniDOC_IDandMACClick(Sender: TObject);
    procedure mniXML_IDandMACClick(Sender: TObject);
    procedure mniPDF_IDandMACClick(Sender: TObject);
    procedure mniGen_QR_ApplyClick(Sender: TObject);
    procedure mniGen_QR_ShowPrevClick(Sender: TObject);
    procedure mniGen_QR_PrintClick(Sender: TObject);
    procedure mniShow_ORClick(Sender: TObject);
    procedure mniGen_QR_ResetClick(Sender: TObject);
    procedure medtBit_4Change(Sender: TObject);
    procedure medtBit_5Change(Sender: TObject);
    procedure medtBit_6Change(Sender: TObject);
    procedure medtModuleChange(Sender: TObject);
    procedure medtDateChange(Sender: TObject);
    procedure medtGroupChange(Sender: TObject);
    procedure medtNumberChange(Sender: TObject);
    procedure mniGen_QR_PDFClick(Sender: TObject);
    procedure mniGen_QR_DOCClick(Sender: TObject);
    procedure mniGen_QR_XMLClick(Sender: TObject);
  private
    { Private declarations }
    var
      stepIteration: Integer;       // шаг итерации mac адресов
      quantity: Integer;            // количество устройств
      idModule: Integer;
      idDate: Integer;
      idGroup: Integer;
      idNumber: Integer;             // начальный номер устройства
      fileId: TextFile;              // для хранения данные двух утилит
      fileBarCode : TextFile;        // для хранения данных формирования штрих-кода
      fileBarCodeLong : TextFile;    // для хранения данных формирования длинного штрих-кода
      utilityMAC: Boolean;           // флаг утилиты false - Печать МАС- адресов
      fnameDevice: string;           // наименование устройства
      ffirstOrderBit: string;        // начальный МАС-адрес для итерации
      fstepIterator: string;         // шаг итерации МАС-адреса
      ffirstIdDevice: string;        // начальный серийный номер комплекта
      fquantityDevice: string;       // количество устройств
      stepPrintBarCode : Integer;     // шаг печати штрих-кода
      numberDeviceHigh : string;     // три старших разряда серийного номера
      fbitBarCode : string;           // для печати mac в barcode
//      fbitBarCodeLong : string;       // для печати длинного mac & id barcode
      ffirstIdDeviceBarCode : string; // для печати id в barcode
//      ffirstIdDeveceBarCodeLong : string; // для печат длинного mac & id barcode
//      rangeBarCode : Integer;         // шаг итерации mac адресов для BarCode
  public
  { Public declarations }
    const
      nameFile = 'id_mac_iterator.txt';
      nameBarCodeFile = 'bar_code.txt';
      nameFileBarCodeLong = 'bar_code_long.txt';
    var
      barCodeStream : TMemoryStream;
      idMAC: array[0..2] of Byte;
      idMACBarCode : array[0..2] of Byte;
  end;

var
  frmMAC: TfrmMAC;

implementation

uses
  IdGlobal;
{$R *.dfm}
// создание формы начальные настройки

procedure TfrmMAC.FormCreate(Sender: TObject);
begin
  utilityMAC := True;
  AssignFile(fileId, nameFile);
  AssignFile(fileBarCode, nameBarCodeFile);
  AssignFile(fileBarCodeLong, nameFileBarCodeLong);
  if not FileExists(nameFile) then
  begin
    Rewrite(fileId);
    CloseFile(fileId);
  end;

    if not FileExists(nameBarCodeFile) then
  begin
    Rewrite(fileBarCode);
    CloseFile(fileBarCode);
  end;

      if not FileExists(nameFileBarCodeLong) then
  begin
    Rewrite(fileBarCodeLong);
    CloseFile(fileBarCodeLong);
  end;

end;
// выбор утилиты *************************************************

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
  mniBarCode.Visible := True;
  btnRestartClick(nil);
  edtDevice.SetFocus;
end;

procedure TfrmMAC.mniPrintMacClick(Sender: TObject);
begin

  utilityMAC := False;

  mniPrintMac.Enabled := False;
  mniIterator.Enabled := True;
// сбрасываем все окна

  btnRestartClick(nil);

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
  mniBarCode.Visible := False;
  medtBit_4.SetFocus;
end;


procedure TfrmMAC.mniShowWindowClick(Sender: TObject);
begin
frmShowSoft.ShowModal;
end;

// приминение выбора  *********************************************

procedure TfrmMAC.btnApplyClick(Sender: TObject);
var
  i, stepMac, beginNumberDevice, range: Integer;
  s, numberS, rangeLast: string;
  s1, tmp, tmp1, tmp2: string;
//  highOrderBit, highIdNumber: string;
  bit0, bit1, bit2: string;
  img: BITMAP;
begin
  mniLoadSoft.Enabled := True;
  mniBarCode.Enabled := True;
  mniBarCodeLong.Enabled := True;
  btnStart.Enabled := True;
  mniApply.Enabled := False;
  btnApply.Enabled := False;
  btnRestart.Enabled := True;
  mniQRIDMAC.Enabled := True;
// разрешения пунктов "Сброс" в главном меню
  mniReset.Enabled := True;
  mniResetBarCode.Enabled := True;
  mniResetBarCodeLong.Enabled := True;
  mniResetLoadSoft.Enabled := True;
  mniFrReset.Enabled := True;


  stepMac := 1;
  stepIteration := StrToIntDef(seStepIterator.Text, 0);
  quantity := StrToIntDef(seQuantity.Text, 0);
  range := stepIteration;
//  rangeBarCode := stepIteration;
//  заполнение массива
  try
    idMAC[0] := DataModuleMacIterator.HexStrToInt(medtBit_4.Text);
    idMAC[1] := DataModuleMacIterator.HexStrToInt(medtBit_5.Text);
    idMAC[2] := DataModuleMacIterator.HexStrToInt(medtBit_6.Text);
// массив для печати штрих- кода
    idMACBarCode[0] := DataModuleMacIterator.HexStrToInt(medtBit_4.Text);
    idMACBarCode[1] := DataModuleMacIterator.HexStrToInt(medtBit_5.Text);
    idMACBarCode[2] := DataModuleMacIterator.HexStrToInt(medtBit_6.Text);

  except
    on E: Exception do
    begin
      ShowMessage('Проверьте правильность заполнения полей MAC-адреса');
      btnApplyClick(nil);
    end;
  end;

  bit2 := IntToHex(idMAC[0]) + '';
  bit1 := IntToHex(idMAC[1]) + '';
  bit0 := IntToHex(idMAC[2]) + '';
  bit2 := bit2 + ' : ' + bit1 + ' : ' + bit0;
  fbitBarCode := '68:EB:C5:' + bit2 + ':' + bit1 + ':' + bit0;
//  fbitBarCodeLong := '--mac:' + fbitBarCode;     удалить!!!!!!
//************************************************************
// установка системных переменных для формирования отчета
  fnameDevice := edtDevice.Text;
  ffirstOrderBit := '68 : EB : C5 : ' + bit2;
  fstepIterator := seStepIterator.Text;
  ffirstIdDevice := medtModule.Text + ' ' + medtDate.Text + ' ' + medtGroup.Text + ' ' + medtNumber.Text;
  fquantityDevice := seQuantity.Text;
  numberDeviceHigh :=  medtModule.Text + medtDate.Text + medtGroup.Text;
//  ffirstIdDeviceBarCode := numberDeviceHigh + medtNumber.Text;
//  ffirstIdDeveceBarCodeLong := '--serial:' +  ffirstIdDeviceBarCode;
//*******************************************************

//  highOrderBit := lblHighOrderBit.Caption;    ???????? - зачем нужен 68:EB:C5

  idModule := StrToIntDef(medtModule.Text, 0);
  idDate := StrToIntDef(medtDate.Text, 0);
  idGroup := StrToIntDef(medtGroup.Text, 0);
  idNumber := StrToIntDef(medtNumber.Text, 0);

//
  if utilityMAC then
  begin
//   формирование файла
    Rewrite(fileId);
    for i := 1 to quantity do
    begin
      beginNumberDevice := idNumber + (i - 1);
      numberS := Format('  ' + '%.3d', [beginNumberDevice]);
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

//    fdmtblTitle.Insert;
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
//   frmTestGrid.Show;
end;
// окончание блока выбора  **********************************************************

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
  btnStart.Enabled := False;
  mniQRIDMAC.Enabled := False;
// сбрасываем все окна
  edtDevice.Clear;
  medtBit_4.Clear;
  medtBit_5.Clear;
  medtBit_6.Clear;
  medtModule.Clear;
  medtDate.Clear;
  medtGroup.Clear;
  medtNumber.Clear;
  mniBarCode.Enabled := False;
  mniBarCodeLong.Enabled := False;
  mniLoadSoft.Enabled := False;
  seStepIterator.Value := 1;
  seQuantity.Value := 1;
  medtBit_4.Text := '00';
  medtBit_5.Text := '00';
  medtBit_6.Text := '00';
// для barCode
  mniPreview.Enabled := False;
  mniExportBarCode.Enabled := False;
  mniPrintBarCode.Enabled := False;
  mniPreviewLong.Enabled := False;
  mniExportBarCodeLong.Enabled := False;
  mniPrintBarCodeLong.Enabled := False;
// для ShowSoft
  mniBarCode.Enabled := False;
  mniShowApply.Enabled := False;
  mniShowPrev.Enabled := False;
// для ID&MAC
  mniShow_IDandMAC.Enabled := False;
  mniExport_IDandMAC.Enabled := False;
  mniPrint_IDandMAC.Enabled := False;
  mniReset_IDandMAC.Enabled := False;
// для серийного номера
  if utilityMAC then
  begin
    medtModule.Text := '000';
    medtDate.Text := '000';
    medtGroup.Text := '000';
    medtNumber.Text := '000';
  end;
// сброс команды прошивки из модуля FShowSoft
  frmShowSoft.fTextSoft := '';
// запрещение пунктов "Сброс" в главном меню
  mniReset.Enabled := False;
  mniResetBarCode.Enabled := False;
  mniResetBarCodeLong.Enabled := False;
  mniResetLoadSoft.Enabled := False;
  mniFrReset.Enabled := False;
    if utilityMAC then
    edtDevice.SetFocus
    else medtBit_4.SetFocus;
end;





// печать штрих кода *******************************************************
procedure TfrmMAC.mniApplyBarCodeClick(Sender: TObject);
var
  beginNumberDevice, range, stepMac, stepBarCode, numberBarCode: Integer;
  numBarCodeFR: Integer;
  s, numberS, numberSLong, rangeLast: string;
  s1, tmp, tmp1 : string;
begin
    // открываем таблицу для заполниния **************************************

  range := stepIteration;
  stepMac := 1;
  stepBarCode := 1;
  numberBarCode := 1;
  numBarCodeFR := 1;
// блокируем окно для Топаза
   mniQRIDMAC.Enabled := False;
// активируем окна для работы с LoadSoft
  mniShowApply.Enabled := True;

  stepPrintBarCode := StrToIntDef(InputBox('Шаг печати штрих-кода', 'Введите шаг печати от 1 до 5', '5'), 5);
  if not (stepPrintBarCode in [1..5]) then
  begin
    ShowMessage('Введите корректное значение из диапазона 1-5');
    mniApplyBarCodeClick(nil);
  end;
  ShowMessage('Все хорошо');
// Заполняем титульную таблицу *************************************************
  fdmtblTitle.Close;
  fdmtblTitle.Open;
  fdmtblTitle.Append;
  fdmtblTitle.FieldByName('nameDevice').AsString := fnameDevice;
  fdmtblTitle.FieldByName('firstOrderBit').AsString := ffirstOrderBit;
  fdmtblTitle.FieldByName('stepIterator').AsString := fstepIterator;
  fdmtblTitle.FieldByName('firstIdDevice').AsString := ffirstIdDevice;
  fdmtblTitle.FieldByName('quantityDevice').AsString := fquantityDevice;
  fdmtblTitle.FieldByName('StepPrintBarCode').AsInteger := stepPrintBarCode;
  fdmtblTitle.Post;
// *****************************************************************************

//блок выбора mac & id номеров ******************************************************

//   формирование файла
  Rewrite(fileBarCode);
  Rewrite(fileBarCodeLong); // добавляем для длинного barcode
  while numberBarCode <= quantity do
  begin
    beginNumberDevice := idNumber + (numberBarCode - 1);
    numberS := Format(numberDeviceHigh + '%.3d', [beginNumberDevice]);
    numberSLong := Format(' --serial ' + numberDeviceHigh + '%.3d', [beginNumberDevice]);
    s := Format('%.3d', [numBarCodeFR]) + '|';
// запись в файл
    Write(fileBarCode, s);
    Write(fileBarCodeLong, s);  // добавляем для длинного barcode
    Write(fileBarCode, DataModuleMacIterator.ArrayToStringlong(idMACBarCode));
    Write(fileBarCodeLong, DataModuleMacIterator.ArrayToStringlongMAC(idMACBarCode));  // добавляем для длинного barcode
    Write(fileBarCode, numberS);
    Write(fileBarCodeLong, numberSLong);   // добавляем для длинного barcode
    while stepBarCode <= stepPrintBarCode do
    begin
      while stepMac <= stepIteration do
      begin
        DataModuleMacIterator.IncArrayOne(idMACBarCode);
        Inc(stepMac);
      end;
      Inc(stepBarCode);
      Inc(numberBarCode);
      stepMac := 1;
    end;
    stepBarCode := 1;
    Inc(numBarCodeFR);
    Writeln(fileBarCode);
    Writeln(fileBarCodeLong);
  end;
// закрытие файла
  CloseFile(fileBarCode);
  CloseFile(fileBarCodeLong);
// чтение из файла и получение BarCode и запись в таблицу ******************
  barCodeStream := TMemoryStream.Create;
  Reset(fileBarCode);
  fdmtblBarCode.Open;
  fdmtblBarCode.Table.Clear;

  while (not EOF(fileBarCode)) do
  begin
    fdmtblBarCode.Append;
    Readln(fileBarCode, s1);
    tmp := Trim(Fetch(s1, '|'));
    tmp1 := Trim(Fetch(s1, '|'));

    fdmtblBarCode.FieldByName('Number').AsString := tmp;
// создаем поток и трансоформируем в barcode

    brcdMAC.InputText :=tmp1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdmtblBarCode.FieldByName('BarCodeMAC') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;

    brcdMAC.InputText := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdmtblBarCode.FieldByName('BarCodeId') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdmtblBarCode.Post;
  //  fdmtblBarCode.Next;
  end;

// работа с длинным штрих-кодом
  Reset(fileBarCodeLong);
  fdBarCodeLong.Open;
  fdmtblLoadSoft.Open;
  fdBarCodeLong.Table.Clear;

    while (not EOF(fileBarCodeLong)) do
  begin
    fdBarCodeLong.Append;
    Readln(fileBarCodeLong, s1);
    tmp := Trim(Fetch(s1, '|'));

    fdBarCodeLong.FieldByName('Number').AsString := tmp;
// создаем поток и трансоформируем в barcode

    brcdMAC.InputText :=s1;
    brcdMAC.Height := 50;
    brcdMAC.Symbology := syQRCode;
    fdBarCodeLong.FieldByName('MacAndId').AsString := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdBarCodeLong.FieldByName('BarCodeLong') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdBarCodeLong.Post;
  //  fdBarCodeLong.Next;
  end;
    CloseFile(fileBarCodeLong);
// разрушение потока
  barCodeStream.Free;
//
//   frmTestGrid.Show;
  mniPreview.Enabled := True;
  mniExportBarCode.Enabled := True;
  mniPrintBarCode.Enabled := True;
  mniPreviewLong.Enabled := True;
  mniExportBarCodeLong.Enabled := True;
  mniPrintBarCodeLong.Enabled := True;

end;

// печать qr-кода и серийного номера для изделий семейства Топаз

procedure TfrmMAC.mniApplay_IDandMACClick(Sender: TObject);
var
  beginNumberDevice, range, stepMac, stepBarCode, numberBarCode: Integer;
  number, numBarCodeFR: Integer;
  numberS, numberSLong, rangeLast: string;
  s, s1, tmp, tmp1: string;
  hardWare: string;
begin
// открываем таблицу для заполниния **************************************

  range := stepIteration;
  stepMac := 1;
  stepBarCode := 1;
  numberBarCode := 1;
  numBarCodeFR := 1;
 // блокируем окно для QR-код малый

   mniBarCodeLong.Enabled := False;

// активируем окна для работы с LoadSoft
  mniShow_IDandMAC.Enabled := True;
  mniExport_IDandMAC.Enabled := True;
  mniPrint_IDandMAC.Enabled := True;
  mniReset_IDandMAC.Enabled := True;

// настраиваем шрифт
  brcdMAC.Height := 50;
  brcdMAC.Symbology := syQRCode;

// забиваем hardWare для Топаза

  hardWare := InputBox('Введите Hard Ware модуля Топаз', 'Введите HW ', '00.01.10');

  stepPrintBarCode := StrToIntDef(InputBox('Шаг печати штрих-кода', 'Введите шаг печати от 5 до 10', '10'), 10);
  if not (stepPrintBarCode in [5..10]) then
  begin
    ShowMessage('Введите корректное значение из диапазона 5-10');
    mniApplyBarCodeClick(nil);
  end;
  ShowMessage('Все хорошо');

// Заполняем титульную таблицу *************************************************
  fdmtblTitle.Close;
  fdmtblTitle.Open;
  fdmtblTitle.Append;
  fdmtblTitle.FieldByName('nameDevice').AsString := fnameDevice;
  fdmtblTitle.FieldByName('firstOrderBit').AsString := ffirstOrderBit;
  fdmtblTitle.FieldByName('stepIterator').AsString := fstepIterator;
  fdmtblTitle.FieldByName('firstIdDevice').AsString := ffirstIdDevice;
  fdmtblTitle.FieldByName('quantityDevice').AsString := fquantityDevice;
  fdmtblTitle.FieldByName('StepPrintBarCode').AsInteger := stepPrintBarCode;
// вносим QR-код HardWare
  barCodeStream := TMemoryStream.Create;
  brcdMAC.InputText := hardWare;
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fdmtblTitle.Fields[6] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Free;
  fdmtblTitle.Post;
// *****************************************************************************
//блок выбора mac & id номеров ******************************************************

//   формирование файла
  Rewrite(fileBarCode);
  Rewrite(fileBarCodeLong); // добавляем для длинного barcode
  while numberBarCode <= quantity do
  begin
    beginNumberDevice := idNumber + (numberBarCode - 1);
    numberS := Format(numberDeviceHigh + '%.3d', [beginNumberDevice]);
    numberSLong := Format(' --serial ' + numberDeviceHigh + '%.3d', [beginNumberDevice]);
    s := Format('%.3d', [numBarCodeFR]) + '|';
// запись в файл
    Write(fileBarCode, s);
    Write(fileBarCodeLong, s);  // добавляем для длинного barcode
    Write(fileBarCode, DataModuleMacIterator.ArrayToStringlong(idMACBarCode));
    Write(fileBarCodeLong, DataModuleMacIterator.ArrayToStringlongMAC(idMACBarCode));  // добавляем для длинного barcode
    Write(fileBarCode, numberS);
    Write(fileBarCodeLong, numberSLong);   // добавляем для длинного barcode
    while stepBarCode <= stepPrintBarCode do
    begin
      while stepMac <= stepIteration do
      begin
        DataModuleMacIterator.IncArrayOne(idMACBarCode);
        Inc(stepMac);
      end;
      Inc(stepBarCode);
      Inc(numberBarCode);
      stepMac := 1;
    end;
    stepBarCode := 1;
    Inc(numBarCodeFR);
    Writeln(fileBarCode);
    Writeln(fileBarCodeLong);
  end;
// закрытие файла
  CloseFile(fileBarCode);
  CloseFile(fileBarCodeLong);

// чтение из файла и получение BarCode и запись в таблицу для Топаз ******************
  barCodeStream := TMemoryStream.Create;
  Reset(fileBarCode);
  fdIDandMAC.Open;
  fdIDandMAC.Table.Clear;

// формируем данные для таблицы fdIDandMAC
  while (not EOF(fileBarCode)) do
  begin
    fdIDandMAC.Append;
    Readln(fileBarCode, s1);
    tmp := Trim(Fetch(s1, '|'));
    tmp1 := Trim(Fetch(s1, '|'));

    fdIDandMAC.Fields[0].AsInteger := StrToInt(tmp);
// создаем поток и трансоформируем в barcode

    brcdMAC.InputText :=AnsiLowerCase(tmp1);
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdIDandMAC.Fields[2] as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;

    brcdMAC.InputText := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdIDandMAC.Fields[1] as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdIDandMAC.Next;
  end;

// работа с длинным штрих-кодом
  Reset(fileBarCodeLong);
  fdIDandMAC.First;

    while (not EOF(fileBarCodeLong)) do
  begin
    fdIDandMAC.Edit;
    Readln(fileBarCodeLong, s1);
    tmp := Trim(Fetch(s1, '|'));
    fdIDandMAC.Fields[3].AsString := s1;
    fdIDandMAC.Post;
    fdIDandMAC.Next;
  end;
    CloseFile(fileBarCodeLong);
// разрушение потока
  barCodeStream.Free;
//
//   frmTestGrid.Show;
  mniPreview.Enabled := True;
  mniExportBarCode.Enabled := True;
  mniPrintBarCode.Enabled := True;
  mniPreviewLong.Enabled := True;
  mniExportBarCodeLong.Enabled := True;
  mniPrintBarCodeLong.Enabled := True;

//  frmTestGrid.Show;
end;

//**************************************************************************************************

// работа с qr-кодом полной загрузки прошивки LoadSoft
procedure TfrmMAC.mniShowApplyClick(Sender: TObject);
var
  i: Integer;
  tmp, s1: string;
begin
  mniShowPrev.Enabled := True;

  barCodeStream := TMemoryStream.Create;

  Reset(fileBarCodeLong);
  fdmtblLoadSoft.Open;
  brcdMAC.Height := 50;
  brcdMAC.Symbology := syQRCode;

    while (not EOF(fileBarCodeLong)) do
  begin
    fdmtblLoadSoft.Append;
    Readln(fileBarCodeLong, s1);
    tmp := Trim(Fetch(s1, '|'));

    fdmtblLoadSoft.FieldByName('Number').AsString := tmp;
// создаем поток и трансоформируем в barcode

    brcdMAC.InputText := frmShowSoft.fTextSoft + '     ' + s1;
//    brcdMAC.Height := 50;                             ? Зачем это повторять строка 883
//    brcdMAC.Symbology := syQRCode;
    fdmtblLoadSoft.FieldByName('MacAndId').AsString := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdmtblLoadSoft.FieldByName('LoadSoft') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdmtblLoadSoft.Post;
  //  fdBarCodeLong.Next;
  end;

// разрушение потока
  barCodeStream.Free;
  CloseFile(fileBarCodeLong);
//  frmTestGrid.Show;
end;

// процедура обработки генерации QR-кода
//начало блока *************************************************************************************

// процедура открытия окна для генератора QR-кода с выбором РМП
procedure TfrmMAC.mniShow_ORClick(Sender: TObject);
begin
   mniGen_QR_Apply.Enabled := True;
//  ShowMessage('открываю второе окно');
  frmShowSoft.cbb_rmp.Visible := True;
  frmShowSoft.mmoShowSoft.Enabled := False;
  frmShowSoft.btnCount.Enabled :=False;
  frmShowSoft.btnApply.Enabled :=False;

  frmShowSoft.ShowModal;



end;

procedure TfrmMAC.mniGen_QR_ApplyClick(Sender: TObject);
var
  i: Integer;
  tmp, s1: string;
begin
// активируем инструменты для  QR-кода
  mniGen_QR_ShowPrev.Enabled := True;
  mniGen_QR_Export.Enabled := True;
  mniGen_QR_Print.Enabled := True;
  mniGen_QR_Reset.Enabled := True;

  fmTab_Gen_OR.Open;
  barCodeStream := TMemoryStream.Create;
// настраиваем barcode
  brcdMAC.Height := 50;
  brcdMAC.Symbology := syQRCode;

// создаем поток и трансоформируем в barcode
  fmTab_Gen_OR.Append;
  fmTab_Gen_OR.Fields[1].AsString := frmShowSoft.fTextSoft;
    fmTab_Gen_OR.Fields[5].AsString := frmShowSoft.fText_rmp;
  brcdMAC.InputText := frmShowSoft.fTextSoft;
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fmTab_Gen_OR.Fields[2] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Clear;
// доработать
  brcdMAC.InputText := 'ap map';
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fmTab_Gen_OR.Fields[3] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Clear;

  brcdMAC.InputText := 'pyenv activate ap-dev';
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fmTab_Gen_OR.Fields[4] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Clear;

  fmTab_Gen_OR.Post;


// разрушение потока
  barCodeStream.Free;
//  frmTestGrid.Show;
end;
// экспорт для  генератора QR-кода
procedure TfrmMAC.mniGen_QR_DOCClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport();
  frmGen_OR.frR_Gen_QR.Export(frmGen_OR.fr_Gen_QR_Ex_DOC);
end;

procedure TfrmMAC.mniGen_QR_XMLClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport();
  frmGen_OR.frR_Gen_QR.Export(frmGen_OR.fr_Gen_QR_Ex_XML);
end;

procedure TfrmMAC.mniGen_QR_PDFClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport();
  frmGen_OR.frR_Gen_QR.Export(frmGen_OR.fr_Gen_QR_Ex_PDF);
end;


// предосмотр отчета генератора QR-кода
procedure TfrmMAC.mniGen_QR_ShowPrevClick(Sender: TObject);
begin
  frmGen_OR.Show;
  frmGen_OR.frP_Gen_QR.Clear;
  frmGen_OR.frR_Gen_QR.ShowReport();
end;

// печать  отчета для QR-кода

procedure TfrmMAC.mniGen_QR_PrintClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport;
  frmGen_OR.frR_Gen_QR.Print;
end;

// сброс для  генератора QR-кода
procedure TfrmMAC.mniGen_QR_ResetClick(Sender: TObject);
begin
  fmTab_Gen_OR.Close;
  mniGen_QR_ShowPrev.Enabled := False;
  mniGen_QR_Export.Enabled := False;
  mniGen_QR_Print.Enabled := False;
  mniGen_QR_Reset.Enabled := False;
  frmShowSoft.cbb_rmp.ItemIndex := 0;
   mniGen_QR_Apply.Enabled := False;
end;
// окончание блока генератора QR-кода **************************************************************

// обработка кнопок главного меню  *****************************************************************
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

 // печать BarCode
procedure TfrmMAC.mniPrintBarCodeClick(Sender: TObject);
begin
  frmFRBarCode.frxrprtBarCode.ShowReport;
  frmFRBarCode.frxprvwBarCode.Print;
end;

procedure TfrmMAC.mniPrintBarCodeLongClick(Sender: TObject);
begin
  frmFRBarCodeLong.reportBarCodeLong.ShowReport;
  frmFRBarCodeLong.reportBarCodeLong.Print;
end;

//*************************************************************************************
// открытие отчета для Топаза
procedure TfrmMAC.mniShow_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.Show;
  frmFR_IDandMAC.frPrevIDandMAC.Clear;
  frmFR_IDandMAC.reportIDandMAC.ShowReport();
end;

// печать отчета для Топаза
procedure TfrmMAC.mniPrint_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.reportIDandMAC.ShowReport;
  frmFR_IDandMAC.reportIDandMAC.Print;
end;


// предосмотр BarCode
procedure TfrmMAC.mniPreviewClick(Sender: TObject);
begin
  frmFRBarCode.Show;
  frmFRBarCode.frxprvwBarCode.Clear;
  frmFRBarCode.frxrprtBarCode.ShowReport();
end;
procedure TfrmMAC.mniPreviewLongClick(Sender: TObject);
begin
  frmFRBarCodeLong.Show;
  frmFRBarCodeLong.frPrevBarCodeLong.Clear;
  frmFRBarCodeLong.reportBarCodeLong.ShowReport();
end;

//********************************************************************************

// процедура предосмотра LoadSoft
procedure TfrmMAC.mniShowPrevClick(Sender: TObject);
begin
  frmFReportLoadSoft.Show;
  frmFReportLoadSoft.frPrevLoadSoft.Clear;
  frmFReportLoadSoft.reportLoadSoft.ShowReport();
end;

// процедура печати LoadSoft
procedure TfrmMAC.mniPrintLoadSoftClick(Sender: TObject);
begin
  frmFReportLoadSoft.reportLoadSoft.ShowReport;
  frmFReportLoadSoft.reportLoadSoft.Print;
end;
// экспорт для barcode ************************************************************

procedure TfrmMAC.mniXMLBarCodeClick(Sender: TObject);
begin
  frmFRBarCode.frxrprtBarCode.ShowReport();
  frmFRBarCode.frxrprtBarCode.Export(frmFRBarCode.frexBarCodeXL);
end;


procedure TfrmMAC.mniPDFBarCodeClick(Sender: TObject);
begin
  frmFRBarCode.frxrprtBarCode.ShowReport();
  frmFRBarCode.frxrprtBarCode.Export(frmFRBarCode.frexBarCodePDF);
end;

procedure TfrmMAC.mniPDFBarCodeLongClick(Sender: TObject);
begin
  frmFRBarCodeLong.reportBarCodeLong.ShowReport();
  frmFRBarCodeLong.reportBarCodeLong.Export(frmFRBarCodeLong.frPDF);
end;


procedure TfrmMAC.mniDOCBarCodeClick(Sender: TObject);
begin
  frmFRBarCode.frxrprtBarCode.ShowReport();
  frmFRBarCode.frxrprtBarCode.Export(frmFRBarCode.frexBarCodeDOC);
end;

// экспорт для Топаз
procedure TfrmMAC.mniDOC_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.reportIDandMAC.ShowReport();
  frmFR_IDandMAC.reportIDandMAC.Export(frmFR_IDandMAC.frxDOCXExport_IDandMAC);
end;

procedure TfrmMAC.mniXML_IDandMACClick(Sender: TObject);
begin
 frmFR_IDandMAC.reportIDandMAC.ShowReport();
  frmFR_IDandMAC.reportIDandMAC.Export(frmFR_IDandMAC.frxXMLExport_IDandMAC);
end;

procedure TfrmMAC.mniPDF_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.reportIDandMAC.ShowReport();
  frmFR_IDandMAC.reportIDandMAC.Export(frmFR_IDandMAC.frxPDFExport_IDandMAC);
end;
// *******************************************************************************


// процедура закрытия формы
procedure TfrmMAC.mniExitClick(Sender: TObject);
begin
  frmMAC.Close;
end;

// закрытие формы
procedure TfrmMAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdmtblMac.Close;
  fdmtblTitle.Close;
  fdmtblBarCode.Close;
//  CloseFile(fileBarCode);
//  CloseFile(fileBarCodeLong);
end;

// процедура перехода фокуса- проработка
// mac - адресс
procedure TfrmMAC.medtBit_4Change(Sender: TObject);
begin
  if (StrToIntDef('$' + medtBit_4.Text, -1) >= 0) and (Length(medtBit_4.Text) = 2) then
    medtBit_5.SetFocus
end;

procedure TfrmMAC.medtBit_5Change(Sender: TObject);
begin
   if (StrToIntDef('$' + medtBit_5.Text, -1) >= 0) and (Length(medtBit_5.Text) = 2) then
    medtBit_6.SetFocus
end;

procedure TfrmMAC.medtBit_6Change(Sender: TObject);
begin
   if (StrToIntDef('$' + medtBit_6.Text, -1) >= 0) and (Length(medtBit_6.Text) = 2) then
    seStepIterator.SetFocus
end;

// серийный номер
procedure TfrmMAC.medtModuleChange(Sender: TObject);
begin
  if (StrToIntDef(medtModule.Text, -1) >= 0) and (Length(medtModule.Text) = 3) then
    medtDate.SetFocus
end;

procedure TfrmMAC.medtDateChange(Sender: TObject);
begin
  if (StrToIntDef(medtDate.Text, -1) >= 0) and (Length(medtDate.Text) = 3) then
    medtGroup.SetFocus
end;

procedure TfrmMAC.medtGroupChange(Sender: TObject);
begin
  if (StrToIntDef(medtGroup.Text, -1) >= 0) and (Length(medtGroup.Text) = 3) then
    medtNumber.SetFocus
end;

procedure TfrmMAC.medtNumberChange(Sender: TObject);
begin
  if (StrToIntDef(medtNumber.Text, -1) >= 0) and (Length(medtNumber.Text) = 3) then
    btnApply.SetFocus
end;
end.



