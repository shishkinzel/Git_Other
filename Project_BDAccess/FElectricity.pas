unit FElectricity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmElectricity = class(TForm)
    pnlNav: TPanel;
    dbnvgrElectricity: TDBNavigator;
    pnlTabElectricity: TPanel;
    dbgrdElectricity: TDBGrid;
    pnlDown: TPanel;
    lblEdit: TLabel;
    bvlDown: TBevel;
    bvlDownTwo: TBevel;
    btnEdit: TButton;
    splTabElectricity: TSplitter;
    btnAdd: TButton;
    lblAdd: TLabel;
    btnReview: TButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnReviewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    var
      fFlagEdit: Boolean;
      fFlagAdd : Boolean;
  end;

var
  frmElectricity: TfrmElectricity;

implementation

uses
  FMainAccess, FDataModule, FEditElectricity;

{$R *.dfm}

procedure TfrmElectricity.btnAddClick(Sender: TObject);
begin
    fFlagEdit := True;
  frmEditElectriity.ShowModal;

end;

procedure TfrmElectricity.btnEditClick(Sender: TObject);
begin
fFlagAdd := True;
frmEditElectriity.ShowModal;
end;

procedure TfrmElectricity.btnReviewClick(Sender: TObject);
begin
  frmEditElectriity.ShowModal;
end;

procedure TfrmElectricity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmListBD.Show;
end;

end.

