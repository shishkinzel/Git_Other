object frmEditPhoneBook: TfrmEditPhoneBook
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1058#1077#1083#1077#1092#1086#1085#1085#1086#1075#1086' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
  ClientHeight = 755
  ClientWidth = 1109
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
  object grpEditPhone: TGroupBox
    Left = 0
    Top = 0
    Width = 1109
    Height = 345
    Align = alTop
    Caption = #1047#1072#1087#1080#1089#1100' '#1085#1086#1074#1086#1075#1086' '#1072#1073#1086#1085#1077#1085#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dbedtName: TDBEdit
      Left = 140
      Top = 40
      Width = 230
      Height = 21
      TabOrder = 0
    end
    object dbedtMobTel: TDBEdit
      Left = 140
      Top = 80
      Width = 230
      Height = 21
      TabOrder = 1
    end
    object dbedtAddress: TDBEdit
      Left = 140
      Top = 136
      Width = 230
      Height = 21
      TabOrder = 2
    end
    object dbedtOther: TDBEdit
      Left = 140
      Top = 184
      Width = 230
      Height = 21
      TabOrder = 3
    end
  end
end
