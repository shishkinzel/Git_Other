unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, dmMacIterator;
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
    btnRestart: TButton;
    procedure btnApplayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  var
    stepIteration: Integer;
    quantity: Integer;
    idModule: Integer;
    idDate: Integer;
    idGroup: Integer;
    idNumber: Integer;
    fileId : TextFile;

  public
  { Public declarations }
    const
    nameFile = 'id_mac_iterator.txt';

  var
    idMAC: array[0 .. 2] of Byte;
  end;
var
  frmMAC: TfrmMAC;
implementation

{$R *.dfm}
procedure TfrmMAC.btnApplayClick(Sender: TObject);
var
i, stepMac : Integer;
s : String;
begin
s := ' -> ';
stepMac := 1;
stepIteration :=StrToIntDef(seStepIterator.Text, 0);
quantity := StrToIntDef(seQuantity.Text, 0);


idMAC[0] :=  DataModuleMacIterator.HexStrToInt(medtBit_4.Text);
idMAC[1] :=  DataModuleMacIterator.HexStrToInt(medtBit_5.Text);
idMAC[2] :=  DataModuleMacIterator.HexStrToInt(medtBit_6.Text);

// for I := 0 to 2 do
//   begin
//     s := s + ' : ' + idMAC[i].ToHexString;
//   end;

idModule := StrToIntDef(medtModule.Text,0);
idDate := StrToIntDef(medtDate.Text,0);
idGroup := StrToIntDef(medtGroup.Text,0);
idNumber := StrToIntDef(medtNumber.Text,0);

  Rewrite(fileId);
  for i := 1 to quantity do
  begin
    Write(fileId, DataModuleMacIterator.ArrayToString(idMAC));
    while stepMac <= stepIteration do
    begin
      DataModuleMacIterator.IncArrayOne(idMAC);
      Inc(stepMac);
    end;
    stepMac := 1;
    Writeln(fileId);
  end;
  CloseFile(fileId);



end;

procedure TfrmMAC.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  AssignFile(fileId, nameFile);

  if not FileExists(nameFile) then
  begin
    Rewrite(fileId);
    CloseFile(fileId);
  end;

end;

end.
