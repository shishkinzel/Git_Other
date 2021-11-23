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
    type
      TOutArray = array[0 .. 2] of Byte;

    function HexStrToInt(const str: string): Integer;
    function IncArrayOne(const inArray : TOutArray) : TOutArray;
    function ArrayToString(const inArray : TOutArray) : string;

  end;
var
  DataModuleMacIterator: TDataModuleMacIterator;
implementation

uses
  MacAdressIterator;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TDataModuleMacIterator.HexStrToInt(const str: string): Integer;
begin
  Result := StrToIntDef('$' + str, 0);
end;

function TDataModuleMacIterator.ArrayToString(const inArray: TOutArray): string;
var
s : string;
i : Integer;
begin
   for I := 0 to 2 do
   begin
     s := s + ' : ' + inArray[i].ToHexString;
   end;
   Result := s;
end;


function TDataModuleMacIterator.IncArrayOne(const inArray: TOutArray)
  : TOutArray;
var
  T0, T1, T2: Integer;
begin
  T0 := inArray[0];
  T1 := inArray[1];
  T2 := inArray[2];

  if T2 <= 255 then
  begin
    if T1 <= 255 then
    begin
      if T0 <= 255 then
      begin
         Inc(T0);
         if T0 = 256 then
         begin
         Inc(T1);
         T0 := 0;
         end;
      end;
      if T1 = 256 then
      begin
        Inc(T2);
        T1 := 0;
      end;
    end;
    if T2 = 256 then
     raise
     Exception.Create('Недопустимое значение массива');
  end;

end;

end.
