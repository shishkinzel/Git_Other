object frmAuthorization: TfrmAuthorization
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1081' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 729
  ClientWidth = 1137
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
    Width = 1121
    Height = 585
    DataSource = dsAuthorization
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
        FieldName = 'RECOURCES'
        Title.Alignment = taCenter
        Title.Caption = #1056#1077#1089#1091#1088#1089#1099
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FNAME'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FLOGIN'
        Title.Alignment = taCenter
        Title.Caption = #1051#1086#1075#1080#1085
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPASSWORD'
        Title.Alignment = taCenter
        Title.Caption = #1055#1072#1088#1086#1083#1100
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OTHERS'
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1086#1095#1077#1077
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FCOMMENT'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        Width = 205
        Visible = True
      end>
  end
  object dbnvgrPhone: TDBNavigator
    Left = 8
    Top = 57
    Width = 1120
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
