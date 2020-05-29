unit FAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmAuthorization = class(TForm)
    pnlDown: TPanel;
    lblSearch: TLabel;
    lblOne: TLabel;
    lblTwo: TLabel;
    dbedtSearch: TDBEdit;
    dbedtOne: TDBEdit;
    dbedtTwo: TDBEdit;
    btnSearch: TButton;
    btnOne: TButton;
    btnTwo: TButton;
    pnlNav: TPanel;
    dbnvgrAuthorization: TDBNavigator;
    pnlTabPhone: TPanel;
    dbgrdAuthorization: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuthorization: TfrmAuthorization;

implementation

uses
  FMainAccess, FDataModule;

{$R *.dfm}

procedure TfrmAuthorization.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListBD.Show;
end;

end.
