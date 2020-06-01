unit FEditAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEditAuthorization = class(TForm)
    grpEditPhone: TGroupBox;
    lblName: TLabel;
    lblMobTel: TLabel;
    lblAddress: TLabel;
    lblOther: TLabel;
    lblComment: TLabel;
    lblPhoto: TLabel;
    lblReference: TLabel;
    dbedtName: TDBEdit;
    dbedtMobTel: TDBEdit;
    dbedtAddress: TDBEdit;
    dbedtOther: TDBEdit;
    dbmmoComment: TDBMemo;
    dbnvgrPhone: TDBNavigator;
    dbimgPhoto: TDBImage;
    btnPhoto: TButton;
    dbedtReference: TDBEdit;
    btnApply: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditAuthorization: TfrmEditAuthorization;

implementation

{$R *.dfm}

end.
