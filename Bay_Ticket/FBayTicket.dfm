object frmBayTicket: TfrmBayTicket
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1086#1082#1091#1087#1082#1072' '#1073#1080#1083#1077#1090#1086#1074
  ClientHeight = 235
  ClientWidth = 260
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
    Left = 8
    Top = 8
    Width = 245
    Height = 19
    Caption = #1056#1072#1089#1095#1105#1090' '#1074#1088#1077#1084#1077#1085#1080' '#1087#1086#1082#1091#1087#1082#1080' '#1073#1080#1083#1077#1090#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 48
    Width = 80
    Height = 16
    Caption = #1044#1072#1090#1072' '#1086#1090#1098#1077#1079#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 109
    Width = 157
    Height = 16
    Caption = #1047#1072' '#1082#1072#1082#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1091#1090#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 152
    Width = 79
    Height = 16
    Caption = #1044#1072#1090#1072' '#1087#1086#1082#1091#1087#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object btnExit: TButton
    Left = 8
    Top = 192
    Width = 75
    Height = 24
    Caption = #1042#1099#1081#1090#1080
    TabOrder = 0
    OnClick = btnExitClick
  end
  object btnStart: TButton
    Left = 174
    Top = 192
    Width = 75
    Height = 24
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 1
    OnClick = btnStartClick
  end
  object edtDate: TEdit
    Left = 184
    Top = 106
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = #1057#1091#1090#1082#1080
    OnKeyPress = edtDateKeyPress
  end
  object clndrpckrDeparture: TCalendarPicker
    Left = 112
    Top = 48
    Height = 24
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
    OnChange = clndrpckrDepartureChange
    ParentFont = False
    TabOrder = 3
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
  end
  object clndrpckrBay: TCalendarPicker
    Left = 109
    Top = 152
    Height = 24
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
    Visible = False
  end
end
