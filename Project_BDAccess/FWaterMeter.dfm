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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object splWater: TSplitter
    Left = 0
    Top = 459
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
      DataSource = dmAccessBD.dsPhoneBook
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlTabWater: TPanel
    Left = 0
    Top = 20
    Width = 1184
    Height = 439
    Align = alClient
    Caption = 'pnlTabWater'
    TabOrder = 1
    object dbgrdWater: TDBGrid
      Left = 1
      Top = 1
      Width = 1182
      Height = 437
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
    Top = 461
    Width = 1184
    Height = 150
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1184
      150)
    object lblSearch: TLabel
      Left = 388
      Top = 36
      Width = 105
      Height = 38
      Alignment = taCenter
      AutoSize = False
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1076#1083#1103#13#10#1073#1099#1089#1090#1088#1086#1075#1086' '#1087#1086#1080#1089#1082#1072
      WordWrap = True
    end
    object lblOne: TLabel
      Left = 32
      Top = 38
      Width = 124
      Height = 13
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    end
    object lblScan: TLabel
      Left = 32
      Top = 101
      Width = 95
      Height = 13
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1090#1072#1073#1083#1080#1094#1099
    end
    object lblSearchTwo: TLabel
      Left = 383
      Top = 96
      Width = 105
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = #1055#1086#1080#1089#1082#13#10
      WordWrap = True
    end
    object bvlDown: TBevel
      Left = 353
      Top = 1
      Width = 7
      Height = 150
      Anchors = [akLeft, akTop, akBottom]
    end
    object bvlDownTwo: TBevel
      Left = 841
      Top = 1
      Width = 7
      Height = 151
      Anchors = [akLeft, akTop, akBottom]
    end
    object btnEdit: TButton
      Left = 194
      Top = 34
      Width = 127
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
    end
    object btnReview: TButton
      Left = 194
      Top = 89
      Width = 127
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      OnClick = btnReviewClick
    end
    object edtSearch: TEdit
      Left = 512
      Top = 37
      Width = 161
      Height = 21
      TabOrder = 2
    end
    object edtSearchTwo: TEdit
      Left = 512
      Top = 89
      Width = 161
      Height = 21
      TabOrder = 3
    end
    object btnSearc: TButton
      Left = 712
      Top = 89
      Width = 75
      Height = 21
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 4
    end
  end
end
