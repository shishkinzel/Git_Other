object DModule: TDModule
  OldCreateOrder = False
  Height = 529
  Width = 772
  object dsJob: TDataSource
    DataSet = tblJob
    Left = 27
    Top = 119
  end
  object conJob: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Embarcadero\Stud' +
      'io\Projects\Git_JobDB\DB\'#1046#1091#1088#1085#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1103' '#1087#1088#1086#1076#1091#1082#1094#1080#1080' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077 +
      #1085#1080#1102'_'#1062#1077#1093'.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 52
    Top = 52
  end
  object tblJob: TADOTable
    Active = True
    Connection = conJob
    CursorType = ctStatic
    TableName = #1054#1089#1085#1086#1074#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072
    Left = 113
    Top = 55
  end
end
