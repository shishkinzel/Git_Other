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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mmoShowSoft: TMemo
    Left = 8
    Top = 32
    Width = 538
    Height = 233
    TabOrder = 1
  end
  object btnCount: TButton
    Left = 8
    Top = 290
    Width = 120
    Height = 27
    Caption = #1057#1095#1080#1090#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnCountClick
  end
  object btnApply: TButton
    Left = 426
    Top = 290
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
    TabOrder = 3
  end
  object cbb_rmp: TComboBox
    Left = 216
    Top = 290
    Width = 120
    Height = 27
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 0
    Text = #1056#1052#1055' '#8470'1'
    Visible = False
    OnChange = cbb_rmpChange
    Items.Strings = (
      #1056#1052#1055' '#8470'1'
      #1056#1052#1055' '#8470'2'
      #1056#1052#1055' '#8470'3')
  end
  object mmLoadSoft: TMainMenu
    object mniFileLoadSoft: TMenuItem
      Caption = #1060#1072#1081#1083
      object mniOpenLoadSoft: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = mniOpenLoadSoftClick
      end
      object mniSaveLoadSoft: TMenuItem
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100
        ShortCut = 16467
        OnClick = mniSaveLoadSoftClick
      end
      object mniSeparator1: TMenuItem
        Caption = '-'
      end
      object mniExitLoadSoft: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ShortCut = 16465
        OnClick = mniExitLoadSoftClick
      end
    end
    object mniApplyLoadSoft: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      object mniReadingLostSoft: TMenuItem
        Caption = #1057#1095#1080#1090#1072#1090#1100
        ShortCut = 16449
        OnClick = btnCountClick
      end
      object mniClear: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        ShortCut = 16466
        OnClick = mniClearClick
      end
      object mniSeparator3: TMenuItem
        Caption = '-'
      end
      object mniReset: TMenuItem
        Caption = #1057#1073#1088#1086#1089#1080#1090#1100
        OnClick = mniResetClick
      end
    end
    object mniSettings: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object mniFont: TMenuItem
        Caption = #1064#1088#1080#1092#1090
        OnClick = mniFontClick
      end
      object mniColorBackGround: TMenuItem
        Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
        OnClick = mniColorBackGroundClick
      end
    end
  end
  object dlgSaveLoadSoft: TSaveDialog
    Filter = 
      ' '#1060#1072#1081#1083' '#1076#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' (*.load_txt)|*.load_txt|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt' +
      ')|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)| *.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 32
  end
  object dlgOpenLostSoft: TOpenDialog
    Filter = 
      ' '#1060#1072#1081#1083' '#1076#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' (*.load_txt)|*.load_txt|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt' +
      ')|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)| *.*'
    Left = 64
  end
  object dlgFont: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 104
  end
  object dlgColor: TColorDialog
    Left = 152
  end
end
