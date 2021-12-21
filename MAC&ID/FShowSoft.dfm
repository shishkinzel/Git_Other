object frmShowSoft: TfrmShowSoft
  Left = 0
  Top = 0
  Caption = #1054#1082#1085#1086' '#1074#1074#1086#1076#1072' '#1090#1077#1082#1089#1090#1072
  ClientHeight = 327
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmLoadSoft
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmoShowSoft: TMemo
    Left = 8
    Top = 32
    Width = 538
    Height = 233
    TabOrder = 0
  end
  object btnCount: TButton
    Left = 8
    Top = 292
    Width = 120
    Height = 27
    Caption = #1057#1095#1080#1090#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnCountClick
  end
  object btnApply: TButton
    Left = 426
    Top = 288
    Width = 120
    Height = 27
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 8
    ParentFont = False
    TabOrder = 2
  end
  object mmLoadSoft: TMainMenu
    object mniFileLoadSoft: TMenuItem
      Caption = #1060#1072#1081#1083
      object mniOpenLoadSoft: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object mniSaveLoadSoft: TMenuItem
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      end
      object mniSeparator1: TMenuItem
        Caption = '-'
      end
      object mniExitLoadSoft: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = mniExitLoadSoftClick
      end
    end
    object mniApplyLoadSoft: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      object mniReadingLostSoft: TMenuItem
        Caption = #1057#1095#1080#1090#1072#1090#1100
        OnClick = btnCountClick
      end
    end
  end
  object dlgSaveLoadSoft: TSaveDialog
    Left = 32
  end
  object dlgOpenLostSoft: TOpenDialog
    Left = 64
  end
end
