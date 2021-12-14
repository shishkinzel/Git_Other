object frmInputData: TfrmInputData
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
  ClientHeight = 491
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter
    Left = 0
    Top = 351
    Width = 638
    Height = 1
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 350
    ExplicitWidth = 635
  end
  object spl2: TSplitter
    Left = 320
    Top = 0
    Width = 1
    Height = 351
    ExplicitLeft = 273
  end
  object pnlInData: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 351
    Align = alLeft
    TabOrder = 0
    ExplicitLeft = -5
    object lbl1: TLabel
      Left = 16
      Top = 60
      Width = 119
      Height = 19
      Caption = #1069#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 16
      Top = 120
      Width = 109
      Height = 19
      Caption = #1061#1086#1083#1086#1076#1085#1072#1103' '#1074#1086#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 180
      Width = 98
      Height = 19
      Caption = #1043#1086#1088#1103#1095#1072#1103' '#1074#1086#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtTitle: TStaticText
      Left = 48
      Top = 8
      Width = 199
      Height = 23
      Caption = #1042#1074#1086#1076' '#1087#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbedtEle: TDBEdit
      Left = 150
      Top = 60
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbedtColdWater: TDBEdit
      Left = 150
      Top = 120
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbedtHotWater: TDBEdit
      Left = 150
      Top = 180
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object pnldown: TPanel
    Left = 0
    Top = 352
    Width = 638
    Height = 139
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 635
  end
  object pnlRight: TPanel
    Left = 321
    Top = 0
    Width = 317
    Height = 351
    Align = alClient
    Enabled = False
    TabOrder = 2
    ExplicitLeft = 320
    ExplicitTop = 1
    ExplicitWidth = 320
    ExplicitHeight = 344
    object Label1: TLabel
      Left = 24
      Top = 180
      Width = 98
      Height = 19
      Caption = #1043#1086#1088#1103#1095#1072#1103' '#1074#1086#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 120
      Width = 109
      Height = 19
      Caption = #1061#1086#1083#1086#1076#1085#1072#1103' '#1074#1086#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 60
      Width = 119
      Height = 19
      Caption = #1069#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 158
      Top = 60
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 158
      Top = 180
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 158
      Top = 120
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 32
      Top = 8
      Width = 258
      Height = 23
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1077#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1077' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
end
