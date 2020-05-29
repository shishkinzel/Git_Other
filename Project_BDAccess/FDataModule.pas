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
    tblPhoneBookOthers: TWideMemoField;
    tblPhoneBookFComment: TWideMemoField;
    tblAuthorizID: TAutoIncField;
    tblAuthorizFName: TWideStringField;
    tblAuthorizFRecource: TWideStringField;
    tblAuthorizFLogin: TWideStringField;
    tblAuthorizFPassword: TWideStringField;
    tblAuthorizOthers: TWideMemoField;
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
    procedure tblElectricittCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAccessBD: TdmAccessBD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmAccessBD.tblElectricittCalcFields(DataSet: TDataSet);
begin
  tblElectricittConsumption.AsInteger :=
    tblElectricittCounterReadingsNow.AsInteger - tblElectricittCounterReadingsPrevious.AsInteger;
  tblElectricittTotal.AsFloat := tblElectricittConsumption.AsInteger * tblElectricittTariff.AsFloat;
end;





end.

