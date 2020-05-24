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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FNAME'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOBPHONE'
        Title.Alignment = taCenter
        Title.Caption = #1052#1086#1073'_'#1090#1077#1083#1077#1092#1086#1085
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOMEPHONE'
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1084'_'#1090#1077#1083#1077#1092#1086#1085
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OTHERS'
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1086#1095#1077#1077
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FCOMMENT'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        Width = 320
        Visible = True
      end>
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
    IndexesActive = False
    Connection = dtmdlPhoneBook.conPhoneBook
    Transaction = dtmdlPhoneBook.fdtrnsctnReadPhone
    UpdateTransaction = dtmdlPhoneBook.fdtrnsctnWritePhone
    SQL.Strings = (
      'select * from phonebook')
    Left = 1024
    Top = 200
  end
end
