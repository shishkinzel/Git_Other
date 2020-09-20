object frmEditIni: TfrmEditIni
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' ini '#1092#1072#1081#1083#1072
  ClientHeight = 603
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grpFileIni: TGroupBox
    Left = 0
    Top = 0
    Width = 712
    Height = 603
    Align = alClient
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -1
    object btnDelete: TButton
      Left = 574
      Top = 433
      Width = 120
      Height = 25
      Caption = 'btnDelete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 574
      Top = 319
      Width = 120
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 8
      ParentFont = False
      TabOrder = 1
    end
    object btnStart: TButton
      Left = 575
      Top = 374
      Width = 120
      Height = 25
      Caption = 'btnStart'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object lbledtFind: TLabeledEdit
      Left = 9
      Top = 505
      Width = 518
      Height = 21
      EditLabel.Width = 86
      EditLabel.Height = 16
      EditLabel.Caption = #1042#1099#1073#1088#1072#1085#1085#1072#1103' '#1041#1044
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object lstEditIni: TListBox
      Left = 7
      Top = 23
      Width = 511
      Height = 453
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
    end
  end
end
