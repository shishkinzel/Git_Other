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
  object frxdbdtstLast: TfrxDBDataset
    UserName = 'frxDBDatasetMac'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Number=Number'
      'MAC - adress=MAC - adress'
      'id - number=id - number'
      '-nameDevice=nameDevice'
      '-firstOrderBit='#1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1052#1040#1057'-'#1072#1076#1088#1077#1089
      '-stepIterator='#1064#1072#1075' '#1080#1090#1077#1088#1072#1094#1080#1080
      '-firstIdDevice='#1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1089#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      '-quantityDevice='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1086#1084#1087#1083#1077#1082#1090#1086#1074)
    DataSet = frmMAC.fdmtblMac
    BCDToCurrency = False
    Left = 16
    Top = 126
  end
  object frxdbdtstTitle: TfrxDBDataset
    UserName = 'frxDBDatasetTitle'
    CloseDataSource = False
    DataSet = frmMAC.fdmtblTitle
    BCDToCurrency = False
    Left = 16
    Top = 198
  end
  object frxrprtMac: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    Preview = frxprvwMac
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44525.630604537000000000
    ReportOptions.LastChange = 44529.623948958330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 168
    Top = 48
    Datasets = <
      item
        DataSet = frxdbdtstLast
        DataSetName = 'frxDBDatasetMac'
      end
      item
        DataSet = frxdbdtstTitle
        DataSetName = 'frxDBDatasetTitle'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      VGuides.Strings = (
        '29')
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstTitle
        DataSetName = 'frxDBDatasetTitle'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103':')
          ParentFont = False
        end
        object frxDBDatasetTitlefirstOrderBit: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 37.795300000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataField = 'firstOrderBit'
          DataSet = frxdbdtstTitle
          DataSetName = 'frxDBDatasetTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetTitle."firstOrderBit"]')
          ParentFont = False
        end
        object frxDBDatasetTitlefirstIdDevice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 71.811070000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataField = 'firstIdDevice'
          DataSet = frxdbdtstTitle
          DataSetName = 'frxDBDatasetTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetTitle."firstIdDevice"]')
          ParentFont = False
        end
        object frxDBDatasetTitlenameDevice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 7.559060000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          DataField = 'nameDevice'
          DataSet = frxdbdtstTitle
          DataSetName = 'frxDBDatasetTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetTitle."nameDevice"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 2.543290000000000000
          Top = 102.047310000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1064#1072#1075' '#1080#1090#1077#1088#1072#1094#1080#1080':')
          ParentFont = False
        end
        object frxDBDatasetTitlestepIterator: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'stepIterator'
          DataSet = frxdbdtstTitle
          DataSetName = 'frxDBDatasetTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetTitle."stepIterator"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 102.047310000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074':')
          ParentFont = False
        end
        object frxDBDatasetTitlequantityDevice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 102.047310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'quantityDevice'
          DataSet = frxdbdtstTitle
          DataSetName = 'frxDBDatasetTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetTitle."quantityDevice"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1089#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1082#1086#1084#1087#1083#1077#1082#1090#1072':')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1099#1081' MAC-'#1072#1076#1088#1077#1089' '#1082#1086#1084#1087#1083#1077#1082#1090#1072':')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 298.582870000000000000
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAC - '#1072#1076#1088#1077#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1082#1086#1084#1087#1083#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstLast
        DataSetName = 'frxDBDatasetMac'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 2.543290000000000000
          Width = 714.331170000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 5 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clAqua
          Highlight.Frame.Typ = []
        end
        object frxDBDatasetMacNumber: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DataField = 'Number'
          DataSet = frxdbdtstLast
          DataSetName = 'frxDBDatasetMac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetMac."Number"]')
          ParentFont = False
        end
        object frxDBDatasetMacMACadress: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          DataField = 'MAC - adress'
          DataSet = frxdbdtstLast
          DataSetName = 'frxDBDatasetMac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetMac."MAC - adress"]')
          ParentFont = False
        end
        object frxDBDatasetMacidnumber: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          DataField = 'id - number'
          DataSet = frxdbdtstLast
          DataSetName = 'frxDBDatasetMac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetMac."id - number"]')
          ParentFont = False
        end
      end
    end
  end
end
