object frmEditing: TfrmEditing
  Left = 0
  Top = 0
  Caption = #1058#1072#1073#1083#1080#1094#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1082#1072#1079#1072#1085#1080#1081
  ClientHeight = 730
  ClientWidth = 1035
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
  object nvgEditing: TDBNavigator
    Left = 0
    Top = 0
    Width = 1035
    Height = 25
    DataSource = dsEditing
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 208
    ExplicitTop = 112
    ExplicitWidth = 240
  end
  object grdEditing: TDBGrid
    Left = 0
    Top = 25
    Width = 1035
    Height = 705
    Align = alClient
    DataSource = dsEditing
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsEditing: TDataSource
    DataSet = dmPayment.fmTabPayAndRecord
    Left = 16
    Top = 440
  end
end
