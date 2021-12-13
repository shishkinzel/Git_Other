object frmPaymentDocuments: TfrmPaymentDocuments
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1090#1077#1078#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
  ClientHeight = 501
  ClientWidth = 634
  Color = 16759225
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmPayment
  OldCreateOrder = False
  Position = poScreenCenter
  StyleName = 'Payment Documents'
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel
    Left = 0
    Top = 36
    Width = 634
    Height = 465
    Align = alClient
    TabOrder = 0
    object pnlShow: TPanel
      Left = 1
      Top = 42
      Width = 632
      Height = 242
      Align = alClient
      BorderStyle = bsSingle
      Color = 15767290
      ParentBackground = False
      TabOrder = 2
      object lblEexpense: TLabel
        Left = 551
        Top = 92
        Width = 56
        Height = 19
        Caption = #1050#1074#1090'/'#1095#1072#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblElectric: TLabel
        Left = 21
        Top = 92
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
      object lblEnext: TLabel
        Left = 398
        Top = 92
        Width = 56
        Height = 19
        Caption = #1050#1074#1090'/'#1095#1072#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblEprev: TLabel
        Left = 206
        Top = 92
        Width = 56
        Height = 19
        Caption = #1050#1074#1090'/'#1095#1072#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblExpense: TLabel
        Left = 557
        Top = 51
        Width = 50
        Height = 19
        Caption = #1056#1072#1089#1093#1086#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblNext: TLabel
        Left = 364
        Top = 51
        Width = 90
        Height = 19
        Caption = #1055#1086#1089#1083#1077#1076#1091#1097#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPrev: TLabel
        Left = 171
        Top = 51
        Width = 91
        Height = 19
        Caption = #1055#1088#1077#1076#1091#1076#1091#1097#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSource: TLabel
        Left = 21
        Top = 51
        Width = 70
        Height = 19
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWcold: TLabel
        Left = 21
        Top = 142
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
      object lblWGoldExpense: TLabel
        Left = 536
        Top = 142
        Width = 71
        Height = 19
        Caption = #1050#1091#1073#1086#1084#1077#1090#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWGoldNext: TLabel
        Left = 383
        Top = 142
        Width = 71
        Height = 19
        Caption = #1050#1091#1073#1086#1084#1077#1090#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWGoldPrev: TLabel
        Left = 191
        Top = 142
        Width = 71
        Height = 19
        Caption = #1050#1091#1073#1086#1084#1077#1090#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWhot: TLabel
        Left = 21
        Top = 189
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
      object lblWhotExpense: TLabel
        Left = 536
        Top = 189
        Width = 71
        Height = 19
        Caption = #1050#1091#1073#1086#1084#1077#1090#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWhotNext: TLabel
        Left = 383
        Top = 189
        Width = 71
        Height = 19
        Caption = #1050#1091#1073#1086#1084#1077#1090#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWhotPrev: TLabel
        Left = 191
        Top = 189
        Width = 71
        Height = 19
        Caption = #1050#1091#1073#1086#1084#1077#1090#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtApplyPay: TStaticText
        AlignWithMargins = True
        Left = 21
        Top = 4
        Width = 586
        Height = 30
        Margins.Left = 20
        Margins.Right = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkTile
        BevelOuter = bvRaised
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSunken
        Caption = #1048#1089#1087#1086#1083#1085#1077#1085#1080#1077' '#1087#1083#1072#1090#1077#1078#1077#1081
        Color = 6219504
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlDate: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 41
      Align = alTop
      BorderStyle = bsSingle
      Color = 6219504
      ParentBackground = False
      TabOrder = 0
      object dtpPay: TDateTimePicker
        Left = 170
        Top = 3
        Width = 186
        Height = 27
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 2
        Date = 44543.000000000000000000
        Time = 0.470083738422545100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object txtDate: TStaticText
        AlignWithMargins = True
        Left = 102
        Top = 3
        Width = 62
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkTile
        BevelOuter = bvRaised
        BorderStyle = sbsSunken
        Caption = #1044#1072#1090#1072' :'
        Color = clWhite
        DragCursor = crDefault
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnlApply: TPanel
      Left = 1
      Top = 284
      Width = 632
      Height = 180
      Align = alBottom
      BorderStyle = bsSingle
      Color = 15767290
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 290
      object lblAppPay: TLabel
        Left = 16
        Top = 40
        Width = 56
        Height = 20
        Caption = #1055#1083#1072#1090#1077#1078
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblExecute: TLabel
        Left = 566
        Top = 40
        Width = 46
        Height = 20
        Caption = #1057#1091#1084#1084#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblAmount: TLabel
        Left = 290
        Top = 40
        Width = 88
        Height = 20
        Caption = #1048#1089#1087#1086#1083#1085#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDezAmount: TLabel
        Left = 566
        Top = 80
        Width = 52
        Height = 20
        Caption = #1056#1091#1073#1083#1077#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDezApply: TLabel
        Left = 290
        Top = 80
        Width = 43
        Height = 20
        Caption = #1055#1091#1089#1090#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDez: TLabel
        Left = 16
        Top = 80
        Width = 35
        Height = 20
        Caption = #1046#1050#1059
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblMosEn: TLabel
        Left = 16
        Top = 110
        Width = 80
        Height = 20
        Caption = #1052#1086#1089#1069#1085#1077#1088#1075#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblMosEnAmount: TLabel
        Left = 566
        Top = 110
        Width = 52
        Height = 20
        Caption = #1056#1091#1073#1083#1077#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblOnLineApp: TLabel
        Left = 290
        Top = 140
        Width = 43
        Height = 20
        Caption = #1055#1091#1089#1090#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblOnLineAmount: TLabel
        Left = 566
        Top = 140
        Width = 52
        Height = 20
        Caption = #1056#1091#1073#1083#1077#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblMosEnApp: TLabel
        Left = 290
        Top = 110
        Width = 43
        Height = 20
        Caption = #1055#1091#1089#1090#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblOnLine: TLabel
        Left = 16
        Top = 140
        Width = 56
        Height = 20
        Caption = #1055#1083#1072#1090#1077#1078
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object StaticText1: TStaticText
        AlignWithMargins = True
        Left = 16
        Top = 4
        Width = 596
        Height = 30
        Margins.Left = 15
        Margins.Right = 15
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkTile
        BevelOuter = bvRaised
        BorderStyle = sbsSunken
        Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1087#1088#1080#1073#1086#1088#1086#1074' '#1091#1095#1077#1090#1072
        Color = 6219504
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object txtTitle: TStaticText
    AlignWithMargins = True
    Left = 20
    Top = 0
    Width = 594
    Height = 33
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    BevelKind = bkTile
    BevelOuter = bvRaised
    BiDiMode = bdLeftToRight
    BorderStyle = sbsSunken
    Caption = #1051#1080#1089#1090#1086#1082' '#1091#1095#1105#1090#1072' '#1080' '#1086#1087#1083#1072#1090#1099' '#1091#1089#1083#1091#1075
    Color = 15958140
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object mmPayment: TMainMenu
    Left = 8
    object mniFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mniOpenDB: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' '#1041#1044
      end
      object mniFind: TMenuItem
        Caption = #1053#1072#1081#1090#1080' '#1092#1072#1081#1083' '#1041#1044
      end
    end
    object mniShow: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      object mniFormInput: TMenuItem
        Caption = #1060#1086#1088#1084#1072' '#1074#1074#1086#1076#1072' '
        object mniWater: TMenuItem
          Caption = #1057#1095#1105#1090#1095#1080#1082#1080' '#1074#1086#1076#1099
        end
        object mniSupplyMeter: TMenuItem
          Caption = #1069#1083#1077#1082#1090#1088#1086#1089#1095#1105#1090#1095#1080#1082
        end
        object mniApplyPay: TMenuItem
          Caption = #1048#1089#1087#1086#1083#1085#1077#1085#1080#1077' '#1087#1083#1072#1090#1077#1078#1077#1081
        end
      end
      object mniAllTable: TMenuItem
        Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072
      end
    end
    object mniReport: TMenuItem
      Caption = #1054#1090#1095#1105#1090#1099
    end
  end
end
