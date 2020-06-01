unit FElectricity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmElectricity = class(TForm)
    pnlNav: TPanel;
    dbnvgrElectricity: TDBNavigator;
    pnlTabElectricity: TPanel;
    dbgrdElectricity: TDBGrid;
    pnlDown: TPanel;
    lblSearch: TLabel;
    lblOne: TLabel;
    lblScan: TLabel;
    lblSearchTwo: TLabel;
    bvlDown: TBevel;
    bvlDownTwo: TBevel;
    btnEdit: TButton;
    btnTwo: TButton;
    edtSearch: TEdit;
    edtSearchTwo: TEdit;
    btnSearc: TButton;
    splTabElectricity: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmElectricity: TfrmElectricity;

implementation

uses
  FMainAccess, FDataModule;

{$R *.dfm}

procedure TfrmElectricity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListBD.Show;
end;

end.
