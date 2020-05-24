object frmPhoneBook: TfrmPhoneBook
  Left = 0
  Top = 0
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 711
  ClientWidth = 1109
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
  object lblTitle: TLabel
    Left = 400
    Top = 16
    Width = 220
    Height = 23
    Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrdPhone: TDBGrid
    Left = 8
    Top = 80
    Width = 1093
    Height = 585
    DataSource = dsPhone
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
    DataSource = dsPhone
    TabOrder = 1
  end
  object dsPhone: TDataSource
    DataSet = fdqryLogPhone
    Left = 1016
    Top = 120
  end
  object fdqryLogPhone: TFDQuery
    Active = True
    Connection = dtmdlPhoneBook.conPhoneBook
    Transaction = dtmdlPhoneBook.fdtrnsctnReadPhone
    UpdateTransaction = dtmdlPhoneBook.fdtrnsctnWritePhone
    SQL.Strings = (
      'select * from phonebook')
    Left = 1024
    Top = 200
  end
end
