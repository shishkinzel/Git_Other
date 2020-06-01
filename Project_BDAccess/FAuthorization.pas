unit FAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmAuthorization = class(TForm)
    pnlNav: TPanel;
    dbnvgrAuthorization: TDBNavigator;
    pnlTabPhone: TPanel;
    dbgrdAuthorization: TDBGrid;
    pnlDown: TPanel;
    lblEdit: TLabel;
    lblReview: TLabel;
    lblSearchTwo: TLabel;
    bvlDown: TBevel;
    bvlDownTwo: TBevel;
    btnEdit: TButton;
    btnReview: TButton;
    edtSearchTwo: TEdit;
    btnSearc: TButton;
    splAutorization: TSplitter;
    pnlSearch: TPanel;
    edtSearch: TEdit;
    lblSearhResource: TLabel;
    lblSearch: TLabel;
    edtSearchResource: TEdit;
    lblTitle: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReviewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuthorization: TfrmAuthorization;

implementation

uses
  FMainAccess, FDataModule, FEditAuthorization;

{$R *.dfm}

procedure TfrmAuthorization.btnEditClick(Sender: TObject);
begin
 frmEditAuthorization.grpEditAuth.Caption := 'Новая запись списка авторизации';
with frmEditAuthorization.dbnvgrAuth do
begin
  VisibleButtons := VisibleButtons + [nbInsert]  + [nbDelete] + [nbEdit] + [nbPost] +
                      [nbCancel] + [nbRefresh];
end;
frmEditAuthorization.ShowModal;
end;

procedure TfrmAuthorization.btnReviewClick(Sender: TObject);
begin
frmEditAuthorization.btnPhoto.Enabled := False;
frmEditAuthorization.grpEditAuth.Caption := 'Просмотр списка авторизации';
with frmEditAuthorization.dbnvgrAuth do
begin
  VisibleButtons := VisibleButtons - [nbInsert]  - [nbDelete] - [nbEdit] - [nbPost] -
                      [nbCancel] - [nbRefresh];
end;
frmEditAuthorization.ShowModal;
end;

procedure TfrmAuthorization.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListBD.Show;
end;

end.
