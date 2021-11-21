unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin;

type
  TfrmMAC = class(TForm)
    lblTitle: TLabel;
    lblMAC: TLabel;
    lblID: TLabel;
    lblDevice: TLabel;
    edtDevice: TEdit;
    lblModule: TLabel;
    medtModule: TMaskEdit;
    medtDate: TMaskEdit;
    lblDate: TLabel;
    medtGroup: TMaskEdit;
    lblNumber: TLabel;
    medtNumber: TMaskEdit;
    lblGruop: TLabel;
    lblHighOrderBit: TLabel;
    medtBit_4: TMaskEdit;
    lblColon_1: TLabel;
    medtBit_5: TMaskEdit;
    Label1: TLabel;
    medtBit_6: TMaskEdit;
    lblStepIterator: TLabel;
    lblQuantity: TLabel;
    btnStart: TButton;
    btnApplay: TButton;
    seStepIterator: TSpinEdit;
    seQuantity: TSpinEdit;
    procedure btnApplayClick(Sender: TObject);
  private
    { Private declarations }
    var
    stepIteration   : Integer;
    quantity : Integer;
    idModule : Integer;
    idDate : Integer;
    idGroup : Integer;
    idNumber : Integer;
    macBit_4 : Byte;
    macBit_5 : Byte;
    macBit_6 : Byte;
  public
    { Public declarations }
  end;

var
  frmMAC: TfrmMAC;

implementation

{$R *.dfm}

procedure TfrmMAC.btnApplayClick(Sender: TObject);
var
i : Integer;
begin
stepIteration :=StrToIntDef(seStepIterator.Text, 0);
quantity := StrToIntDef(seQuantity.Text, 0);

macBit_4 := StrToIntDef(medtBit_4.Text,0);
macBit_5 := StrToIntDef(medtBit_5.Text,0);
macBit_6 := StrToIntDef(medtBit_6.Text,0);

idModule := StrToIntDef(medtModule.Text,0);
idDate := StrToIntDef(medtDate.Text,0);
idGroup := StrToIntDef(medtGroup.Text,0);
idNumber := StrToIntDef(medtNumber.Text,0);

end;

end.
