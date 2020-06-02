unit FEditElectricity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmEditElectriity = class(TForm)
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
  frmEditElectriity: TfrmEditElectriity;

implementation

uses
  FElectricity;

{$R *.dfm}

end.
