unit FPaymentDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmPaymentDocuments = class(TForm)
    txtTitle: TStaticText;
    mmPayment: TMainMenu;
    mniFile: TMenuItem;
    pnlTitle: TPanel;
    pnlDate: TPanel;
    pnlApply: TPanel;
    pnlShow: TPanel;
    mniOpenDB: TMenuItem;
    mniFind: TMenuItem;
    mniShow: TMenuItem;
    mniFormInput: TMenuItem;
    mniWater: TMenuItem;
    mniSupplyMeter: TMenuItem;
    mniAllTable: TMenuItem;
    mniApplyPay: TMenuItem;
    mniReport: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaymentDocuments: TfrmPaymentDocuments;

implementation

{$R *.dfm}

end.
