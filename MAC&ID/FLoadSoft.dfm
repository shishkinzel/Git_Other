object frmFReportLoadSoft: TfrmFReportLoadSoft
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' QR-'#1082#1086#1076#1072' '#1076#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1087#1088#1086#1096#1080#1074#1082#1080
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
  object frPrevLoadSoft: TfrxPreview
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
    ExplicitLeft = 440
    ExplicitTop = 368
    ExplicitWidth = 100
    ExplicitHeight = 100
  end
  object reportLoadSoft: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frPrevLoadSoft
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44539.637803541700000000
    ReportOptions.LastChange = 44551.719066261580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 64
    Datasets = <
      item
        DataSet = dbLoadSoft
        DataSetName = 'frxDBDatasetLoadSoft'
      end
      item
        DataSet = frmFReport.frxdbdtstTitle
        DataSetName = 'frxDBDatasetTitle'
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frmFReport.frxdbdtstTitle
        DataSetName = 'frxDBDatasetTitle'
        RowCount = 0
        object NameDevice: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072' :')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 22.677180000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1064#1072#1075' '#1087#1077#1095#1072#1090#1080' '#1096#1090#1088#1080#1093'-'#1082#1086#1076#1072' :')
        end
        object frxDBDatasetTitleStepPrintBarCode: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'StepPrintBarCode'
          DataSet = frmFReport.frxdbdtstTitle
          DataSetName = 'frxDBDatasetTitle'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetTitle."StepPrintBarCode"]')
        end
        object frxDBDatasetTitlenameDevice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nameDevice'
          DataSet = frmFReport.frxdbdtstTitle
          DataSetName = 'frxDBDatasetTitle'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetTitle."nameDevice"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 234.330860000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = dbLoadSoft
        DataSetName = 'frxDBDatasetLoadSoft'
        RowCount = 0
        object BarCodeMAC: TfrxPictureView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 30.236240000000000000
          Width = 170.078740160000000000
          Height = 170.078740160000000000
          Center = True
          DataField = 'LoadSoft'
          DataSet = dbLoadSoft
          DataSetName = 'frxDBDatasetLoadSoft'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDatasetLoadSoftnumber: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 230.551195750000000000
          DataField = 'number'
          DataSet = dbLoadSoft
          DataSetName = 'frxDBDatasetLoadSoft'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLoadSoft."number"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDatasetLoadSoftMacAndId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 94.488250000000000000
          Width = 442.205010000000000000
          Height = 41.574830000000000000
          DataField = 'MacAndId'
          DataSet = dbLoadSoft
          DataSetName = 'frxDBDatasetLoadSoft'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetLoadSoft."MacAndId"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        object Num: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088)
          ParentFont = False
        end
        object MAC: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'QR-'#1050#1054#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mac&Id')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dbLoadSoft: TfrxDBDataset
    UserName = 'frxDBDatasetLoadSoft'
    CloseDataSource = False
    DataSet = frmMAC.fdmtblLoadSoft
    BCDToCurrency = False
    Left = 32
    Top = 166
  end
end
