unit FMainAccess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, Vcl.Imaging.jpeg, IniFiles;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniPhoneBookClick(Sender: TObject);
    procedure mniAuthorizClick(Sender: TObject);
    procedure mniElectricClick(Sender: TObject);
    procedure mniWaterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    const
      fProvider = 'Microsoft.Jet.OLEDB.4.0;User ID=Admin';
      fconfigIni = 'configDB.ini';
    var
      fStringList: TStringList;
      fIni: TIniFile;
      fPathCount: Integer; // количество записей путей к БД
  public
    { Public declarations }

    fEmpytPath: string;
    fBDAccessPath: string;
    fconfigPath: string;
  end;

var
  frmListBD: TfrmListBD;

implementation

uses
  FPhoneBook, FDataModule, FAuthorization, FElectricity, FWaterMeter;

{$R *.dfm}


procedure TfrmListBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fIni := TIniFile.Create(fconfigPath);
  fIni.WriteString('PathDB', 'path', 'empty');
  with dmAccessBD do
  begin
    conBDAccess.Connected := False;
    tblPhoneBook.Active := False;
    tblAuthoriz.Active := False;
    tblElectricitt.Active := False;
    tblWater.Active := False;
  end;

  frmPhoneBook.Close;
  fIni.Free;
  fStringList.Free;
end;

procedure TfrmListBD.FormCreate(Sender: TObject);
begin
    fStringList := TStringList.Create;
    fconfigPath := extractfilepath(application.ExeName) + fconfigIni;
    fIni := TIniFile.Create(fconfigPath);
    fBDAccessPath := fIni.ReadString('PathDB', 'path', 'empty');
    fStringList.Clear;
    fStringList.Add(fBDAccessPath);

  with dmAccessBD do
  begin
    conBDAccess.Connected := True;
    tblPhoneBook.Active := True;
    tblAuthoriz.Active := True;
    tblElectricitt.Active := True;
    tblWater.Active := True;
  end;
  fIni.Free;
end;

procedure TfrmListBD.mniAuthorizClick(Sender: TObject);
begin
frmAuthorization.Show;
self.Hide;
end;

procedure TfrmListBD.mniElectricClick(Sender: TObject);
begin
frmElectricity.Show;
self.Hide;
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

//Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\DB_Access\DataBaseForJob.mdb;Mode=Share Deny None;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;
