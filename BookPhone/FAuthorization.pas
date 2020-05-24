unit FAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmAuthorization = class(TForm)
    dbgrdPhone: TDBGrid;
    dbnvgrPhone: TDBNavigator;
    dsAuthorization: TDataSource;
    fdqryLogAuthorization: TFDQuery;
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
  FMain, FDataModule;

{$R *.dfm}

procedure TfrmAuthorization.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMain.Visible := True;
end;

end.

