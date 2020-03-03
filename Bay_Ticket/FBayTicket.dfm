object frmBayTicket: TfrmBayTicket
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1086#1082#1091#1087#1082#1072' '#1073#1080#1083#1077#1090#1086#1074
  ClientHeight = 300
  ClientWidth = 564
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
  object lbl1: TLabel
    Left = 184
    Top = 8
    Width = 170
    Height = 13
    Caption = #1056#1072#1089#1095#1105#1090' '#1074#1088#1077#1084#1077#1085#1080' '#1087#1086#1082#1091#1087#1082#1080' '#1073#1080#1083#1077#1090#1086#1074
  end
  object lbl2: TLabel
    Left = 33
    Top = 56
    Width = 72
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1090#1098#1077#1079#1076#1072
  end
  object lbl3: TLabel
    Left = 25
    Top = 112
    Width = 139
    Height = 13
    Caption = #1047#1072' '#1082#1072#1082#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1091#1090#1086#1082
  end
  object lbl4: TLabel
    Left = 33
    Top = 160
    Width = 71
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1086#1082#1091#1087#1082#1080
  end
  object btnExit: TButton
    Left = 34
    Top = 216
    Width = 75
    Height = 25
    Caption = #1042#1099#1081#1090#1080
    TabOrder = 0
  end
  object btnStart: TButton
    Left = 338
    Top = 216
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 1
  end
  object edtDate: TEdit
    Left = 203
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object clndrpckrDeparture: TCalendarPicker
    Left = 184
    Top = 48
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'select a date'
  end
  object clndrpckrBay: TCalendarPicker
    Left = 184
    Top = 160
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = 'select a date'
  end
end
