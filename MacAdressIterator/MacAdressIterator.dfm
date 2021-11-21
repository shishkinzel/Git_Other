object frmMAC: TfrmMAC
  Left = 0
  Top = 0
  Caption = 'MacAdress'
  ClientHeight = 402
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitle: TLabel
    Left = 171
    Top = 8
    Width = 203
    Height = 23
    Caption = 'MAC - '#1072#1076#1088#1077#1089#1089' '#1080#1090#1077#1088#1072#1090#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    StyleName = 'lblName'
  end
  object lblMAC: TLabel
    Left = 22
    Top = 96
    Width = 116
    Height = 23
    Caption = 'MAC - '#1072#1076#1088#1077#1089#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblID: TLabel
    Left = 361
    Top = 96
    Width = 150
    Height = 23
    Caption = #1047#1072#1074#1086#1076#1089#1082#1086#1081' '#1085#1086#1084#1077#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDevice: TLabel
    Left = 47
    Top = 56
    Width = 192
    Height = 19
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    StyleName = 'lblName'
  end
  object lblModule: TLabel
    Left = 361
    Top = 156
    Width = 141
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDate: TLabel
    Left = 361
    Top = 198
    Width = 90
    Height = 16
    Caption = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblNumber: TLabel
    Left = 361
    Top = 277
    Width = 115
    Height = 16
    Caption = #1053#1086#1084#1077#1088' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblGruop: TLabel
    Left = 361
    Top = 235
    Width = 149
    Height = 16
    Caption = #1056#1077#1075#1091#1083#1080#1088#1086#1074#1086#1095#1085#1072#1103' '#1087#1072#1088#1090#1080#1103' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblHighOrderBit: TLabel
    Left = 16
    Top = 157
    Width = 96
    Height = 19
    Caption = 'FF : FF : FF : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblColon_1: TLabel
    Left = 142
    Top = 157
    Width = 6
    Height = 19
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 178
    Top = 156
    Width = 6
    Height = 19
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblStepIterator: TLabel
    Left = 16
    Top = 229
    Width = 142
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1096#1072#1075' '#1080#1090#1077#1088#1072#1094#1080#1080' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblQuantity: TLabel
    Left = 16
    Top = 277
    Width = 190
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtDevice: TEdit
    Left = 256
    Top = 53
    Width = 297
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object medtModule: TMaskEdit
    Left = 521
    Top = 150
    Width = 32
    Height = 27
    EditMask = '000;1;*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 1
    Text = '   '
  end
  object medtDate: TMaskEdit
    Left = 521
    Top = 192
    Width = 32
    Height = 27
    EditMask = '000;1;*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 2
    Text = '   '
  end
  object medtGroup: TMaskEdit
    Left = 521
    Top = 229
    Width = 32
    Height = 27
    EditMask = '000;1;*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 3
    Text = '   '
  end
  object medtNumber: TMaskEdit
    Left = 521
    Top = 271
    Width = 32
    Height = 27
    EditMask = '000;1;*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 4
    Text = '   '
  end
  object medtBit_4: TMaskEdit
    Left = 116
    Top = 153
    Width = 22
    Height = 27
    EditMask = 'AA;0;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    ParentFont = False
    TabOrder = 5
    Text = ''
  end
  object medtBit_5: TMaskEdit
    Left = 152
    Top = 153
    Width = 22
    Height = 27
    EditMask = 'AA;0;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    ParentFont = False
    TabOrder = 6
    Text = ''
  end
  object medtBit_6: TMaskEdit
    Left = 188
    Top = 153
    Width = 22
    Height = 27
    EditMask = 'AA;0;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    ParentFont = False
    TabOrder = 7
    Text = ''
  end
  object btnStart: TButton
    Left = 333
    Top = 336
    Width = 220
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1090#1095#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object btnApplay: TButton
    Left = 16
    Top = 336
    Width = 220
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btnApplayClick
  end
  object seStepIterator: TSpinEdit
    Left = 227
    Top = 223
    Width = 55
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    MaxValue = 99
    MinValue = 1
    ParentFont = False
    TabOrder = 10
    Value = 0
  end
  object seQuantity: TSpinEdit
    Left = 227
    Top = 271
    Width = 55
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    MaxValue = 999
    MinValue = 1
    ParentFont = False
    TabOrder = 11
    Value = 1
  end
end
