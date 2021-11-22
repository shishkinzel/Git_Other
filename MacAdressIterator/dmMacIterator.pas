unit dmMacIterator;

interface

uses
  System.SysUtils, System.Classes;

type
  TDataModuleMacIterator = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function HexStrToInt(const str: string): Integer;
  end;

var
  DataModuleMacIterator: TDataModuleMacIterator;

implementation

uses
  MacAdressIterator;

{%CLASSGROUP 'Vcl.Controls.TControl'}

function TDataModuleMacIterator.HexStrToInt(const str: string): Integer;
begin
  Result := StrToIntDef('$' + str,0);
end;

{$R *.dfm}

end.
