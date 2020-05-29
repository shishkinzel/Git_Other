object frmAuthorization: TfrmAuthorization
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 806
  ClientWidth = 1204
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
  object pnlDown: TPanel
    Left = 0
    Top = 576
    Width = 1204
    Height = 230
    Align = alBottom
    TabOrder = 0
    object lblSearch: TLabel
      Left = 72
      Top = 24
      Width = 43
      Height = 13
      Caption = 'lblSearch'
    end
    object lblOne: TLabel
      Left = 72
      Top = 59
      Width = 43
      Height = 13
      Caption = 'lblSearch'
    end
    object lblTwo: TLabel
      Left = 72
      Top = 88
      Width = 43
      Height = 13
      Caption = 'lblSearch'
    end
    object dbedtSearch: TDBEdit
      Left = 169
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object dbedtOne: TDBEdit
      Left = 169
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object dbedtTwo: TDBEdit
      Left = 169
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btnSearch: TButton
      Left = 344
      Top = 18
      Width = 75
      Height = 25
      Caption = 'btnSearch'
      TabOrder = 3
    end
    object btnOne: TButton
      Left = 344
      Top = 49
      Width = 75
      Height = 25
      Caption = 'btnSearch'
      TabOrder = 4
    end
    object btnTwo: TButton
      Left = 344
      Top = 80
      Width = 75
      Height = 25
      Caption = 'btnSearch'
      TabOrder = 5
    end
  end
  object pnlNav: TPanel
    Left = 0
    Top = 0
    Width = 1204
    Height = 25
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1191
    object dbnvgrAuthorization: TDBNavigator
      Left = 1
      Top = 1
      Width = 1202
      Height = 23
      DataSource = dmAccessBD.dsAuthoriz
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1189
    end
  end
  object pnlTabPhone: TPanel
    Left = 0
    Top = 25
    Width = 1204
    Height = 560
    Align = alTop
    Caption = 'pnlTabPhone'
    TabOrder = 2
    ExplicitWidth = 1191
    object dbgrdAuthorization: TDBGrid
      Left = 1
      Top = 1
      Width = 1202
      Height = 558
      Align = alClient
      DataSource = dmAccessBD.dsAuthoriz
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Caption = #8470
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FName'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRecource'
          Title.Alignment = taCenter
          Title.Caption = #1056#1077#1089#1091#1088#1089
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FLogin'
          Title.Alignment = taCenter
          Title.Caption = #1051#1086#1075#1080#1085
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPassword'
          Title.Alignment = taCenter
          Title.Caption = #1055#1072#1088#1086#1083#1100
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Others'
          Title.Alignment = taCenter
          Title.Caption = #1044#1088#1091#1075#1080#1077' '#1076#1072#1085#1085#1099#1077
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FComment'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          Width = 323
          Visible = True
        end>
    end
  end
end
