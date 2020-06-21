object frmEditElectriity: TfrmEditElectriity
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1087#1086#1082#1072#1079#1072#1085#1080#1081' '#1101#1083#1077#1082#1090#1088#1086#1089#1095#1105#1090#1095#1080#1082#1072' '
  ClientHeight = 491
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpEditElectricity: TGroupBox
    Left = 0
    Top = 0
    Width = 734
    Height = 491
    Align = alClient
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1087#1086#1082#1072#1079#1072#1085#1080#1081' '#1101#1083#1077#1082#1090#1088#1086#1089#1095#1105#1090#1095#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblPrior: TLabel
      Left = 24
      Top = 29
      Width = 124
      Height = 13
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblNow: TLabel
      Left = 27
      Top = 67
      Width = 36
      Height = 13
      Caption = #1057#1077#1081#1095#1072#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblTariff: TLabel
      Left = 27
      Top = 125
      Width = 32
      Height = 13
      Caption = #1058#1072#1088#1080#1092
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblTotal: TLabel
      Left = 357
      Top = 141
      Width = 31
      Height = 13
      Caption = #1057#1091#1084#1084#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblComment: TLabel
      Left = 24
      Top = 187
      Width = 67
      Height = 13
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblConsumption: TLabel
      Left = 307
      Top = 83
      Width = 113
      Height = 13
      Caption = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077' '#1079#1072' '#1084#1077#1089#1103#1094
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDate: TLabel
      Left = 477
      Top = 29
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 564
      Top = 344
      Width = 155
      Height = 16
      Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1072#1081#1090' '#1084#1086#1089#1101#1085#1077#1088#1075#1086
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnClick = Label1Click
    end
    object dbedtConsumption: TDBEdit
      Left = 452
      Top = 80
      Width = 77
      Height = 21
      DataField = 'Consumption'
      DataSource = dmAccessBD.dsElectricitt
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbedtNow: TDBEdit
      Left = 172
      Top = 64
      Width = 75
      Height = 21
      DataField = 'CounterReadingsNow'
      DataSource = dmAccessBD.dsElectricitt
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
      OnExit = dbedtNowExit
      OnKeyPress = dbedtNowKeyPress
    end
    object dbedtlTotal: TDBEdit
      Left = 452
      Top = 138
      Width = 77
      Height = 21
      DataField = 'Total'
      DataSource = dmAccessBD.dsElectricitt
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbedtPrior: TDBEdit
      Left = 172
      Top = 26
      Width = 77
      Height = 21
      DataField = 'CounterReadingsPrevious'
      DataSource = dmAccessBD.dsElectricitt
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 3
      OnExit = dbedtPriorExit
      OnKeyPress = dbedtPriorKeyPress
    end
    object dbmmoComment: TDBMemo
      Left = 19
      Top = 206
      Width = 230
      Height = 237
      DataField = 'FComment'
      DataSource = dmAccessBD.dsElectricitt
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbnvgrElectricity: TDBNavigator
      Left = 0
      Top = 455
      Width = 736
      Height = 25
      DataSource = dmAccessBD.dsElectricitt
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object btnEnter: TButton
      Left = 646
      Top = 224
      Width = 73
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnEnterClick
    end
    object dbedtDate: TDBEdit
      Left = 549
      Top = 26
      Width = 66
      Height = 21
      DataField = 'FData'
      DataSource = dmAccessBD.dsElectricitt
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
      OnExit = dbedtDateExit
      OnKeyPress = dbedtDateKeyPress
    end
    object dbedtTariff: TDBEdit
      Left = 172
      Top = 122
      Width = 77
      Height = 21
      DataField = 'Tariff'
      DataSource = dmAccessBD.dsElectricitt
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 8
      OnKeyPress = dbedtTariffKeyPress
    end
    object btnCancel: TButton
      Left = 646
      Top = 272
      Width = 73
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnCancelClick
    end
  end
end
