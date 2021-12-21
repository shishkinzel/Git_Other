object frmTestGrid: TfrmTestGrid
  Left = 0
  Top = 0
  Caption = 'Test'
  ClientHeight = 568
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TImage
    Left = 80
    Top = 343
    Width = 465
    Height = 90
    OnClick = img1Click
  end
  object img2: TImage
    Left = 80
    Top = 455
    Width = 465
    Height = 90
    OnClick = img1Click
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 0
    Width = 777
    Height = 73
    DataSource = dstt
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgrd2: TDBGrid
    Left = 0
    Top = 79
    Width = 887
    Height = 90
    DataSource = ds2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object grdLoad: TDBGrid
    Left = 8
    Top = 175
    Width = 879
    Height = 120
    DataSource = dsLoad
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dstt: TDataSource
    DataSet = frmMAC.fdmtblBarCode
    Left = 32
    Top = 368
  end
  object ds2: TDataSource
    DataSet = frmMAC.fdmtblTitle
    Left = 40
    Top = 312
  end
  object dsLoad: TDataSource
    DataSet = frmMAC.fdmtblLoadSoft
    Left = 584
    Top = 504
  end
end
