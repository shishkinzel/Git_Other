unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    lblTitle: TLabel;
    lblPhone: TLabel;
    lblAuthrisation: TLabel;
    btnPhone: TButton;
    btnRes: TButton;
    procedure btnPhoneClick(Sender: TObject);
    procedure btnResClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  FPhoneBook, FAuthorization;


{$R *.dfm}

procedure TfrmMain.btnPhoneClick(Sender: TObject);
begin
  frmMain.Visible := False;
  frmPhoneBook.Show;
  frmPhoneBook.fdqryLogPhone.Active := True;
end;

procedure TfrmMain.btnResClick(Sender: TObject);
begin
  frmMain.Visible := False;
  frmAuthorization.Show;
  frmAuthorization.fdqryLogAuthorization.Active := True;
end;

end.

