unit FEditPhoneBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs, ShellApi;

type
  TfrmEditPhoneBook = class(TForm)
    grpEditPhone: TGroupBox;
    dbedtName: TDBEdit;
    dbedtMobTel: TDBEdit;
    dbedtAddress: TDBEdit;
    dbedtOther: TDBEdit;
    lblName: TLabel;
    lblMobTel: TLabel;
    lblAddress: TLabel;
    lblOther: TLabel;
    lblComment: TLabel;
    dbmmoComment: TDBMemo;
    dbnvgrPhone: TDBNavigator;
    lblPhoto: TLabel;
    dbimgPhoto: TDBImage;
    btnPhoto: TButton;
    lblReference: TLabel;
    dbedtReference: TDBEdit;
    dlgOpenPicPhoto: TOpenPictureDialog;
    btnApply: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPhotoClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure dbedtNameKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtMobTelKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtAddressKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtOtherKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditPhoneBook: TfrmEditPhoneBook;

implementation

uses
  FPhoneBook, FDataModule, FMainAccess;

{$R *.dfm}

procedure TfrmEditPhoneBook.btnApplyClick(Sender: TObject);
var
  s: PWideChar;
begin
  s := PWideChar(dbedtReference.Text);
  ShellExecute(Handle, 'Open', s, nil, nil, SW_SHOW);
//  frmListBD.Close;
end;

procedure TfrmEditPhoneBook.btnPhotoClick(Sender: TObject);
begin
  dmAccessBD.tblPhoneBook.Edit;
  if dlgOpenPicPhoto.Execute then
  begin
    dbimgPhoto.Picture.LoadFromFile(dlgOpenPicPhoto.FileName);
    dmAccessBD.tblPhoneBook.Post;
  end;
end;

procedure TfrmEditPhoneBook.dbedtAddressKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbedtOther.SetFocus;
end;

procedure TfrmEditPhoneBook.dbedtMobTelKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbedtAddress.SetFocus;
end;

procedure TfrmEditPhoneBook.dbedtNameKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbedtMobTel.SetFocus;
end;

procedure TfrmEditPhoneBook.dbedtOtherKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbmmoComment.SetFocus;
end;

procedure TfrmEditPhoneBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  btnPhoto.Enabled := True;
  Self.Close;
end;

end.

