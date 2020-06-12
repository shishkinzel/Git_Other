unit FWaterMeter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmWaterMeterReadings = class(TForm)
    pnlNav: TPanel;
    dbnvgrWater: TDBNavigator;
    pnlTabWater: TPanel;
    dbgrdWater: TDBGrid;
    splWater: TSplitter;
    pnlDown: TPanel;
    lblEdit: TLabel;
    bvlDown: TBevel;
    bvlDownTwo: TBevel;
    lblAdd: TLabel;
    Label1: TLabel;
    btnEdit: TButton;
    btnAdd: TButton;
    btnReview: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReviewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    flagAdd, flagEdit: Boolean;
  end;

var
  frmWaterMeterReadings: TfrmWaterMeterReadings;

implementation

uses
  FDataModule, FMainAccess, FEditWater;

{$R *.dfm}

// ******************************  Открытие формы  *************************************************
procedure TfrmWaterMeterReadings.FormCreate(Sender: TObject);
begin
  flagAdd := False;
  flagEdit := False;
end;
// *************************************************************************************************

// ***************************  Обработка кнопок  **************************************************

procedure TfrmWaterMeterReadings.btnAddClick(Sender: TObject);
begin
  flagAdd := True;
  frmEditWater.ShowModal;
end;

procedure TfrmWaterMeterReadings.btnEditClick(Sender: TObject);
begin
  flagEdit := True;
  if dmAccessBD.tblWater.RecordCount > 0 then
  begin
    frmEditWater.ShowModal;
  end
  else
    ShowMessage('База данных пуста');
end;

procedure TfrmWaterMeterReadings.btnReviewClick(Sender: TObject);
begin
  if dmAccessBD.tblWater.RecordCount > 0 then
  begin

    frmEditWater.ShowModal;
  end
  else
    ShowMessage('База данных пуста');
end;
// *************************************************************************************************

// ******************************  Закрытие формы  *************************************************

procedure TfrmWaterMeterReadings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmListBD.Show;
end;
// *************************************************************************************************

end.

