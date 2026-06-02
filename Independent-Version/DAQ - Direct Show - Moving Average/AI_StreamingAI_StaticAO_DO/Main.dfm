object MainForm: TMainForm
  Left = 17
  Top = 106
  Width = 1829
  Height = 992
  Caption = 'Advanced DAQ'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DataView: TPaintBox
    Left = 1901
    Top = 38
    Width = 843
    Height = 182
    Color = clBlack
    ParentColor = False
    Visible = False
  end
  object Label1: TLabel
    Left = 2296
    Top = 318
    Width = 85
    Height = 13
    AutoSize = False
    Caption = 'Color of channels:'
    Visible = False
  end
  object Label2: TLabel
    Left = 1913
    Top = 459
    Width = 25
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Div:'
    Visible = False
  end
  object divTimeLabel: TLabel
    Left = 1915
    Top = 436
    Width = 16
    Height = 13
    Caption = 'ms'
    Visible = False
  end
  object xRLabel: TLabel
    Left = 1918
    Top = 510
    Width = 47
    Height = 13
    Caption = 'xRLabel'
    Visible = False
  end
  object xLLabel: TLabel
    Left = 1925
    Top = 484
    Width = 45
    Height = 13
    Caption = 'xLLabel'
    Visible = False
  end
  object yTLabel: TLabel
    Left = 1918
    Top = 581
    Width = 46
    Height = 13
    Caption = 'yTLabel'
    Visible = False
  end
  object yMLabel: TLabel
    Left = 1918
    Top = 562
    Width = 48
    Height = 13
    Caption = 'yMLabel'
    Visible = False
  end
  object yBLabel: TLabel
    Left = 1918
    Top = 536
    Width = 46
    Height = 13
    Caption = 'yBLabel'
    Visible = False
  end
  object Label3: TLabel
    Left = 1925
    Top = 648
    Width = 39
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Label6: TLabel
    Left = 1914
    Top = 608
    Width = 39
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object Label11: TLabel
    Left = 1917
    Top = 672
    Width = 46
    Height = 13
    Caption = 'Label11'
    Visible = False
  end
  object Label12: TLabel
    Left = 1280
    Top = 912
    Width = 46
    Height = 13
    Caption = 'Label12'
  end
  object chanDataList: TListView
    Left = 2098
    Top = 270
    Width = 377
    Height = 50
    Columns = <
      item
        Width = 0
      end
      item
        Width = 46
      end
      item
        Width = 46
      end
      item
        Width = 46
      end
      item
        Width = 46
      end
      item
        Width = 46
      end
      item
        Width = 46
      end
      item
        Width = 46
      end
      item
        Width = 46
      end>
    GridLines = True
    ShowColumnHeaders = False
    TabOrder = 0
    ViewStyle = vsReport
    Visible = False
    OnCustomDrawSubItem = chanDataListCustomDrawSubItem
  end
  object divTrackBar: TTrackBar
    Left = 2061
    Top = 228
    Width = 506
    Height = 32
    Max = 1000
    Min = 10
    Frequency = 100
    Position = 500
    TabOrder = 1
    Visible = False
    OnChange = divTrackBarChange
  end
  object BufferedAiCtrl1: TBufferedAiCtrl
    Left = 1340
    Top = 47
    Width = 32
    Height = 32
    OnDataReady = BufferedAiCtrl1DataReady
    OnOverrun = BufferedAiCtrl1Overrun
    OnCacheOverflow = BufferedAiCtrl1CacheOverflow
    ControlData = {
      0101000000000000000000000001000000010000000E0000005500530042002D
      0034003700300034002C00420049004400230030000000000001000000080000
      0000000000010000000000000000000000000000000000000001000000010000
      0000000000000000000000000000000000020000000100000000000000000000
      0000000000000000000300000001000000000000000000000000000000000000
      0004000000010000000000000000000000000000000000000005000000010000
      0000000000000000000000000000000000060000000100000000000000000000
      0000000000000000000700000001000000000000000000000000000000000000
      00010000000008000000000400000004000001000000000000000040AF400000
      0000090000}
  end
  object Chart1: TChart
    Left = -16
    Top = 0
    Width = 1353
    Height = 145
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch0 (Stimulus)')
    BottomAxis.Labels = False
    Legend.Visible = False
    View3D = False
    View3DWalls = False
    Color = clBtnHighlight
    TabOrder = 3
    object Label21: TLabel
      Left = 920
      Top = 0
      Width = 57
      Height = 20
      Caption = 'Period:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch0_period_label: TLabel
      Left = 984
      Top = 0
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch1_show: TCheckBox
      Left = 24
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch0 Show'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
      OnClick = ch1_showClick
    end
    object ch0_filter: TCheckBox
      Left = 1208
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch0 Filter'
      TabOrder = 1
      OnClick = ch0_filterClick
    end
    object Button9: TButton
      Left = 1320
      Top = 40
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 1320
      Top = 72
      Width = 25
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button10Click
    end
    object ch0_period: TCheckBox
      Left = 1072
      Top = 8
      Width = 129
      Height = 17
      Caption = 'Ch0 Period'
      TabOrder = 4
      OnClick = ch0_periodClick
    end
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 33023
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series9: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series13: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 33023
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = -16
    Top = 149
    Width = 1353
    Height = 150
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch1 (MAP 1)')
    BottomAxis.Labels = False
    Legend.Visible = False
    View3D = False
    View3DWalls = False
    Color = clBtnHighlight
    TabOrder = 4
    object Label20: TLabel
      Left = 928
      Top = 0
      Width = 57
      Height = 20
      Caption = 'Period:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch1_period_label: TLabel
      Left = 992
      Top = 0
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch2_show: TCheckBox
      Left = 24
      Top = 0
      Width = 97
      Height = 17
      Caption = 'Ch1 Show'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ch2_showClick
    end
    object ch1_filter: TCheckBox
      Left = 1208
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch1 Filter'
      TabOrder = 1
      OnClick = ch1_filterClick
    end
    object Button11: TButton
      Left = 1320
      Top = 40
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 1320
      Top = 72
      Width = 25
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button12Click
    end
    object ch1_period: TCheckBox
      Left = 1072
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch1 Period'
      TabOrder = 4
      OnClick = ch1_periodClick
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 16711808
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series10: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series12: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 16711808
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = -16
    Top = 297
    Width = 1353
    Height = 150
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch2 (MAP 2 or CV1)')
    BottomAxis.Labels = False
    Legend.Visible = False
    View3D = False
    View3DWalls = False
    Color = clBtnHighlight
    TabOrder = 5
    object Label22: TLabel
      Left = 928
      Top = 0
      Width = 57
      Height = 20
      Caption = 'Period:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch2_period_label: TLabel
      Left = 992
      Top = 0
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch3_show: TCheckBox
      Left = 24
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch2 Show'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ch3_showClick
    end
    object ch2_filter: TCheckBox
      Left = 1208
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch2 Filter'
      TabOrder = 1
      OnClick = ch2_filterClick
    end
    object Button13: TButton
      Left = 1320
      Top = 40
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 1320
      Top = 72
      Width = 25
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button14Click
    end
    object ch2_period: TCheckBox
      Left = 1080
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch2 Period'
      TabOrder = 4
      OnClick = ch2_periodClick
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clLime
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series11: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series14: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart4: TChart
    Left = -16
    Top = 448
    Width = 1353
    Height = 150
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch3 (MAP 3 or CV2)')
    BottomAxis.Labels = False
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 6
    object Label25: TLabel
      Left = 928
      Top = 0
      Width = 57
      Height = 20
      Caption = 'Period:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch3_period_label: TLabel
      Left = 992
      Top = 0
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch4_show: TCheckBox
      Left = 24
      Top = 0
      Width = 97
      Height = 17
      Caption = 'Ch3 Show'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ch4_showClick
    end
    object ch3_filter: TCheckBox
      Left = 1208
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch3 Filter'
      TabOrder = 1
      OnClick = ch3_filterClick
    end
    object Button15: TButton
      Left = 1320
      Top = 40
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 1320
      Top = 72
      Width = 25
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button16Click
    end
    object ch3_period: TCheckBox
      Left = 1088
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch3 Period'
      TabOrder = 4
      OnClick = ch3_periodClick
    end
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series15: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series16: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart5: TChart
    Left = -16
    Top = 600
    Width = 1353
    Height = 150
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch4')
    BottomAxis.Labels = False
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 7
    object Label26: TLabel
      Left = 928
      Top = 0
      Width = 62
      Height = 20
      Caption = 'Period: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch4_period_label: TLabel
      Left = 992
      Top = 0
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch5_show: TCheckBox
      Left = 24
      Top = 0
      Width = 97
      Height = 17
      Caption = 'Ch4 Show'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ch5_showClick
    end
    object ch4_filter: TCheckBox
      Left = 1208
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch4 Filter'
      TabOrder = 1
      OnClick = ch4_filterClick
    end
    object Button17: TButton
      Left = 1320
      Top = 40
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 1320
      Top = 72
      Width = 25
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button18Click
    end
    object ch4_period: TCheckBox
      Left = 1096
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch4 Period'
      Enabled = False
      TabOrder = 4
      OnClick = ch4_periodClick
    end
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clOlive
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart6: TChart
    Left = -16
    Top = 752
    Width = 1353
    Height = 150
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch5')
    BottomAxis.Labels = False
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 8
    object Label27: TLabel
      Left = 936
      Top = 0
      Width = 57
      Height = 20
      Caption = 'Period:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch5_period_label: TLabel
      Left = 1000
      Top = 0
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ch6_show: TCheckBox
      Left = 24
      Top = 0
      Width = 97
      Height = 17
      Caption = 'Ch5 Show'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ch6_showClick
    end
    object ch5_filter: TCheckBox
      Left = 1216
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch5 Filter'
      TabOrder = 1
      OnClick = ch5_filterClick
    end
    object Button19: TButton
      Left = 1320
      Top = 40
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 1320
      Top = 72
      Width = 25
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button20Click
    end
    object ch5_period: TCheckBox
      Left = 1104
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch5 Period'
      Enabled = False
      TabOrder = 4
      OnClick = ch5_periodClick
    end
    object Series6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 8421440
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object GroupBox1: TGroupBox
    Left = 1344
    Top = 784
    Width = 217
    Height = 121
    Caption = 'Imedance Freq Control'
    TabOrder = 9
    object Label5: TLabel
      Left = 104
      Top = 40
      Width = 23
      Height = 13
      Caption = 'Add'
      Visible = False
    end
    object Label13: TLabel
      Left = 96
      Top = 96
      Width = 64
      Height = 13
      Caption = 'Frequency:'
      Visible = False
    end
    object Edit1: TEdit
      Left = 160
      Top = 32
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '10'
      Visible = False
    end
    object Button3: TButton
      Left = 96
      Top = 56
      Width = 49
      Height = 25
      Caption = 'Reset'
      TabOrder = 1
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 160
      Top = 56
      Width = 49
      Height = 25
      Caption = 'Add'
      TabOrder = 2
      Visible = False
      OnClick = Button4Click
    end
    object Button7: TButton
      Left = 8
      Top = 32
      Width = 73
      Height = 25
      Caption = 'Impedance'
      TabOrder = 3
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 16
      Top = 80
      Width = 65
      Height = 25
      Caption = 'Calculate'
      TabOrder = 4
      Visible = False
      OnClick = Button8Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 1736
    Top = 784
    Width = 160
    Height = 121
    Caption = 'Pulse Generator Control'
    TabOrder = 10
    object Button2: TButton
      Left = 40
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 0
      OnClick = Button2Click
    end
    object InstantDoCtrl1: TInstantDoCtrl
      Left = 112
      Top = 16
      Width = 32
      Height = 32
      ControlData = {
        0101000000000000000000000001000000010000000E0000005500530042002D
        0034003700300034002C00420049004400230030000000000001000000000009
        0000}
    end
  end
  object GroupBox3: TGroupBox
    Left = 1568
    Top = 784
    Width = 163
    Height = 121
    Caption = 'Stimulation Current'
    TabOrder = 11
    object Label7: TLabel
      Left = 640
      Top = 88
      Width = 39
      Height = 13
      Caption = 'Label7'
      Visible = False
    end
    object Label8: TLabel
      Left = 8
      Top = 96
      Width = 148
      Height = 13
      Caption = 'Stimulation Current : 0 mA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 640
      Top = 72
      Width = 39
      Height = 13
      Caption = 'Label9'
      Visible = False
    end
    object Label10: TLabel
      Left = 416
      Top = 136
      Width = 46
      Height = 13
      Caption = 'Label10'
      Visible = False
    end
    object TrackBar2: TTrackBar
      Left = 128
      Top = 64
      Width = 57
      Height = 401
      Max = 100
      Orientation = trVertical
      TabOrder = 0
      Visible = False
      OnChange = TrackBar2Change
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 16
      Width = 121
      Height = 17
      Caption = '0 - 10 mA'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 32
      Width = 105
      Height = 17
      Caption = '0 - 100 mA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object InstantAoCtrl1: TInstantAoCtrl
      Left = 120
      Top = 32
      Width = 32
      Height = 32
      ControlData = {
        0101000000000000000000000001000000010000000E0000005500530042002D
        0034003700300034002C00420049004400230030000000000001000000000000
        0000000000000000000000000002000000000000000800000001000000080000
        0000090000}
    end
    object txtboxValueA: TEdit
      Left = 368
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '0'
      Visible = False
    end
    object Button5: TButton
      Left = 504
      Top = 80
      Width = 75
      Height = 25
      Caption = 'AO-0 Write'
      TabOrder = 5
      Visible = False
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 512
      Top = 160
      Width = 75
      Height = 25
      Caption = 'AO-1 Write'
      TabOrder = 6
      Visible = False
    end
    object txtboxValueB: TEdit
      Left = 368
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 7
      Text = '0'
      Visible = False
    end
    object Edit2: TEdit
      Left = 16
      Top = 56
      Width = 65
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Text = '0'
    end
    object UpDown1: TUpDown
      Left = 81
      Top = 56
      Width = 16
      Height = 32
      Associate = Edit2
      TabOrder = 9
      OnChanging = UpDown1Changing
    end
  end
  object GroupBox4: TGroupBox
    Left = 1344
    Top = 312
    Width = 553
    Height = 465
    Caption = 'Restitution Chart'
    TabOrder = 12
    object Label23: TLabel
      Left = 176
      Top = 424
      Width = 36
      Height = 13
      Caption = 'APDx:'
    end
    object Chart7: TChart
      Left = 8
      Top = 16
      Width = 545
      Height = 385
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'Restitution')
      BottomAxis.Title.Caption = 'DI (ms)'
      LeftAxis.Title.Caption = 'APDx (ms)'
      Legend.Visible = False
      View3D = False
      Color = clBtnHighlight
      TabOrder = 0
      object Series8: TLineSeries
        Marks.ArrowLength = 0
        Marks.Visible = False
        SeriesColor = 33023
        LinePen.Width = 2
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series7: TPointSeries
        Marks.ArrowLength = 0
        Marks.Visible = False
        SeriesColor = 16711808
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series17: TPointSeries
        Marks.ArrowLength = 0
        Marks.Visible = False
        SeriesColor = clLime
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series18: TPointSeries
        Marks.ArrowLength = 0
        Marks.Visible = False
        SeriesColor = clBlue
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object ch1_restitution: TCheckBox
      Left = 304
      Top = 416
      Width = 49
      Height = 17
      Caption = 'Ch1'
      Color = 16711808
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = ch1_restitutionClick
    end
    object ch2_restitution: TCheckBox
      Left = 384
      Top = 416
      Width = 57
      Height = 17
      Caption = 'Ch2'
      Color = clLime
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = ch2_restitutionClick
    end
    object ch3_restitution: TCheckBox
      Left = 464
      Top = 416
      Width = 57
      Height = 17
      Caption = 'Ch3'
      Color = clBlue
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = ch3_restitutionClick
    end
    object Edit9: TEdit
      Left = 232
      Top = 416
      Width = 49
      Height = 21
      TabOrder = 4
      Text = '80'
    end
  end
  object GroupBox5: TGroupBox
    Left = 1376
    Top = 0
    Width = 521
    Height = 145
    Caption = 'DAQ Control'
    TabOrder = 13
    object BtnStart: TButton
      Left = 17
      Top = 29
      Width = 80
      Height = 28
      Caption = 'Start'
      TabOrder = 0
      OnClick = BtnStartClick
    end
    object BtnPause: TButton
      Left = 233
      Top = 28
      Width = 80
      Height = 29
      Caption = 'Pause'
      TabOrder = 1
    end
    object BtnStop: TButton
      Left = 328
      Top = 29
      Width = 81
      Height = 28
      Caption = 'Stop'
      TabOrder = 2
      OnClick = BtnStopClick
    end
    object Button1: TButton
      Left = 430
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 3
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 112
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Show on Screen'
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 72
      Width = 505
      Height = 65
      Caption = 'Zoom'
      TabOrder = 5
      object Label4: TLabel
        Left = 416
        Top = 9
        Width = 33
        Height = 16
        Caption = '2000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TrackBar1: TTrackBar
        Left = 12
        Top = 23
        Width = 485
        Height = 26
        Max = 20
        Min = 1
        Position = 10
        TabOrder = 0
        OnChange = TrackBar1Change
      end
    end
  end
  object g6: TGroupBox
    Left = 1344
    Top = 152
    Width = 553
    Height = 153
    Caption = 'Calculation and Settings'
    TabOrder = 14
    object GroupBox6: TGroupBox
      Left = 24
      Top = 24
      Width = 505
      Height = 121
      Caption = 'FIR Lowpass Filter Cutoff Frequency'
      TabOrder = 0
      object Label14: TLabel
        Left = 16
        Top = 29
        Width = 127
        Height = 13
        Caption = 'Channel 0 Cutoff  (Hz)'
      end
      object Label15: TLabel
        Left = 272
        Top = 29
        Width = 127
        Height = 13
        Caption = 'Channel 1 Cutoff  (Hz)'
      end
      object Label16: TLabel
        Left = 16
        Top = 61
        Width = 127
        Height = 13
        Caption = 'Channel 2 Cutoff  (Hz)'
      end
      object Label17: TLabel
        Left = 272
        Top = 61
        Width = 127
        Height = 13
        Caption = 'Channel 3 Cutoff  (Hz)'
      end
      object Label18: TLabel
        Left = 16
        Top = 93
        Width = 127
        Height = 13
        Caption = 'Channel 4 Cutoff  (Hz)'
      end
      object Label19: TLabel
        Left = 272
        Top = 93
        Width = 127
        Height = 13
        Caption = 'Channel 5 Cutoff  (Hz)'
      end
      object Edit3: TEdit
        Left = 152
        Top = 24
        Width = 41
        Height = 21
        TabOrder = 0
        Text = '20'
        OnChange = Edit3Change
      end
      object Edit4: TEdit
        Left = 408
        Top = 24
        Width = 41
        Height = 21
        TabOrder = 1
        Text = '20'
        OnChange = Edit4Change
      end
      object Edit5: TEdit
        Left = 152
        Top = 56
        Width = 41
        Height = 21
        TabOrder = 2
        Text = '20'
        OnChange = Edit5Change
      end
      object Edit6: TEdit
        Left = 408
        Top = 56
        Width = 41
        Height = 21
        TabOrder = 3
        Text = '20'
        OnChange = Edit6Change
      end
      object Edit7: TEdit
        Left = 152
        Top = 88
        Width = 41
        Height = 21
        TabOrder = 4
        Text = '20'
        OnChange = Edit7Change
      end
      object Edit8: TEdit
        Left = 408
        Top = 88
        Width = 41
        Height = 21
        TabOrder = 5
        Text = '20'
        OnChange = Edit8Change
      end
      object UpDown2: TUpDown
        Left = 193
        Top = 24
        Width = 16
        Height = 21
        Associate = Edit3
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 6
      end
      object UpDown3: TUpDown
        Left = 449
        Top = 24
        Width = 16
        Height = 21
        Associate = Edit4
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 7
      end
      object UpDown4: TUpDown
        Left = 193
        Top = 56
        Width = 16
        Height = 21
        Associate = Edit5
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 8
      end
      object UpDown5: TUpDown
        Left = 449
        Top = 56
        Width = 16
        Height = 21
        Associate = Edit6
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 9
      end
      object UpDown6: TUpDown
        Left = 193
        Top = 88
        Width = 16
        Height = 21
        Associate = Edit7
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 10
      end
      object UpDown7: TUpDown
        Left = 449
        Top = 88
        Width = 16
        Height = 21
        Associate = Edit8
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 11
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 1340
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2
    OnTimer = Timer1Timer
    Left = 1417
    Top = 912
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 728
    Top = 504
  end
  object AI_AO_Handle: TTimer
    Enabled = False
    Interval = 200
    OnTimer = AI_AO_HandleTimer
    Left = 1344
    Top = 88
  end
end
