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


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditPhoneBook: TfrmEditPhoneBook;

implementation

uses
  FPhoneBook, FDataModule;

{$R *.dfm}

procedure TfrmEditPhoneBook.btnApplyClick(Sender: TObject);
var
s : PWideChar;
begin
 s := PWideChar(dbedtReference.Text);
 ShellExecute(Handle,'Open',s, nil, nil, SW_SHOW);
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





procedure TfrmEditPhoneBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  btnPhoto.Enabled := True;
  Self.Close;
end;

end.


//ShellExecute(Handle,'Open',PWideChar('dbedtReference.Text'), nil, nil, SW_SHOW);
