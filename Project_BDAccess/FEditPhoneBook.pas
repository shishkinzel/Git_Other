unit FEditPhoneBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEditPhoneBook = class(TForm)
    grpEditPhone: TGroupBox;
    dbedtName: TDBEdit;
    dbedtMobTel: TDBEdit;
    dbedtAddress: TDBEdit;
    dbedtOther: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditPhoneBook: TfrmEditPhoneBook;

implementation

uses
  FPhoneBook;

{$R *.dfm}

procedure TfrmEditPhoneBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Self.Close;
end;

end.
