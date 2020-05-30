object frmPhoneBook: TfrmPhoneBook
  Left = 0
  Top = 0
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 795
  ClientWidth = 1191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlNav: TPanel
    Left = 0
    Top = 0
    Width = 1191
    Height = 25
    Align = alTop
    TabOrder = 0
    object dbnvgrPhoneBook: TDBNavigator
      Left = 1
      Top = 1
      Width = 1189
      Height = 23
      DataSource = dmAccessBD.dsPhoneBook
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlTabPhone: TPanel
    Left = 0
    Top = 25
    Width = 1191
    Height = 560
    Align = alTop
    Caption = 'pnlTabPhone'
    TabOrder = 1
    object dbgrdPhoneBook: TDBGrid
      Left = 1
      Top = 1
      Width = 1189
      Height = 558
      Align = alClient
      DataSource = dmAccessBD.dsPhoneBook
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
          FieldName = 'MobTel'
          Title.Alignment = taCenter
          Title.Caption = #1052#1086#1073'. '#1090#1077#1083#1077#1092#1086#1085
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Title.Alignment = taCenter
          Title.Caption = #1040#1076#1088#1077#1089
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Others'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1086#1095#1077#1077
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FComment'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          Width = 407
          Visible = True
        end>
    end
  end
  object pnlDown: TPanel
    Left = 0
    Top = 585
    Width = 1191
    Height = 210
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 590
    object lblSearch: TLabel
      Left = 400
      Top = 19
      Width = 124
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072
    end
    object lblOne: TLabel
      Left = 32
      Top = 21
      Width = 124
      Height = 13
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    end
    object lblScan: TLabel
      Left = 32
      Top = 84
      Width = 95
      Height = 13
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1090#1072#1073#1083#1080#1094#1099
    end
    object btnEdit: TButton
      Left = 194
      Top = 17
      Width = 127
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = btnEditClick
    end
    object btnTwo: TButton
      Left = 194
      Top = 72
      Width = 127
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      OnClick = btnTwoClick
    end
    object edtSearch: TEdit
      Left = 544
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = edtSearchChange
    end
  end
end
