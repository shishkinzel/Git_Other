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
    tblElectricittID: TAutoIncField;
    tblElectricittFData: TDateTimeField;
    tblElectricittCounterReadingsPrevious: TSmallintField;
    tblElectricittCounterReadingsNow: TSmallintField;
    tblElectricittTariff: TFloatField;
    tblElectricittFComment: TWideMemoField;
    tblWaterID: TAutoIncField;
    tblWaterFDate: TDateTimeField;
    tblWaterCounterReadingsHotPrevious: TSmallintField;
    tblWaterCounterReadingsHotNow: TSmallintField;
    tblWaterConsumptionHot: TSmallintField;
    tblWaterCounterReadingsColdPrevious: TSmallintField;
    tblWaterCounterReadingsColdNow: TSmallintField;
    tblWaterConsumptionCold: TIntegerField;
    tblWaterFComment: TWideMemoField;
    tblElectricittConsumption: TIntegerField;
    tblElectricittTotal: TFloatField;
    tblPhoneBookID: TAutoIncField;
    strngfldOthers: TStringField;
    tblPhoneBookPhoto: TBlobField;
    tblPhoneBookReference: TWideStringField;
    tblAuthorizPhoto: TBlobField;
    tblAuthorizReference: TWideStringField;
    tblAuthorizOthers: TWideStringField;
    procedure tblElectricittCalcFields(DataSet: TDataSet);
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



procedure TdmAccessBD.tblElectricittCalcFields(DataSet: TDataSet);
begin
  tblElectricittConsumption.AsInteger :=
    tblElectricittCounterReadingsNow.AsInteger - tblElectricittCounterReadingsPrevious.AsInteger;
  tblElectricittTotal.AsFloat := tblElectricittConsumption.AsInteger * tblElectricittTariff.AsFloat;
end;





end.

