unit FMainAccess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmListBD = class(TForm)
    mmHeader: TMainMenu;
    mniListBD: TMenuItem;
    mniPhoneBook: TMenuItem;
    mniAuthoriz: TMenuItem;
    mniElectric: TMenuItem;
    mniWater: TMenuItem;
    mniHelp: TMenuItem;
    mniReference: TMenuItem;
    imgIgor: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniPhoneBookClick(Sender: TObject);
    procedure mniAuthorizClick(Sender: TObject);
    procedure mniElectricClick(Sender: TObject);
    procedure mniWaterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListBD: TfrmListBD;

implementation

uses
  FPhoneBook, FDataModule, FAuthorization, FElectricity, FWaterMeter;

{$R *.dfm}


procedure TfrmListBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dmAccessBD.conBDAccess.Connected := False;
frmPhoneBook.Close;

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
