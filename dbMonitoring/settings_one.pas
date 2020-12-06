unit settings_one;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniDBConnectionSection = 'DBConnection';
  csIniGlobalSection = 'Global';
  csIniIGORSection = 'IGOR';

  {Section: DBConnection}
  csIniDBConnectionDBIP = 'DBIP';
  csIniDBConnectionDBPath = 'DBPath';
  csIniDBConnectionVendorLib = 'VendorLib';

  {Section: Global}
  csIniGlobalStartInterval = 'StartInterval';

  {Section: IGOR}
  csIniIGORWrite = 'Write';
  csIniIGOROpen = 'Open';
  csIniIGORStringData = 'StringData';

type
  TIniOptions = class(TObject)
  private
    {Section: DBConnection}
    FDBConnectionDBIP: string;
    FDBConnectionDBPath: string;
    FDBConnectionVendorLib: string;

    {Section: Global}
    FGlobalStartInterval: Integer;

    {Section: IGOR}
    FIGORWrite: Boolean;
    FIGOROpen: Integer;
    FIGORStringData: string;
  public
    procedure LoadSettings(Ini: TIniFile);
    procedure SaveSettings(Ini: TIniFile);
    
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

    {Section: DBConnection}
    property DBConnectionDBIP: string read FDBConnectionDBIP write FDBConnectionDBIP;
    property DBConnectionDBPath: string read FDBConnectionDBPath write FDBConnectionDBPath;
    property DBConnectionVendorLib: string read FDBConnectionVendorLib write FDBConnectionVendorLib;

    {Section: Global}
    property GlobalStartInterval: Integer read FGlobalStartInterval write FGlobalStartInterval;

    {Section: IGOR}
    property IGORWrite: Boolean read FIGORWrite write FIGORWrite;
    property IGOROpen: Integer read FIGOROpen write FIGOROpen;
    property IGORStringData: string read FIGORStringData write FIGORStringData;
  end;

var
  IniOptions: TIniOptions = nil;

implementation

procedure TIniOptions.LoadSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: DBConnection}
    FDBConnectionDBIP := Ini.ReadString(csIniDBConnectionSection, csIniDBConnectionDBIP, '127.0.1.1');
    FDBConnectionDBPath := Ini.ReadString(csIniDBConnectionSection, csIniDBConnectionDBPath, 'C:\DB\SCADALOGGER.GDB');
    FDBConnectionVendorLib := Ini.ReadString(csIniDBConnectionSection, csIniDBConnectionVendorLib, 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll');

    {Section: Global}
    FGlobalStartInterval := Ini.ReadInteger(csIniGlobalSection, csIniGlobalStartInterval, 120);

    {Section: IGOR}
    FIGORWrite := Ini.ReadBool(csIniIGORSection, csIniIGORWrite, True);
    FIGOROpen := Ini.ReadInteger(csIniIGORSection, csIniIGOROpen, 2);
    FIGORStringData := Ini.ReadString(csIniIGORSection, csIniIGORStringData, 'One two');
  end;
end;

procedure TIniOptions.SaveSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: DBConnection}
    Ini.WriteString(csIniDBConnectionSection, csIniDBConnectionDBIP, FDBConnectionDBIP);
    Ini.WriteString(csIniDBConnectionSection, csIniDBConnectionDBPath, FDBConnectionDBPath);
    Ini.WriteString(csIniDBConnectionSection, csIniDBConnectionVendorLib, FDBConnectionVendorLib);

    {Section: Global}
    Ini.WriteInteger(csIniGlobalSection, csIniGlobalStartInterval, FGlobalStartInterval);

    {Section: IGOR}
    Ini.WriteBool(csIniIGORSection, csIniIGORWrite, FIGORWrite);
    Ini.WriteInteger(csIniIGORSection, csIniIGOROpen, FIGOROpen);
    Ini.WriteString(csIniIGORSection, csIniIGORStringData, FIGORStringData);
  end;
end;

procedure TIniOptions.LoadFromFile(const FileName: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FileName);
  try
    LoadSettings(Ini);
  finally
    Ini.Free;
  end;
end;

procedure TIniOptions.SaveToFile(const FileName: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FileName);
  try
    SaveSettings(Ini);
  finally
    Ini.Free;
  end;
end;

initialization
  IniOptions := TIniOptions.Create;

finalization
  IniOptions.Free;

end.

