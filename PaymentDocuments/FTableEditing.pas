unit FTableEditing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmEditing = class(TForm)
    nvgEditing: TDBNavigator;
    grdEditing: TDBGrid;
    dsEditing: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditing: TfrmEditing;

implementation

uses
  FPaymentDocuments, FdmPayment;

{$R *.dfm}

procedure TfrmEditing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmEditing.Action.Free;
end;

end.
