object frmEditPhoneBook: TfrmEditPhoneBook
  Left = 0
  Top = 0
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 487
  ClientWidth = 755
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
  object grpEditPhone: TGroupBox
    Left = 0
    Top = 0
    Width = 755
    Height = 489
    Align = alTop
    Caption = #1047#1072#1087#1080#1089#1100' '#1085#1086#1074#1086#1075#1086' '#1072#1073#1086#1085#1077#1085#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblName: TLabel
      Left = 16
      Top = 56
      Width = 74
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103' '#1080' '#1080#1084#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblMobTel: TLabel
      Left = 16
      Top = 91
      Width = 105
      Height = 13
      Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblAddress: TLabel
      Left = 16
      Top = 147
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblOther: TLabel
      Left = 16
      Top = 195
      Width = 37
      Height = 13
      Caption = #1055#1088#1086#1095#1077#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblComment: TLabel
      Left = 16
      Top = 238
      Width = 67
      Height = 13
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblPhoto: TLabel
      Left = 408
      Top = 29
      Width = 77
      Height = 13
      Caption = #1060#1086#1090#1086' '#1072#1073#1086#1085#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblReference: TLabel
      Left = 408
      Top = 379
      Width = 89
      Height = 13
      Caption = #1057#1089#1099#1083#1082#1072' '#1072#1073#1086#1085#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbedtName: TDBEdit
      Left = 132
      Top = 48
      Width = 230
      Height = 21
      DataField = 'FName'
      DataSource = dmAccessBD.dsPhoneBook
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbedtMobTel: TDBEdit
      Left = 132
      Top = 88
      Width = 230
      Height = 21
      DataField = 'MobTel'
      DataSource = dmAccessBD.dsPhoneBook
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 1
    end
    object dbedtAddress: TDBEdit
      Left = 132
      Top = 144
      Width = 230
      Height = 21
      DataField = 'Address'
      DataSource = dmAccessBD.dsPhoneBook
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbedtOther: TDBEdit
      Left = 132
      Top = 192
      Width = 230
      Height = 21
      DataField = 'Others'
      DataSource = dmAccessBD.dsPhoneBook
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbmmoComment: TDBMemo
      Left = 132
      Top = 235
      Width = 230
      Height = 190
      DataField = 'FComment'
      DataSource = dmAccessBD.dsPhoneBook
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbnvgrPhone: TDBNavigator
      Left = 0
      Top = 456
      Width = 752
      Height = 25
      DataSource = dmAccessBD.dsPhoneBook
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object dbimgPhoto: TDBImage
      Left = 408
      Top = 48
      Width = 313
      Height = 273
      DataField = 'Photo'
      DataSource = dmAccessBD.dsPhoneBook
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Proportional = True
      Stretch = True
      TabOrder = 6
    end
    object btnPhoto: TButton
      Left = 646
      Top = 336
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnPhotoClick
    end
    object dbedtReference: TDBEdit
      Left = 408
      Top = 404
      Width = 313
      Height = 21
      DataField = 'Reference'
      DataSource = dmAccessBD.dsPhoneBook
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnChange = dbedtReferenceChange
    end
  end
  object dlgOpenPicPhoto: TOpenPictureDialog
    Left = 424
    Top = 72
  end
end
