object frmWaterMeterReadings: TfrmWaterMeterReadings
  Left = 0
  Top = 0
  Caption = #1059#1095#1105#1090' '#1087#1086#1090#1088#1077#1073#1083#1077#1085#1080#1103' '#1074#1086#1076#1099
  ClientHeight = 611
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object splWater: TSplitter
    Left = 0
    Top = 534
    Width = 1184
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 458
  end
  object pnlNav: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 20
    Align = alTop
    TabOrder = 0
    object dbnvgrWater: TDBNavigator
      Left = 1
      Top = 1
      Width = 1182
      Height = 18
      DataSource = dmAccessBD.dsWater
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlTabWater: TPanel
    Left = 0
    Top = 20
    Width = 1184
    Height = 514
    Align = alClient
    Caption = 'pnlTabWater'
    TabOrder = 1
    object dbgrdWater: TDBGrid
      Left = 1
      Top = 1
      Width = 1182
      Height = 512
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
          Visible = False
        end>
    end
  end
  object pnlDown: TPanel
    Left = 0
    Top = 536
    Width = 1184
    Height = 75
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1184
      75)
    object lblEdit: TLabel
      Left = 432
      Top = 33
      Width = 121
      Height = 13
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
    end
    object bvlDown: TBevel
      Left = 353
      Top = 0
      Width = 7
      Height = 75
      Anchors = [akLeft, akTop, akBottom]
      ExplicitHeight = 137
    end
    object bvlDownTwo: TBevel
      Left = 769
      Top = 6
      Width = 7
      Height = 76
      Anchors = [akLeft, akTop, akBottom]
      ExplicitHeight = 151
    end
    object lblAdd: TLabel
      Left = 56
      Top = 33
      Width = 77
      Height = 13
      Caption = #1042#1085#1077#1089#1090#1080' '#1076#1072#1085#1085#1099#1077
    end
    object Label1: TLabel
      Left = 800
      Top = 33
      Width = 95
      Height = 13
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1090#1072#1073#1083#1080#1094#1099
    end
    object btnEdit: TButton
      Left = 610
      Top = 25
      Width = 127
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = btnEditClick
    end
    object btnAdd: TButton
      Left = 186
      Top = 27
      Width = 127
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnReview: TButton
      Left = 954
      Top = 25
      Width = 127
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 2
      OnClick = btnReviewClick
    end
  end
end
