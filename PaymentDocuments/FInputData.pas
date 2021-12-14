unit FInputData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmInputData = class(TForm)
    pnlInData: TPanel;
    spl1: TSplitter;
    pnldown: TPanel;
    pnlRight: TPanel;
    spl2: TSplitter;
    txtTitle: TStaticText;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtEle: TDBEdit;
    dbedtColdWater: TDBEdit;
    dbedtHotWater: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StaticText1: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInputData: TfrmInputData;

implementation

uses
  FPaymentDocuments;

{$R *.dfm}

end.
