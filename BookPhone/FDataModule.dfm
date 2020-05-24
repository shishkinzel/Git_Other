object dtmdlPhoneBook: TdtmdlPhoneBook
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 543
  Width = 739
  object conPhoneBook: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=E:\Embarcadero\Studio\Projects\Git_Other\BookPhone\Win3' +
        '2\Debug\FBLib\DBPHONEBOOK.FDB'
      'Protocol=TCPIP'
      'Server=localhost'
      'DriverID=FB')
    TxOptions.Isolation = xiSnapshot
    TxOptions.EnableNested = False
    Connected = True
    LoginPrompt = False
    Transaction = fdtrnsctnReadPhone
    UpdateTransaction = fdtrnsctnWritePhone
    Left = 48
    Top = 40
  end
  object conAuthorization: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=E:\Embarcadero\Studio\Projects\Git_Other\BookPhone\Win3' +
        '2\Debug\FBLib\DBAUTHORIZATIONBOOK.FDB'
      'Protocol=TCPIP'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = fdtrnsctnReadAuth
    UpdateTransaction = fdtrnsctnWriteAuth
    Left = 168
    Top = 40
  end
  object fdtrnsctnReadPhone: TFDTransaction
    Options.ReadOnly = True
    Options.AutoStop = False
    Options.EnableNested = False
    Connection = conPhoneBook
    Left = 336
    Top = 56
  end
  object fdtrnsctnWritePhone: TFDTransaction
    Options.DisconnectAction = xdRollback
    Options.EnableNested = False
    Connection = conPhoneBook
    Left = 312
    Top = 128
  end
  object fdphysfbdrvrlnkOne: TFDPhysFBDriverLink
    VendorLib = 
      'E:\Embarcadero\Studio\Projects\Git_Other\BookPhone\Win32\Debug\F' +
      'BClient\fbclient.dll'
    Left = 40
    Top = 120
  end
  object fdtrnsctnReadAuth: TFDTransaction
    Options.ReadOnly = True
    Options.AutoStop = False
    Options.EnableNested = False
    Connection = conAuthorization
    Left = 448
    Top = 56
  end
  object fdtrnsctnWriteAuth: TFDTransaction
    Options.DisconnectAction = xdRollback
    Options.EnableNested = False
    Connection = conAuthorization
    Left = 432
    Top = 128
  end
end
