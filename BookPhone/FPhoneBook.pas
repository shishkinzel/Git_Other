unit FPhoneBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPhoneBook = class(TForm)
    dbgrdPhone: TDBGrid;
    dbnvgrPhone: TDBNavigator;
    lblTitle: TLabel;
    dsPhone: TDataSource;
    fdqryLogPhone: TFDQuery;
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
  FMain, FDataModule;

{$R *.dfm}

procedure TfrmPhoneBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmMain.Visible := True;
end;

end.
