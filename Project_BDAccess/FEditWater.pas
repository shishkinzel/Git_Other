unit FEditWater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEditWater = class(TForm)
    grpEditAuth: TGroupBox;
    lblName: TLabel;
    lblRecource: TLabel;
    lblPassword: TLabel;
    lblOther: TLabel;
    lblComment: TLabel;
    lblPhoto: TLabel;
    lblReference: TLabel;
    lblLogin: TLabel;
    dbedtName: TDBEdit;
    dbedtRecource: TDBEdit;
    dbedtPassword: TDBEdit;
    dbedtOther: TDBEdit;
    dbmmoComment: TDBMemo;
    dbnvgrAuth: TDBNavigator;
    btnPhoto: TButton;
    dbedtReference: TDBEdit;
    btnApply: TButton;
    dbedtLogin: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditWater: TfrmEditWater;

implementation

uses
  FWaterMeter;

{$R *.dfm}

end.
