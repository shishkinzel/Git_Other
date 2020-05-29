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
    dbedtSearch: TDBEdit;
    dbedtOne: TDBEdit;
    dbedtTwo: TDBEdit;
    btnSearch: TButton;
    btnOne: TButton;
    btnTwo: TButton;
    lblSearch: TLabel;
    lblOne: TLabel;
    lblTwo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhoneBook: TfrmPhoneBook;

implementation

uses
  FDataModule, FMainAccess;

{$R *.dfm}

procedure TfrmPhoneBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListBD.Show;
end;



end.
