object frmGen_OR: TfrmGen_OR
  Left = 0
  Top = 0
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' QR-'#1082#1086#1076#1072
  ClientHeight = 781
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frP_Gen_QR: TfrxPreview
    Left = 0
    Top = 0
    Width = 949
    Height = 781
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object frR_Gen_QR: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frP_Gen_QR
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44539.637803541700000000
    ReportOptions.LastChange = 44607.719738425930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 16
    Top = 64
    Datasets = <
      item
        DataSet = dbfr_Gen_QR
        DataSetName = 'frxDB_Gen_QR'
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
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 298.582870000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = dbfr_Gen_QR
        DataSetName = 'frxDB_Gen_QR'
        RowCount = 0
        object NameDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1073#1086#1095#1077#1077' '#1084#1077#1089#1090#1086' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [DATE] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_Gen_QROther: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 257.008040000000000000
          Height = 26.456710000000000000
          DataField = 'Other'
          DataSet = dbfr_Gen_QR
          DataSetName = 'frxDB_Gen_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Gen_QR."Other"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 287.244280000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090#1080#1074#1072#1094#1080#1103' USB-blaster'
            'ap-map')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 52.913420000000000000
          Width = 52.913385830000000000
          Height = 52.913385830000000000
          AutoSize = True
          Center = True
          DataField = 'usb'
          DataSet = dbfr_Gen_QR
          DataSetName = 'frxDB_Gen_QR'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 204.094620000000000000
          Width = 287.244280000000000000
          Height = 64.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090#1080#1074#1072#1094#1080#1103' pyton'
            'pyenv activate ap-dev')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture3: TfrxPictureView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 211.653680000000000000
          Width = 52.913385830000000000
          Height = 52.913385830000000000
          AutoSize = True
          Center = True
          DataField = 'pyton'
          DataSet = dbfr_Gen_QR
          DataSetName = 'frxDB_Gen_QR'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 978.898270000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 532.913730000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        DataSet = dbfr_Gen_QR
        DataSetName = 'frxDB_Gen_QR'
        RowCount = 0
        object frxDB_Gen_QRQR_Text_string: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 419.527830000000000000
          Height = 476.220780000000000000
          DataField = 'QR_Text_string'
          DataSet = dbfr_Gen_QR
          DataSetName = 'frxDB_Gen_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_Gen_QR."QR_Text_string"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 113.385900000000000000
          Width = 275.905690000000000000
          Height = 302.362400000000000000
          AutoSize = True
          Center = True
          DataField = 'QR_Text_Blob'
          DataSet = dbfr_Gen_QR
          DataSetName = 'frxDB_Gen_QR'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = -3.779530000000000000
          Width = 419.527830000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1089#1090' '#1076#1083#1103' QR-'#1082#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = -3.779530000000000000
          Width = 298.582870000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'QR-'#1050#1054#1044)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dbfr_Gen_QR: TfrxDBDataset
    UserName = 'frxDB_Gen_QR'
    CloseDataSource = False
    DataSet = frmMAC.fmTab_Gen_OR
    BCDToCurrency = False
    Left = 24
    Top = 150
  end
  object fr_Gen_QR_Ex_DOC: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 24
    Top = 230
  end
  object fr_Gen_QR_Ex_PDF: TfrxPDFExport
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
    Left = 32
    Top = 310
  end
  object fr_Gen_QR_Ex_XML: TfrxXMLExport
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
    Left = 32
    Top = 390
  end
end
