object dmPayment: TdmPayment
  OldCreateOrder = False
  Height = 488
  Width = 665
  object fmTabPayAndRecord: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'number'
        DataType = ftInteger
      end
      item
        Name = 'date'
        DataType = ftDate
      end
      item
        Name = 'lightPrev'
        DataType = ftInteger
      end
      item
        Name = 'lightNext'
        DataType = ftInteger
      end
      item
        Name = 'lightExpense'
        DataType = ftInteger
      end
      item
        Name = 'WaterColdPrev'
        DataType = ftInteger
      end
      item
        Name = 'WaterColdNext'
        DataType = ftInteger
      end
      item
        Name = 'WaterColdExpense'
        DataType = ftInteger
      end
      item
        Name = 'WaterHotPrev'
        DataType = ftInteger
      end
      item
        Name = 'WaterHotNext'
        DataType = ftInteger
      end
      item
        Name = 'WaterHotExpense'
        DataType = ftInteger
      end
      item
        Name = 'DezSum'
        DataType = ftInteger
      end
      item
        Name = 'MosEn'
        DataType = ftInteger
      end
      item
        Name = 'onLime'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 56
    Top = 8
    object fmTabPayAndRecordnumber: TIntegerField
      FieldName = 'number'
    end
    object fmTabPayAndRecorddate: TDateField
      FieldName = 'date'
    end
    object fmTabPayAndRecordlightPrev: TIntegerField
      FieldName = 'lightPrev'
    end
    object fmTabPayAndRecordlightNext: TIntegerField
      FieldName = 'lightNext'
    end
    object fmTabPayAndRecordlightExpense: TIntegerField
      FieldName = 'lightExpense'
    end
    object fmTabPayAndRecordWaterColdPrev: TIntegerField
      FieldName = 'WaterColdPrev'
    end
    object fmTabPayAndRecordWaterColdNext: TIntegerField
      FieldName = 'WaterColdNext'
    end
    object fmTabPayAndRecordWaterColdExpense: TIntegerField
      FieldName = 'WaterColdExpense'
    end
    object fmTabPayAndRecordWaterHotPrev: TIntegerField
      FieldName = 'WaterHotPrev'
    end
    object fmTabPayAndRecordWaterHotNext: TIntegerField
      FieldName = 'WaterHotNext'
    end
    object fmTabPayAndRecordWaterHotExpense: TIntegerField
      FieldName = 'WaterHotExpense'
    end
    object fmTabPayAndRecordDezSum: TIntegerField
      FieldName = 'DezSum'
    end
    object fmTabPayAndRecordMosEn: TIntegerField
      FieldName = 'MosEn'
    end
    object fmTabPayAndRecordonLime: TIntegerField
      FieldName = 'onLime'
    end
  end
  object fmTabSummaryTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'number'
        DataType = ftInteger
      end
      item
        Name = 'date'
        DataType = ftDate
      end
      item
        Name = 'lightMeterReading'
        DataType = ftInteger
      end
      item
        Name = 'lightExpense'
        DataType = ftInteger
      end
      item
        Name = 'waterColdMeterReading'
        DataType = ftInteger
      end
      item
        Name = 'waterColdExpense'
        DataType = ftInteger
      end
      item
        Name = 'waterHotMeterReading'
        DataType = ftInteger
      end
      item
        Name = 'waterHotExpense'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 56
    Top = 56
    object fmTabSummaryTablenumber: TIntegerField
      FieldName = 'number'
    end
    object fmTabSummaryTabledate: TDateField
      FieldName = 'date'
    end
    object fmTabSummaryTablelightMeterReading: TIntegerField
      FieldName = 'lightMeterReading'
    end
    object fmTabSummaryTablelightExpense: TIntegerField
      FieldName = 'lightExpense'
    end
    object fmTabSummaryTablewaterColdMeterReading: TIntegerField
      FieldName = 'waterColdMeterReading'
    end
    object fmTabSummaryTablewaterColdExpense: TIntegerField
      FieldName = 'waterColdExpense'
    end
    object fmTabSummaryTablewaterHotMeterReading: TIntegerField
      FieldName = 'waterHotMeterReading'
    end
    object fmTabSummaryTablewaterHotExpense: TIntegerField
      FieldName = 'waterHotExpense'
    end
  end
end
