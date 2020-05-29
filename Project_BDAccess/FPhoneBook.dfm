object frmPhoneBook: TfrmPhoneBook
  Left = 0
  Top = 0
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 795
  ClientWidth = 1191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlNav: TPanel
    Left = 0
    Top = 0
    Width = 1191
    Height = 25
    Align = alTop
    TabOrder = 0
    object dbnvgrPhoneBook: TDBNavigator
      Left = 1
      Top = 1
      Width = 1189
      Height = 23
      DataSource = dmAccessBD.dsPhoneBook
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlTabPhone: TPanel
    Left = 0
    Top = 25
    Width = 1191
    Height = 560
    Align = alTop
    Caption = 'pnlTabPhone'
    TabOrder = 1
    object dbgrdPhoneBook: TDBGrid
      Left = 1
      Top = 1
      Width = 1189
      Height = 558
      Align = alClient
      DataSource = dmAccessBD.dsPhoneBook
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
          Title.Caption = #8470
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FName'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MobTel'
          Title.Alignment = taCenter
          Title.Caption = #1052#1086#1073'. '#1090#1077#1083#1077#1092#1086#1085
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Title.Alignment = taCenter
          Title.Caption = #1040#1076#1088#1077#1089
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Others'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1086#1095#1077#1077
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FComment'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          Width = 407
          Visible = True
        end>
    end
  end
  object pnlDown: TPanel
    Left = 0
    Top = 585
    Width = 1191
    Height = 210
    Align = alClient
    TabOrder = 2
    object lblSearch: TLabel
      Left = 72
      Top = 24
      Width = 43
      Height = 13
      Caption = 'lblSearch'
    end
    object lblOne: TLabel
      Left = 72
      Top = 59
      Width = 43
      Height = 13
      Caption = 'lblSearch'
    end
    object lblTwo: TLabel
      Left = 72
      Top = 88
      Width = 43
      Height = 13
      Caption = 'lblSearch'
    end
    object dbedtSearch: TDBEdit
      Left = 169
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object dbedtOne: TDBEdit
      Left = 169
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object dbedtTwo: TDBEdit
      Left = 169
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btnSearch: TButton
      Left = 344
      Top = 18
      Width = 75
      Height = 25
      Caption = 'btnSearch'
      TabOrder = 3
      OnClick = btnSearchClick
    end
    object btnOne: TButton
      Left = 344
      Top = 49
      Width = 75
      Height = 25
      Caption = 'btnSearch'
      TabOrder = 4
    end
    object btnTwo: TButton
      Left = 344
      Top = 80
      Width = 75
      Height = 25
      Caption = 'btnSearch'
      TabOrder = 5
    end
  end
end
