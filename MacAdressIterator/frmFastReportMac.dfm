object frmFReport: TfrmFReport
  Left = 0
  Top = 0
  Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072
  ClientHeight = 738
  ClientWidth = 817
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
  object frxprvwMac: TfrxPreview
    Left = 0
    Top = 0
    Width = 817
    Height = 738
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
    ExplicitLeft = 152
    ExplicitTop = 8
  end
  object frxrprtMac: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxprvwMac
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44524.704490381900000000
    ReportOptions.LastChange = 44524.950942430560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 88
    Datasets = <
      item
        DataSet = frxdbdtstMac
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072)
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 653.858690000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstMac
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Number: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'Number'
          DataSet = frxdbdtstMac
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Number"]')
        end
        object frxDBDataset1MACadress: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'MAC - adress'
          DataSet = frxdbdtstMac
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MAC - adress"]')
        end
        object frxDBDataset1idnumber: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'id - number'
          DataSet = frxdbdtstMac
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."id - number"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 816.378480000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 7.559060000000000000
        Top = 56.692950000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088)
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 60.472480000000000000
        Width = 264.567100000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          'MAC-'#1072#1076#1088#1077#1089)
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 419.527830000000000000
        Top = 60.472480000000000000
        Width = 294.803340000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088' '#1082#1086#1084#1087#1083#1077#1082#1090#1072)
      end
    end
  end
  object frxmlxprtMac: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 8
    Top = 54
  end
  object frxpdfxprtMac: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 80
    Top = 54
  end
  object frxdcxprtMac: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 48
    Top = 54
  end
  object frxdbdtstMac: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = frmMAC.fdmtblMac
    BCDToCurrency = False
    Left = 16
    Top = 158
  end
end
