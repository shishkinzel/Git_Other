object frmWaterMeterReadings: TfrmWaterMeterReadings
  Left = 0
  Top = 0
  Caption = #1059#1095#1105#1090' '#1087#1086#1090#1088#1077#1073#1083#1077#1085#1080#1103' '#1074#1086#1076#1099
  ClientHeight = 828
  ClientWidth = 1202
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
    Width = 1202
    Height = 25
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1191
    object dbnvgrWater: TDBNavigator
      Left = 1
      Top = 1
      Width = 1200
      Height = 23
      DataSource = dmAccessBD.dsPhoneBook
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1189
    end
  end
  object pnlTabPhone: TPanel
    Left = 0
    Top = 25
    Width = 1202
    Height = 560
    Align = alTop
    Caption = 'pnlTabPhone'
    TabOrder = 1
    ExplicitWidth = 1191
    object dbgrdWater: TDBGrid
      Left = 1
      Top = 1
      Width = 1200
      Height = 558
      Align = alClient
      DataSource = dmAccessBD.dsWater
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
          FieldName = 'FDate'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CounterReadingsHotPrevious'
          Title.Alignment = taCenter
          Title.Caption = #1043#1086#1088'.'#1074#1086#1076#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1077
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CounterReadingsHotNow'
          Title.Alignment = taCenter
          Title.Caption = #1043#1086#1088'.'#1074#1086#1076#1072' '#1089#1077#1081#1095#1072#1089
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ConsumptionHot'
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077' '#1075#1086#1088'.'#1074#1086#1076#1099
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CounterReadingsColdPrevious'
          Title.Alignment = taCenter
          Title.Caption = #1061#1086#1083'.'#1074#1086#1076#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1077
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CounterReadingsColdNow'
          Title.Alignment = taCenter
          Title.Caption = #1061#1086#1083'.'#1074#1086#1076#1072' '#1089#1077#1081#1095#1072#1089
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ConsumptionCold'
          Title.Caption = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077' '#1093#1086#1083'.'#1074#1086#1076#1099
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FComment'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          Width = 263
          Visible = True
        end>
    end
  end
  object pnlDown: TPanel
    Left = 0
    Top = 585
    Width = 1202
    Height = 243
    Align = alClient
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitTop = 590
    ExplicitWidth = 1191
    ExplicitHeight = 210
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
