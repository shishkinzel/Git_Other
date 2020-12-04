unit dbMonitoring;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TFdb = class(TForm)
    pnlTop: TPanel;
    pnlDown: TPanel;
    ds_db: TDataSource;
    lblNameGrid: TLabel;
    dbnvgr_db: TDBNavigator;
    dbgrd_IDS: TDBGrid;
    pnlMiddle: TPanel;
    chk_bd: TCheckBox;
    btn_db_find: TButton;
    lbledt_db: TLabeledEdit;
    btnVer: TButton;
    lblCountClient: TLabel;
    edtDate: TEdit;
    btnRefresh: TBitBtn;
    lblCountData: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_db_findClick(Sender: TObject);
    procedure chk_bdClick(Sender: TObject);
    procedure btnVerClick(Sender: TObject);
    procedure dbgrd_IDSDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      selectDay: Integer;
      flagStartDefalt: Boolean;
  end;

const
  TEKON_IP = '93.188.47.31';

//   192.168.254.1
var
  Fdb: TFdb;
  countClient: Integer;

implementation

uses
  dataModulFireDAC, Fmodal, FParam;

{$R *.dfm}

procedure TFdb.FormCreate(Sender: TObject);
begin
  chk_bdClick(nil);
end;
procedure TFdb.btnRefreshClick(Sender: TObject);
var
  pIP: string;
begin
  selectDay := StrToIntDef(edtDate.Text, 0);
  if selectDay = 0 then
    selectDay := 60;

  if chk_bd.Checked then
    pIP := ''
  else
    pIP := TEKON_IP;

  DM_fireDAC.fdqryLog_db.Active := False;
  DM_fireDAC.fdqryLog_db.ParamByName('p1').AsString := pIP;
  DM_fireDAC.fdqryLog_db.ParamByName('p2').AsDateTime := Now - selectDay;
  DM_fireDAC.fdqryLog_db.Active := True;
//  countClient := 0;
// ******************************
  DM_fireDAC.fdqry_countClient.Active := False;
  DM_fireDAC.fdqry_countClient.ParamByName('p1').AsString := pIP;
  DM_fireDAC.fdqry_countClient.ParamByName('p2').AsDateTime := Now - selectDay;
  DM_fireDAC.fdqry_countClient.Active := True;
  countClient := DM_fireDAC.fdqry_countClient.FieldValues['USERCOUNT'];

  lblCountClient.Caption := '';
  lblCountClient.Caption := '����� �������� �������� - ' + IntToStr(countClient);

end;

procedure TFdb.btnVerClick(Sender: TObject);
var
  pIP: string;
begin
  if chk_bd.Checked then
    pIP := ''
  else
    pIP := TEKON_IP;
  DM_fireDAC.fdqryLog_mod.Active := False;
  DM_fireDAC.fdqryLog_mod.Params[0].AsString := pIP;
  DM_fireDAC.fdqryLog_mod.Params[1].AsDateTime := NOW - selectDay;
  DM_fireDAC.fdqryLog_mod.Active := True;
  FMod.ShowModal;
end;

procedure TFdb.btn_db_findClick(Sender: TObject);
var
  flag: Boolean;
  DS: TDataSource;
  B: TBookmark;
begin
  flag := True;
  DS := dbgrd_IDS.DataSource;
  B := DS.DataSet.GetBookmark; // ��������� �������
  dbgrd_IDS.DataSource := nil; // ���������� ����� �� �������
  DS.DataSet.First;
  while (not (DS.DataSet.Eof)) do
  begin
    if DS.DataSet.FieldByName('GUID').AsString = lbledt_db.Text then
    begin
      SetFocus;
      flag := False;
      Break;
    end
    else
    begin
      DS.DataSet.Next;
    end;
  end;
  if flag then
  begin
    MessageBox(Handle, PChar('������ GUID �� ������'), PChar('��������'), MB_ICONINFORMATION + MB_OK);
    DS.DataSet.GotoBookmark(B);
  end;

  // ��������������� DataSource
  dbgrd_IDS.DataSource := DS;

end;

procedure TFdb.chk_bdClick(Sender: TObject);
var
//  DS: TDataSource;
//  B: TBookmark;
  pIP: string;
begin
if not flagStartDefalt then
begin
flagStartDefalt := True;
selectDay := 60;
end;

//  DS := dbgrd_IDS.DataSource;
//  B := DS.DataSet.GetBookmark; // ��������� �������
//  dbgrd_IDS.DataSource := nil; // ���������� ����� �� �������
  if chk_bd.Checked then
    pIP := ''
  else
    pIP := TEKON_IP;

  DM_fireDAC.fdqryLog_db.Active := False;
  DM_fireDAC.fdqryLog_db.ParamByName('p1').AsString := pIP;
  DM_fireDAC.fdqryLog_db.ParamByName('p2').AsDateTime := Now - selectDay;
  DM_fireDAC.fdqryLog_db.Active := True;
//  DS.DataSet.First;
//  countClient := 0;
// ******************************
  DM_fireDAC.fdqry_countClient.Active := False;
  DM_fireDAC.fdqry_countClient.ParamByName('p1').AsString := pIP;
  DM_fireDAC.fdqry_countClient.ParamByName('p2').AsDateTime := Now - selectDay;
  DM_fireDAC.fdqry_countClient.Active := True;
  countClient := DM_fireDAC.fdqry_countClient.FieldValues['USERCOUNT'];


// ************************
//  while (not (DS.DataSet.Eof)) do
//  begin
//    countClient := countClient + 1;
//    DS.DataSet.Next;
//  end;
   // ��������������� DataSource
//  dbgrd_IDS.DataSource := DS;
//********* ���� ���������
  dbgrd_IDS.DataSource.DataSet.Next;
  dbgrd_IDS.DataSource.DataSet.First;
//****************************************
  lblCountClient.Caption := '';
  lblCountClient.Caption := '����� �������� �������� - ' + IntToStr(countClient);
end;

procedure TFdb.dbgrd_IDSDblClick(Sender: TObject);
begin
  frmParm.SelectedClientID := dbgrd_IDS.DataSource.DataSet.Fields[0].AsInteger;
  frmParm.SelectedClientRegDate := dbgrd_IDS.DataSource.DataSet.Fields[2].AsDateTime;
  frmParm.SelectedClientLastAccess := dbgrd_IDS.DataSource.DataSet.Fields[4].AsDateTime;
// ShowMessage('� ������ ID: ' + frmParm.SelectedClientID.ToString);
  frmParm.ShowModal;
end;



procedure TFdb.FormShow(Sender: TObject);
begin
  edtDate.SetFocus;
end;

end.

