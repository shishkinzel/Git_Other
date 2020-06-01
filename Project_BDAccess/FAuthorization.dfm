object frmAuthorization: TfrmAuthorization
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 611
  ClientWidth = 1184
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
  object splAutorization: TSplitter
    Left = 0
    Top = 439
    Width = 1184
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 438
  end
  object pnlNav: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 25
    Align = alTop
    TabOrder = 0
    object dbnvgrAuthorization: TDBNavigator
      Left = 1
      Top = 1
      Width = 1182
      Height = 23
      DataSource = dmAccessBD.dsAuthoriz
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlTabPhone: TPanel
    Left = 0
    Top = 25
    Width = 1184
    Height = 414
    Align = alClient
    Caption = 'pnlTabPhone'
    TabOrder = 1
    ExplicitHeight = 413
    object dbgrdAuthorization: TDBGrid
      Left = 1
      Top = 1
      Width = 1182
      Height = 412
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
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Photo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Reference'
          Title.Alignment = taCenter
          Title.Caption = #1057#1089#1099#1083#1082#1072
          Width = 320
          Visible = True
        end>
    end
  end
  object pnlDown: TPanel
    Left = 0
    Top = 441
    Width = 1184
    Height = 170
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1184
      170)
    object lblEdit: TLabel
      Left = 32
      Top = 46
      Width = 124
      Height = 13
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    end
    object lblReview: TLabel
      Left = 32
      Top = 109
      Width = 95
      Height = 13
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1090#1072#1073#1083#1080#1094#1099
    end
    object lblSearchTwo: TLabel
      Left = 383
      Top = 136
      Width = 105
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = #1055#1086#1080#1089#1082#13#10
      WordWrap = True
    end
    object bvlDown: TBevel
      Left = 353
      Top = 1
      Width = 7
      Height = 170
      Anchors = [akLeft, akTop, akBottom]
      ExplicitHeight = 150
    end
    object bvlDownTwo: TBevel
      Left = 841
      Top = 1
      Width = 7
      Height = 171
      Anchors = [akLeft, akTop, akBottom]
      ExplicitHeight = 151
    end
    object btnEdit: TButton
      Left = 194
      Top = 42
      Width = 127
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = btnEditClick
    end
    object btnReview: TButton
      Left = 194
      Top = 97
      Width = 127
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      OnClick = btnReviewClick
    end
    object edtSearchTwo: TEdit
      Left = 520
      Top = 129
      Width = 161
      Height = 21
      TabOrder = 2
    end
    object btnSearc: TButton
      Left = 712
      Top = 129
      Width = 75
      Height = 21
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 3
    end
    object pnlSearch: TPanel
      Left = 393
      Top = 6
      Width = 442
      Height = 117
      TabOrder = 4
      object lblSearhResource: TLabel
        Left = 10
        Top = 73
        Width = 105
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1077#1089#1091#1088#1089
        WordWrap = True
      end
      object lblSearch: TLabel
        Left = 0
        Top = 31
        Width = 105
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '
        WordWrap = True
      end
      object lblTitle: TLabel
        Left = 136
        Top = 4
        Width = 105
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = #1041#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082
        WordWrap = True
      end
      object edtSearch: TEdit
        Left = 127
        Top = 29
        Width = 161
        Height = 21
        TabOrder = 0
      end
      object edtSearchResource: TEdit
        Left = 128
        Top = 71
        Width = 161
        Height = 21
        TabOrder = 1
      end
    end
  end
end
