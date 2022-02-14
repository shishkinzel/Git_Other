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
  object dbgrd1: TDBGrid
    Left = 0
    Top = 0
    Width = 585
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
    Width = 569
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
    Width = 529
    Height = 120
    DataSource = dsLoad
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object grdIDandMAC: TDBGrid
    Left = 0
    Top = 301
    Width = 377
    Height = 68
    DataSource = dsIDandMAC
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object grdGen_OR: TDBGrid
    Left = 0
    Top = 375
    Width = 657
    Height = 66
    DataSource = dsGen_OR
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dstt: TDataSource
    DataSet = frmMAC.fdmtblBarCode
    Left = 120
    Top = 520
  end
  object ds2: TDataSource
    DataSet = frmMAC.fdmtblTitle
    Left = 8
    Top = 512
  end
  object dsLoad: TDataSource
    DataSet = frmMAC.fdmtblLoadSoft
    Left = 64
    Top = 512
  end
  object dsIDandMAC: TDataSource
    DataSet = frmMAC.fdIDandMAC
    Left = 192
    Top = 528
  end
  object dsGen_OR: TDataSource
    DataSet = frmMAC.fmTab_Gen_OR
    Left = 264
    Top = 504
  end
end
