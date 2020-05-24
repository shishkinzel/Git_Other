object frmAuthorization: TfrmAuthorization
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1081' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 729
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrdPhone: TDBGrid
    Left = 8
    Top = 80
    Width = 1093
    Height = 585
    DataSource = dsAuthorization
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnvgrPhone: TDBNavigator
    Left = 8
    Top = 57
    Width = 1090
    Height = 25
    DataSource = dsAuthorization
    TabOrder = 1
  end
  object dsAuthorization: TDataSource
    DataSet = fdqryLogAuthorization
    Left = 1016
    Top = 120
  end
  object fdqryLogAuthorization: TFDQuery
    Connection = dtmdlPhoneBook.conAuthorization
    Transaction = dtmdlPhoneBook.fdtrnsctnReadAuth
    UpdateTransaction = dtmdlPhoneBook.fdtrnsctnWriteAuth
    SQL.Strings = (
      'select * from AUTHORIZATIONBOOK')
    Left = 1024
    Top = 192
  end
end
