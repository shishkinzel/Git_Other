unit FDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmAccessBD = class(TDataModule)
    conBDAccess: TADOConnection;
    tblPhoneBook: TADOTable;
    dsPhoneBook: TDataSource;
    dsAuthoriz: TDataSource;
    tblAuthoriz: TADOTable;
    tblElectricitt: TADOTable;
    dsElectricitt: TDataSource;
    tblWater: TADOTable;
    dsWater: TDataSource;
    tblPhoneBookFName: TWideStringField;
    tblPhoneBookMobTel: TWideStringField;
    tblPhoneBookAddress: TWideStringField;
    tblPhoneBookFComment: TWideMemoField;
    tblAuthorizID: TAutoIncField;
    tblAuthorizFName: TWideStringField;
    tblAuthorizFRecource: TWideStringField;
    tblAuthorizFLogin: TWideStringField;
    tblAuthorizFPassword: TWideStringField;
    tblAuthorizFComment: TWideMemoField;
    tblPhoneBookID: TAutoIncField;
    strngfldOthers: TStringField;
    tblPhoneBookPhoto: TBlobField;
    tblPhoneBookReference: TWideStringField;
    tblAuthorizPhoto: TBlobField;
    tblAuthorizReference: TWideStringField;
    tblAuthorizOthers: TWideStringField;
    tblElectricittID: TAutoIncField;
    tblElectricittFData: TDateTimeField;
    tblElectricittCounterReadingsPrevious: TIntegerField;
    tblElectricittCounterReadingsNow: TIntegerField;
    tblElectricittConsumption: TSmallintField;
    tblElectricittTariff: TFloatField;
    tblElectricittTotal: TFloatField;
    tblElectricittFComment: TWideMemoField;
    tblWaterID: TAutoIncField;
    tblWaterFDate: TDateTimeField;
    tblWaterCounterReadingsHotPrevious: TIntegerField;
    tblWaterCounterReadingsHotNow: TIntegerField;
    tblWaterConsumptionHot: TSmallintField;
    tblWaterCounterReadingsColdPrevious: TIntegerField;
    tblWaterCounterReadingsColdNow: TIntegerField;
    tblWaterConsumptionCold: TSmallintField;
    tblWaterFComment: TWideMemoField;
  private
    { Private declarations }
  public
    procedure MyLocate(s : string);
  end;

var
  dmAccessBD: TdmAccessBD;

implementation

uses
  FPhoneBook;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmAccessBD.MyLocate(s: string);
begin
tblPhoneBook.Locate('FName', s, [loCaseInsensitive, loPartialKey]);
end;






end.

