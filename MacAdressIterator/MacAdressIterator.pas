﻿unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, dmMacIterator,
   frmFastReportMac , Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin, FireDAC.Stan.StorageJSON;
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
    btnApplay: TButton;
    seStepIterator: TSpinEdit;
    seQuantity: TSpinEdit;
    btnRestart: TButton;
    mmMAC: TMainMenu;
    N1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N9: TMenuItem;
    N7: TMenuItem;
    N2: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    fdmtblMac: TFDMemTable;
    fdmtblMacNumber: TStringField;
    fdmtblMacMACadress: TStringField;
    fdmtblMacidnumber: TStringField;
    fdstnstrgjsnlnkMac: TFDStanStorageJSONLink;
    pdf1: TMenuItem;
    xml1: TMenuItem;
    doc1: TMenuItem;
    procedure btnApplayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure btnRestartClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pdf1Click(Sender: TObject);
    procedure xml1Click(Sender: TObject);
    procedure doc1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);


  private
    { Private declarations }
  var
    stepIteration: Integer;
    quantity: Integer;
    idModule: Integer;
    idDate: Integer;
    idGroup: Integer;
    idNumber: Integer;
    fileId : TextFile;

  public
  { Public declarations }
    const
    nameFile = 'id_mac_iterator.txt';
  var
    idMAC: array[0 .. 2] of Byte;

  end;
var
  frmMAC: TfrmMAC;

implementation
Uses IdGlobal;
{$R *.dfm}
procedure TfrmMAC.btnApplayClick(Sender: TObject);
var
i, stepMac, stepNubmer : Integer;
s,numberS : String;
highOrderBit, highIdNumber : string;
begin
  stepMac := 1;
  stepIteration := StrToIntDef(seStepIterator.Text, 0);
  quantity := StrToIntDef(seQuantity.Text, 0);

  highOrderBit := lblHighOrderBit.Caption;

  idMAC[0] := DataModuleMacIterator.HexStrToInt(medtBit_4.Text);
  idMAC[1] := DataModuleMacIterator.HexStrToInt(medtBit_5.Text);
  idMAC[2] := DataModuleMacIterator.HexStrToInt(medtBit_6.Text);

  idModule := StrToIntDef(medtModule.Text, 0);
  idDate := StrToIntDef(medtDate.Text, 0);
  idGroup := StrToIntDef(medtGroup.Text, 0);
  idNumber := StrToIntDef(medtNumber.Text, 0);

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
  CloseFile(fileId);



end;

procedure TfrmMAC.btnRestartClick(Sender: TObject);
var
  s, tmp, tmp1, tmp2: string;
begin
  fdmtblMac.Open;
  fdmtblMac.Table.Clear;
  fdmtblMac.Append;
  fdmtblMac.Post;
  fdmtblMac.Next;
  Reset(fileId);
  while (not EOF(fileId)) do
  begin
    fdmtblMac.Insert;
    Readln(fileId, s);
    tmp := Trim(Fetch(s, '|'));
    tmp1 := Trim(Fetch(s, '|'));
    fdmtblMac.FieldByName('Number').AsString := tmp;
    fdmtblMac.FieldByName('MAC - adress').AsString := tmp1;
    fdmtblMac.FieldByName('id - number').AsString := s;
    fdmtblMac.Post;
    fdmtblMac.Next;
  end;
  CloseFile(fileId);
  fdmtblMac.SaveToFile('client.FDS', sfJSON);

end;



procedure TfrmMAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdmtblMac.Close;
end;

procedure TfrmMAC.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  AssignFile(fileId, nameFile);

  if not FileExists(nameFile) then
  begin
    Rewrite(fileId);
    CloseFile(fileId);
  end;

end;

procedure TfrmMAC.N4Click(Sender: TObject);
begin
frmFReport.Show;
frmFReport.frxprvwMac.Clear;
frmFReport.frxrprtMac.ShowReport();
end;

procedure TfrmMAC.N6Click(Sender: TObject);
begin
 frmFReport.frxrprtMac.ShowReport();
frmFReport.frxrprtMac.Print;
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
end.
