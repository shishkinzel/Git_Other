object frmPaymentDocuments: TfrmPaymentDocuments
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1090#1077#1078#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
  ClientHeight = 461
  ClientWidth = 584
  Color = clBtnFace
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
    Top = 40
    Width = 584
    Height = 421
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 264
    ExplicitTop = 176
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlDate: TPanel
      Left = 1
      Top = 1
      Width = 582
      Height = 41
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 0
    end
    object pnlApply: TPanel
      Left = 1
      Top = 240
      Width = 582
      Height = 180
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 1
    end
    object pnlShow: TPanel
      Left = 1
      Top = 42
      Width = 582
      Height = 198
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 36
    end
  end
  object txtTitle: TStaticText
    Left = 0
    Top = 0
    Width = 584
    Height = 40
    Align = alTop
    Alignment = taCenter
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvRaised
    BiDiMode = bdLeftToRight
    BorderStyle = sbsSingle
    Caption = #1051#1080#1089#1090#1086#1082' '#1091#1095#1105#1090#1072' '#1080' '#1086#1087#1083#1072#1090#1099' '#1091#1089#1083#1091#1075
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 183
  end
  object mmPayment: TMainMenu
    Left = 8
    Top = 8
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
