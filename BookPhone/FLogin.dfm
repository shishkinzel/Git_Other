object frmLog: TfrmLog
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 224
  ClientWidth = 245
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitle: TLabel
    Left = 16
    Top = 8
    Width = 200
    Height = 19
    Caption = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1072#1074#1090#1086#1088#1080#1079#1091#1081#1090#1077#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblLog: TLabel
    Left = 16
    Top = 38
    Width = 35
    Height = 16
    Caption = #1051#1086#1075#1080#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPass: TLabel
    Left = 16
    Top = 96
    Width = 43
    Height = 16
    Caption = #1055#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtLog: TEdit
    Left = 16
    Top = 60
    Width = 200
    Height = 21
    TabOrder = 0
  end
  object edtPass: TEdit
    Left = 16
    Top = 118
    Width = 200
    Height = 21
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = #1042#1099#1081#1090#1080
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnOK: TButton
    Left = 141
    Top = 160
    Width = 75
    Height = 25
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 3
    OnClick = btnOKClick
  end
end
