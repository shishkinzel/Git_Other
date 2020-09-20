unit FMainAccess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, Vcl.Imaging.jpeg, IniFiles,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TfrmListBD = class(TForm)
    mmHeader: TMainMenu;
    mniListBD: TMenuItem;
    mniPhoneBook: TMenuItem;
    mniAuthoriz: TMenuItem;
    mniElectric: TMenuItem;
    mniWater: TMenuItem;
    mniJobDB: TMenuItem;
    mniHelp: TMenuItem;
    imgBD: TImage;
    mniIinformation: TMenuItem;
    mniConnection: TMenuItem;
    mniAccess: TMenuItem;
    mniEmpty: TMenuItem;
    mniSeparator: TMenuItem;
    mniAll: TMenuItem;
    mniAction: TMenuItem;
    mniFind: TMenuItem;
    dlgOpenFind: TOpenDialog;
    dlgSaveFind: TSaveDialog;
    actlstBD: TActionList;
    ilBD: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniPhoneBookClick(Sender: TObject);
    procedure mniAuthorizClick(Sender: TObject);
    procedure mniElectricClick(Sender: TObject);
    procedure mniWaterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mniAllClick(Sender: TObject);
    procedure mniActionClick(Sender: TObject);
    procedure mniConnectionClick(Sender: TObject);
    procedure mniEmptyClick(Sender: TObject);
    procedure mniFindClick(Sender: TObject);
  private
    { Private declarations }
    const
//      fProvider = 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='; // ��������� ������ ConnectionString
//      fPathBD = 'C:\DB_Access\DataBaseForJob.mdb;';  // ��������� ������ ConnectionString
//      fParam = ';Persist Security Info=False;'; //
      fconfigIni = 'configDB.ini';   // ��� ����� ������������
  public
    { Public declarations }
    fIni: TIniFile;            // ���������� ����  TIniFile
//    fStringList: TStringList; // ��������� ������ ������  PathDB
    fCountPath: Integer;     // ���������� ������ � ������ PathDB
    fEmpytPath: string;     // ���� � ������ �� - "���������"
//    fBDAccessPath: string;  // ���� � ��
     fPathExe : string;      // ���� � ����� exe
    fconfigPath: string;    // ���� � ����� ini
//    fPathCount: Integer;    // ���������� ������� ����� � ��
  end;
    const
      fProvider = 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=';
      fPathBD = 'C:\DB_Access\DataBaseForJob.mdb;';
      fParam = ';Persist Security Info=False;';
var
  frmListBD: TfrmListBD;
  fStringList: TStringList;
  fBDAccessPath: string;
implementation

uses
  FPhoneBook, FDataModule, FAuthorization, FElectricity, FWaterMeter, FPathDB, IdGlobal, FEditIni;

{$R *.dfm}




procedure TfrmListBD.FormCreate(Sender: TObject);
var
  tmp: string;
  I: Integer;
  fDialog : Integer;
begin
  fStringList := TStringList.Create;
  fPathExe := extractfilepath(application.ExeName);
  fconfigPath := fPathExe + fconfigIni;
  fIni := TIniFile.Create(fconfigPath);
  fIni.ReadSectionValues('PathDB', fStringList); // ��������� ���� �������� ������  PathDB
  fCountPath := fStringList.Count;  // ���������� ������

  for I := 0 to fStringList.Count - 1 do
  begin
    tmp := fStringList.Strings[I];
    Fetch(tmp, '=');
    fStringList.Strings[I] := tmp;
  end;
  if fCountPath = 0 then
    fStringList.Add(fPathBD);

  fBDAccessPath := fIni.ReadString('PathDB', 'path', fStringList.Strings[0]);

  fini.EraseSection('PathDB');   // ������� ������ ����� ini
  try
    with dmAccessBD do
    begin
      conBDAccess.Connected := False;
      conBDAccess.ConnectionString := fProvider + fBDAccessPath + fParam;

      conBDAccess.Connected := True;    // ����������� ��
    {��������� ADOTable}
      tblPhoneBook.Active := True;
      tblAuthoriz.Active := True;
      tblElectricitt.Active := True;
      tblWater.Active := True;
    end;
  except
    on E: Exception do
    begin
     ShowMessage('���� ������ �� ����������');
     fStringList.Delete(0);
     fDialog := MessageDlg('������� ����������', mtError, mbYesNo,0);
    end;
  end;

  fIni.Free;
end;

procedure TfrmListBD.FormClose(Sender: TObject; var Action: TCloseAction);
var
i : Integer;
begin
  fIni := TIniFile.Create(fconfigPath);
  for I := 0 to fStringList.Count -1 do
  fIni.WriteString('PathDB', 'path' + IntToStr(i), fStringList.Strings[i]);

  with dmAccessBD do
  begin
    conBDAccess.Connected := False;
    tblPhoneBook.Active := False;
    tblAuthoriz.Active := False;
    tblElectricitt.Active := False;
    tblWater.Active := False;
  end;

  frmPhoneBook.Close;
  fStringList.Free;
  fIni.Free;
end;




procedure TfrmListBD.mniActionClick(Sender: TObject);
begin
ShowMessage('�������� �������� ���� ������');
end;

procedure TfrmListBD.mniAllClick(Sender: TObject);
begin
frmPathDB.ShowModal;
end;

procedure TfrmListBD.mniAuthorizClick(Sender: TObject);
begin
frmAuthorization.Show;
self.Hide;
end;

procedure TfrmListBD.mniConnectionClick(Sender: TObject);
var
i : Integer;
begin
 frmEditIni.ShowModal;
end;

procedure TfrmListBD.mniElectricClick(Sender: TObject);
begin
frmElectricity.Show;
self.Hide;
end;
procedure TfrmListBD.mniEmptyClick(Sender: TObject);
var
  newFile: string;
  flagNewFile: Integer;
begin
  newFile := InputBox('���� ����� �����', '���������� ������� ��� ������ �����', '-1');
  flagNewFile := StrToIntDef(newFile, 0);
  newFile := newFile + '.mdb';
  if flagNewFile < 0 then
    Exit;
  CopyFile(PChar(fPathExe + 'Access_Empty.mdb'), PChar(fPathExe + 'DB_Access\' + newFile), True);
  fStringList.Add(fPathExe + 'DB_Access\' + newFile);
  mniAllClick(nil);
end;

procedure TfrmListBD.mniFindClick(Sender: TObject);
begin
 if dlgOpenFind.Execute then
 begin
 fBDAccessPath := dlgOpenFind.FileName;
 fStringList.Add(fBDAccessPath);
 end;

end;

procedure TfrmListBD.mniPhoneBookClick(Sender: TObject);
begin
frmPhoneBook.Show;
self.Hide;
end;

procedure TfrmListBD.mniWaterClick(Sender: TObject);
begin
frmWaterMeterReadings.Show;
self.Hide;
end;

end.

