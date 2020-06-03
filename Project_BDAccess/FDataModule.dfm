object dmAccessBD: TdmAccessBD
  OldCreateOrder = False
  Height = 455
  Width = 542
  object conBDAccess: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\DB' +
      '_Access\DataBaseForJob.mdb;Mode=Share Deny None;Persist Security' +
      ' Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path' +
      '="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet O' +
      'LEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2' +
      ';Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Pas' +
      'sword="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encryp' +
      't Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Je' +
      't OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False' +
      ';'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 32
  end
  object tblPhoneBook: TADOTable
    Connection = conBDAccess
    CursorType = ctStatic
    TableName = 'Phone Directory'
    Left = 104
    Top = 103
    object tblPhoneBookID: TAutoIncField
      FieldName = 'ID'
      KeyFields = 'ID'
      ReadOnly = True
    end
    object tblPhoneBookFName: TWideStringField
      FieldName = 'FName'
      Size = 50
    end
    object tblPhoneBookMobTel: TWideStringField
      FieldName = 'MobTel'
      EditMask = '8(999\)000-00-00;1;_'
      Size = 30
    end
    object tblPhoneBookAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object strngfldOthers: TStringField
      DisplayWidth = 50
      FieldName = 'Others'
      Size = 255
    end
    object tblPhoneBookFComment: TWideMemoField
      FieldName = 'FComment'
      BlobType = ftWideMemo
    end
    object tblPhoneBookPhoto: TBlobField
      FieldName = 'Photo'
    end
    object tblPhoneBookReference: TWideStringField
      FieldName = 'Reference'
      KeyFields = 'Reference'
      Size = 255
    end
  end
  object dsPhoneBook: TDataSource
    DataSet = tblPhoneBook
    Left = 32
    Top = 103
  end
  object dsAuthoriz: TDataSource
    DataSet = tblAuthoriz
    Left = 32
    Top = 159
  end
  object tblAuthoriz: TADOTable
    Connection = conBDAccess
    CursorType = ctStatic
    TableName = 'Authorization directory'
    Left = 104
    Top = 159
    object tblAuthorizID: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblAuthorizFName: TWideStringField
      FieldName = 'FName'
      Size = 50
    end
    object tblAuthorizFRecource: TWideStringField
      FieldName = 'FRecource'
      Size = 60
    end
    object tblAuthorizFLogin: TWideStringField
      FieldName = 'FLogin'
      Size = 50
    end
    object tblAuthorizFPassword: TWideStringField
      FieldName = 'FPassword'
      Size = 50
    end
    object tblAuthorizFComment: TWideMemoField
      FieldName = 'FComment'
      BlobType = ftWideMemo
    end
    object tblAuthorizPhoto: TBlobField
      FieldName = 'Photo'
      KeyFields = 'Photo'
    end
    object tblAuthorizReference: TWideStringField
      FieldName = 'Reference'
      KeyFields = 'Reference'
      Size = 255
    end
    object tblAuthorizOthers: TWideStringField
      FieldName = 'Others'
      KeyFields = 'Others'
      Size = 255
    end
  end
  object tblElectricitt: TADOTable
    Connection = conBDAccess
    CursorType = ctStatic
    TableName = 'Electricity metering book'
    Left = 96
    Top = 223
    object tblElectricittID: TAutoIncField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblElectricittFData: TDateTimeField
      FieldName = 'FData'
      EditMask = '!99/99/0000;1;_'
    end
    object tblElectricittCounterReadingsPrevious: TSmallintField
      FieldName = 'CounterReadingsPrevious'
    end
    object tblElectricittCounterReadingsNow: TSmallintField
      FieldName = 'CounterReadingsNow'
    end
    object tblElectricittConsumption: TIntegerField
      FieldName = 'Consumption'
    end
    object tblElectricittTariff: TFloatField
      FieldName = 'Tariff'
      Precision = 3
    end
    object tblElectricittTotal: TFloatField
      FieldName = 'Total'
      Precision = 6
    end
    object tblElectricittFComment: TWideMemoField
      FieldName = 'FComment'
      BlobType = ftWideMemo
    end
  end
  object dsElectricitt: TDataSource
    DataSet = tblElectricitt
    Left = 32
    Top = 215
  end
  object tblWater: TADOTable
    Connection = conBDAccess
    CursorType = ctStatic
    TableName = 'Water meter readings book'
    Left = 96
    Top = 271
    object tblWaterID: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblWaterFDate: TDateTimeField
      FieldName = 'FDate'
    end
    object tblWaterCounterReadingsHotPrevious: TSmallintField
      FieldName = 'CounterReadingsHotPrevious'
    end
    object tblWaterCounterReadingsHotNow: TSmallintField
      FieldName = 'CounterReadingsHotNow'
    end
    object tblWaterConsumptionHot: TSmallintField
      FieldName = 'ConsumptionHot'
    end
    object tblWaterCounterReadingsColdPrevious: TSmallintField
      FieldName = 'CounterReadingsColdPrevious'
    end
    object tblWaterCounterReadingsColdNow: TSmallintField
      FieldName = 'CounterReadingsColdNow'
    end
    object tblWaterConsumptionCold: TIntegerField
      FieldName = 'ConsumptionCold'
    end
    object tblWaterFComment: TWideMemoField
      FieldName = 'FComment'
      BlobType = ftWideMemo
    end
  end
  object dsWater: TDataSource
    DataSet = tblWater
    Left = 32
    Top = 271
  end
end
