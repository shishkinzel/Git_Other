unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, dmMacIterator, frmFastReportMac, frmFReportBarCodeLong, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, Barcode, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, frmFReportBarCode ,
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
      utilityMAC: Boolean;
      fnameDevice: string;           // наименование устройства
      ffirstOrderBit: string;        // начальный МАС-адрес для итерации
      fstepIterator: string;         // шаг итерации МАС-адреса
      ffirstIdDevice: string;        // начальный серийный номер комплекта
      fquantityDevice: string;       // количество устройств
      stepPrintBarCode : Integer;     // шаг печати штрих-кода
      numberDeviceHigh : string;     // три старших разряда серийного номера
      fbitBarCode : string;           // для печати mac в barcode
      fbitBarCodeLong : string;       // для печати длинного mac & id barcode
      ffirstIdDeviceBarCode : string; // для печати id в barcode
      ffirstIdDeveceBarCodeLong : string; // для печат длинного mac & id barcode
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
  mniBarCode.Visible := False;

  btnRestartClick(nil);
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
  mniBarCode.Enabled := True;
  mniBarCodeLong.Enabled := True;
  btnStart.Enabled := True;
  mniApply.Enabled := False;
  btnApply.Enabled := False;
  btnRestart.Enabled := True;
  mniReset.Enabled := True;
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
  fbitBarCodeLong := '--mac:' + fbitBarCode;
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
  mniBarCode.Enabled := False;
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

  medtModule.Text := '000';
  medtDate.Text := '000';
  medtGroup.Text := '000';
  medtNumber.Text := '000';
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
  stepPrintBarCode := StrToIntDef(InputBox('Шаг печати штрих-кода', 'Введите шаг печати от 1 до 5', '5'), 5);
  if not (stepPrintBarCode in [1..5]) then
  begin
    ShowMessage('Введите корректное значение из диапазона 1-5');
    mniApplyBarCodeClick(nil);
  end;
  ShowMessage('Все хорошо');
  fdmtblTitle.Close;
  fdmtblTitle.Open;
//  fdmtblTitle.Table.Clear;
  fdmtblTitle.Append;
  fdmtblTitle.FieldByName('nameDevice').AsString := fnameDevice;
  fdmtblTitle.FieldByName('firstOrderBit').AsString := ffirstOrderBit;
  fdmtblTitle.FieldByName('stepIterator').AsString := fstepIterator;
  fdmtblTitle.FieldByName('firstIdDevice').AsString := ffirstIdDevice;
  fdmtblTitle.FieldByName('quantityDevice').AsString := fquantityDevice;
  fdmtblTitle.FieldByName('StepPrintBarCode').AsInteger := stepPrintBarCode;
  fdmtblTitle.Post;
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

// работа с длинным штрх-кодом
  Reset(fileBarCodeLong);
  fdBarCodeLong.Open;
  fdBarCodeLong.Table.Clear;

    while (not EOF(fileBarCodeLong)) do
  begin
    fdBarCodeLong.Append;
    Readln(fileBarCodeLong, s1);
    tmp := Trim(Fetch(s1, '|'));

    fdBarCodeLong.FieldByName('Number').AsString := tmp;
// создаем поток и трансоформируем в barcode

    brcdMAC.InputText :=s1;
    fdBarCodeLong.FieldByName('MacAndId').AsString := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdBarCodeLong.FieldByName('BarCodeLong') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdBarCodeLong.Post;
  //  fdBarCodeLong.Next;
  end;

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

// *******************************************************************************




// закрытие формы
procedure TfrmMAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdmtblMac.Close;
  fdmtblTitle.Close;
  fdmtblBarCode.Close;
end;

end.




