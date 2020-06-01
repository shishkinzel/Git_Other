unit FEditAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.ExtDlgs, ShellApi;

type
  TfrmEditAuthorization = class(TForm)
    grpEditAuth: TGroupBox;
    lblName: TLabel;
    lblRecource: TLabel;
    lblPassword: TLabel;
    lblOther: TLabel;
    lblComment: TLabel;
    lblPhoto: TLabel;
    lblReference: TLabel;
    dbedtName: TDBEdit;
    dbedtRecource: TDBEdit;
    dbedtPassword: TDBEdit;
    dbedtOther: TDBEdit;
    dbmmoComment: TDBMemo;
    dbnvgrAuth: TDBNavigator;
    dbimgPhoto: TDBImage;
    btnPhoto: TButton;
    dbedtReference: TDBEdit;
    btnApply: TButton;
    lblLogin: TLabel;
    dbedtLogin: TDBEdit;
    dlgOpenPicPhoto: TOpenPictureDialog;
    procedure btnPhotoClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure dbedtNameKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtRecourceKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtOtherKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditAuthorization: TfrmEditAuthorization;

implementation

uses
  FAuthorization, FDataModule;

{$R *.dfm}

procedure TfrmEditAuthorization.btnApplyClick(Sender: TObject);
var
  s: PWideChar;
begin
  s := PWideChar(dbedtReference.Text);
  ShellExecute(Handle, 'Open', s, nil, nil, SW_SHOW);
end;

procedure TfrmEditAuthorization.btnPhotoClick(Sender: TObject);
begin
  dmAccessBD.tblAuthoriz.Edit;
  if dlgOpenPicPhoto.Execute then
  begin
    dbimgPhoto.Picture.LoadFromFile(dlgOpenPicPhoto.FileName);
    dmAccessBD.tblAuthoriz.Post;
  end;
end;

procedure TfrmEditAuthorization.dbedtLoginKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbedtPassword.SetFocus;
end;

procedure TfrmEditAuthorization.dbedtNameKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbedtRecource.SetFocus;
end;

procedure TfrmEditAuthorization.dbedtOtherKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbmmoComment.SetFocus;
end;

procedure TfrmEditAuthorization.dbedtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbedtOther.SetFocus;
end;

procedure TfrmEditAuthorization.dbedtRecourceKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 dbedtLogin.SetFocus;
end;

end.

