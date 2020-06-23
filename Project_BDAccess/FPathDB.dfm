object frmPathDB: TfrmPathDB
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1080#1089#1086#1082' '#1073#1072#1079' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 429
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancel: TButton
    Left = 640
    Top = 247
    Width = 144
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 0
  end
  object btnStart: TButton
    Left = 640
    Top = 312
    Width = 143
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    TabOrder = 1
    OnClick = btnStartClick
  end
  object lbledtChoice: TLabeledEdit
    Left = 13
    Top = 370
    Width = 620
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1099#1073#1088#1072#1085#1085#1072#1103' '#1041#1044
    LabelSpacing = 5
    TabOrder = 2
  end
  object lstPath: TListBox
    Left = 11
    Top = 31
    Width = 624
    Height = 314
    ItemHeight = 13
    TabOrder = 3
    OnDblClick = lstPathDblClick
  end
end
