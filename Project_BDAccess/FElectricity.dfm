object frmElectricity: TfrmElectricity
  Left = 0
  Top = 0
  Caption = #1059#1095#1105#1090' '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1080
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
  PixelsPerInch = 96
  TextHeight = 13
  object splTabElectricity: TSplitter
    Left = 0
    Top = 459
    Width = 1184
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 460
  end
  object pnlNav: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 20
    Align = alTop
    TabOrder = 0
    object dbnvgrElectricity: TDBNavigator
      Left = 1
      Top = 1
      Width = 1182
      Height = 18
      DataSource = dmAccessBD.dsPhoneBook
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlTabElectricity: TPanel
    Left = 0
    Top = 20
    Width = 1184
    Height = 439
    Align = alClient
    Caption = 'pnlTabElectricity'
    TabOrder = 1
    object dbgrdElectricity: TDBGrid
      Left = 1
      Top = 1
      Width = 1182
      Height = 437
      Align = alClient
      DataSource = dmAccessBD.dsElectricitt
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
          FieldName = 'FData'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CounterReadingsPrevious'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1103
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CounterReadingsNow'
          Title.Alignment = taCenter
          Title.Caption = #1057#1077#1081#1095#1072#1089
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Consumption'
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tariff'
          Title.Alignment = taCenter
          Title.Caption = #1058#1072#1088#1080#1092
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Title.Alignment = taCenter
          Title.Caption = #1057#1091#1084#1084#1072
          Width = 96
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
      Top = 35
      Width = 105
      Height = 38
      Alignment = taCenter
      AutoSize = False
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1076#1083#1103#13#10#1073#1099#1089#1090#1088#1086#1075#1086' '#1087#1086#1080#1089#1082#1072
      WordWrap = True
    end
    object lblOne: TLabel
      Left = 32
      Top = 37
      Width = 124
      Height = 13
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    end
    object lblScan: TLabel
      Left = 32
      Top = 100
      Width = 95
      Height = 13
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1090#1072#1073#1083#1080#1094#1099
    end
    object lblSearchTwo: TLabel
      Left = 383
      Top = 95
      Width = 105
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = #1055#1086#1080#1089#1082#13#10
      WordWrap = True
    end
    object bvlDown: TBevel
      Left = 353
      Top = 0
      Width = 7
      Height = 150
      Anchors = [akLeft, akTop, akBottom]
      ExplicitHeight = 137
    end
    object bvlDownTwo: TBevel
      Left = 841
      Top = 0
      Width = 7
      Height = 151
      Anchors = [akLeft, akTop, akBottom]
      ExplicitHeight = 137
    end
    object btnEdit: TButton
      Left = 194
      Top = 33
      Width = 127
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
    end
    object btnReview: TButton
      Left = 194
      Top = 88
      Width = 127
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      OnClick = btnReviewClick
    end
    object edtSearch: TEdit
      Left = 512
      Top = 36
      Width = 161
      Height = 21
      TabOrder = 2
    end
    object edtSearchTwo: TEdit
      Left = 512
      Top = 88
      Width = 161
      Height = 21
      TabOrder = 3
    end
    object btnSearc: TButton
      Left = 712
      Top = 88
      Width = 75
      Height = 21
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 4
    end
  end
end
