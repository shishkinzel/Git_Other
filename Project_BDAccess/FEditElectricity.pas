unit FEditElectricity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmEditElectriity = class(TForm)
    grpEditElectricity: TGroupBox;
    lblPrior: TLabel;
    lblNow: TLabel;
    lblTariff: TLabel;
    lblTotal: TLabel;
    lblComment: TLabel;
    lblReference: TLabel;
    lblConsumption: TLabel;
    dbedtConsumption: TDBEdit;
    dbedtNow: TDBEdit;
    dbedtlTotal: TDBEdit;
    dbedtPrior: TDBEdit;
    dbmmoComment: TDBMemo;
    dbnvgrAuth: TDBNavigator;
    btnPhoto: TButton;
    dbedtReference: TDBEdit;
    btnApply: TButton;
    dbedtDate: TDBEdit;
    dbedtTariff: TDBEdit;
    lblDate: TLabel;
    procedure btnPhotoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
    var
       fPriorReading : Integer;
  public
    { Public declarations }
  end;

var
  frmEditElectriity: TfrmEditElectriity;

implementation

uses
  FElectricity, FDataModule;

{$R *.dfm}



procedure TfrmEditElectriity.btnPhotoClick(Sender: TObject);
begin
dbedtConsumption.EditText := IntToStr(StrToInt(dbedtNow.EditText) - StrToInt(dbedtPrior.EditText));
dbedtlTotal.EditText := IntToStr(StrToInt(dbedtConsumption.EditText) * StrToInt(dbedtTariff.EditText));
dmAccessBD.tblElectricitt.Post;
dmAccessBD.tblElectricitt.Refresh;
Self.Close;
end;



procedure TfrmEditElectriity.FormShow(Sender: TObject);
begin
  dbedtConsumption.Enabled := False;
  dbedtlTotal.Enabled := False;
  dmAccessBD.tblElectricitt.edit;
  dmAccessBD.tblElectricitt.Last;

  if frmElectricity.fFlagEdit then
  begin
    fPriorReading := dmAccessBD.tblElectricitt.FieldByName('CounterReadingsNow').AsInteger;
    dmAccessBD.tblElectricitt.Insert;
    dmAccessBD.tblElectricitt.FieldByName('CounterReadingsPrevious').AsInteger := fPriorReading;
  end;
//  dbedtDate := date.Now;
  dbedtNow.SetFocus;
end;

end.

