unit FPhoneBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmPhoneBook = class(TForm)
    dbgrdPhoneBook: TDBGrid;
    dbnvgrPhoneBook: TDBNavigator;
    pnlNav: TPanel;
    pnlTabPhone: TPanel;
    pnlDown: TPanel;
    btnEdit: TButton;
    btnTwo: TButton;
    lblSearch: TLabel;
    lblOne: TLabel;
    lblScan: TLabel;
    edtSearch: TEdit;
    lblSearchTwo: TLabel;
    edtSearchTwo: TEdit;
    splTabPhone: TSplitter;
    bvlDown: TBevel;
    bvlDownTwo: TBevel;
    btnSearc: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTwoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhoneBook: TfrmPhoneBook;

implementation

uses
  FDataModule, FMainAccess, FEditPhoneBook;

{$R *.dfm}

procedure TfrmPhoneBook.btnEditClick(Sender: TObject);
begin
frmEditPhoneBook.grpEditPhone.Caption := 'Запись нового абонента';
with frmEditPhoneBook.dbnvgrPhone do
begin
  VisibleButtons := VisibleButtons + [nbInsert]  + [nbDelete] + [nbEdit] + [nbPost] +
                      [nbCancel] + [nbRefresh];
end;
frmEditPhoneBook.ShowModal;


end;



procedure TfrmPhoneBook.btnTwoClick(Sender: TObject);
begin
frmEditPhoneBook.grpEditPhone.Caption := 'Просмотр телефонной книги';
with frmEditPhoneBook.dbnvgrPhone do
begin
  VisibleButtons := VisibleButtons - [nbInsert]  - [nbDelete] - [nbEdit] - [nbPost] -
                      [nbCancel] - [nbRefresh];
end;
frmEditPhoneBook.ShowModal;
end;



procedure TfrmPhoneBook.edtSearchChange(Sender: TObject);
begin
dmAccessBD.MyLocate(edtSearch.Text);
end;

procedure TfrmPhoneBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListBD.Show;
end;



end.
