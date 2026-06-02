object MainForm: TMainForm
  Left = 204
  Top = 43
  Width = 1440
  Height = 738
  VertScrollBar.Position = 205
  Caption = 'SDC1721 - Advanced DAQ By Salar @ Golestan (Tests Linker)'
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
    Left = 1858
    Top = 17
    Width = 843
    Height = 182
    Color = clBlack
    ParentColor = False
    Visible = False
  end
  object Label1: TLabel
    Left = 612
    Top = 417
    Width = 114
    Height = 13
    AutoSize = False
    Caption = 'Color of channels:'
    Visible = False
  end
  object Label2: TLabel
    Left = 1894
    Top = -66
    Width = 24
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Div:'
    Visible = False
  end
  object divTimeLabel: TLabel
    Left = 1896
    Top = -89
    Width = 16
    Height = 13
    Caption = 'ms'
    Visible = False
  end
  object xRLabel: TLabel
    Left = 1899
    Top = -15
    Width = 47
    Height = 13
    Caption = 'xRLabel'
    Visible = False
  end
  object xLLabel: TLabel
    Left = 1905
    Top = -41
    Width = 45
    Height = 13
    Caption = 'xLLabel'
    Visible = False
  end
  object yTLabel: TLabel
    Left = 2035
    Top = -72
    Width = 46
    Height = 13
    Caption = 'yTLabel'
    Visible = False
  end
  object yMLabel: TLabel
    Left = 2035
    Top = -91
    Width = 48
    Height = 13
    Caption = 'yMLabel'
    Visible = False
  end
  object yBLabel: TLabel
    Left = 1899
    Top = 11
    Width = 46
    Height = 13
    Caption = 'yBLabel'
    Visible = False
  end
  object Label3: TLabel
    Left = 2042
    Top = -5
    Width = 39
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Label6: TLabel
    Left = 2030
    Top = -45
    Width = 39
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object Label11: TLabel
    Left = 2034
    Top = 19
    Width = 46
    Height = 13
    Caption = 'Label11'
    Visible = False
  end
  object Label12: TLabel
    Left = 2037
    Top = -24
    Width = 46
    Height = 13
    Caption = 'Label12'
    Visible = False
  end
  object ch0_amp_th_label: TLabel
    Left = 0
    Top = -181
    Width = 52
    Height = 13
    Caption = 'ch0_amp'
  end
  object ch1_amp_th_label: TLabel
    Left = 0
    Top = -29
    Width = 104
    Height = 13
    Caption = 'ch1_amp_th_label'
  end
  object ch2_amp_th_label: TLabel
    Left = 0
    Top = 123
    Width = 104
    Height = 13
    Caption = 'ch2_amp_th_label'
  end
  object ch3_amp_th_label: TLabel
    Left = 0
    Top = 275
    Width = 104
    Height = 13
    Caption = 'ch3_amp_th_label'
  end
  object Label23: TLabel
    Left = -251
    Top = 406
    Width = 36
    Height = 13
    Caption = 'APDx:'
  end
  object Label29: TLabel
    Left = 752
    Top = -201
    Width = 57
    Height = 13
    Caption = 'Base Line'
  end
  object Label30: TLabel
    Left = 760
    Top = 39
    Width = 33
    Height = 13
    Caption = 'Value'
  end
  object Label31: TLabel
    Left = 1848
    Top = -197
    Width = 32
    Height = 13
    Caption = 'APDx'
  end
  object Label24: TLabel
    Left = 80
    Top = 419
    Width = 46
    Height = 13
    Caption = 'Label24'
  end
  object Label38: TLabel
    Left = 280
    Top = 419
    Width = 46
    Height = 13
    Caption = 'Label38'
  end
  object Label43: TLabel
    Left = 56
    Top = -197
    Width = 21
    Height = 13
    Caption = 'S/s'
  end
  object Label18: TLabel
    Left = 472
    Top = 419
    Width = 46
    Height = 13
    Caption = 'Label18'
  end
  object chanDataList: TListView
    Left = 1863
    Top = -79
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
    Left = 1841
    Top = -137
    Width = 507
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
    Left = 617
    Top = 443
    Width = 32
    Height = 32
    OnDataReady = BufferedAiCtrl1DataReady
    OnOverrun = BufferedAiCtrl1Overrun
    OnCacheOverflow = BufferedAiCtrl1CacheOverflow
    ControlData = {
      01010000000000000000000000010000000000000010000000440065006D006F
      004400650076006900630065002C004200490044002300300000000000010000
      0008000000000000000100000000000000000000000000000000000000010000
      0001000000000000000000000000000000000000000200000001000000000000
      0000000000000000000000000003000000010000000000000000000000000000
      0000000000040000000100000000000000000000000000000000000000050000
      0001000000000000000000000000000000000000000600000001000000000000
      0000000000000000000000000007000000010000000000000000000000000000
      0000000000010000000008000000000400000004000001000000000000000000
      B040010000000000000000000059400A00000001000000000100000001000000
      0000000000002440000000000000090000}
  end
  object Chart1: TChart
    Left = 40
    Top = -181
    Width = 697
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
      Left = 736
      Top = 120
      Width = 57
      Height = 20
      Caption = 'Period:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object ch0_period_label: TLabel
      Left = 504
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
    object Label28: TLabel
      Left = 144
      Top = 4
      Width = 32
      Height = 13
      Caption = 'Time:'
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
      Left = 560
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Ch0 Filter'
      Enabled = False
      TabOrder = 1
      OnClick = ch0_filterClick
    end
    object Button9: TButton
      Left = 678
      Top = 40
      Width = 17
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
      Left = 678
      Top = 88
      Width = 17
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
      Left = 416
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Ch0 Period'
      TabOrder = 4
      OnClick = ch0_periodClick
    end
    object Button26: TButton
      Left = 648
      Top = 0
      Width = 33
      Height = 21
      Caption = 'FIR'
      Enabled = False
      TabOrder = 5
      OnClick = Button26Click
    end
    object Button34: TButton
      Left = 678
      Top = 64
      Width = 17
      Height = 25
      Caption = 'A'
      TabOrder = 6
      OnClick = Button34Click
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
    Left = 40
    Top = -32
    Width = 697
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
      Left = 496
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
      Left = 32
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch1 Show'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ch2_showClick
    end
    object ch1_filter: TCheckBox
      Left = 568
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Ch1 Filter'
      TabOrder = 1
      OnClick = ch1_filterClick
    end
    object Button11: TButton
      Left = 678
      Top = 48
      Width = 17
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
      Left = 678
      Top = 96
      Width = 17
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
      Left = 408
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Ch1 Period'
      TabOrder = 4
      OnClick = ch1_periodClick
    end
    object stimulus_on_ch1: TCheckBox
      Left = 136
      Top = 8
      Width = 137
      Height = 17
      Caption = 'Show Stimulus'
      TabOrder = 5
      OnClick = stimulus_on_ch1Click
    end
    object Button28: TButton
      Left = 649
      Top = 0
      Width = 33
      Height = 21
      Caption = 'FIR'
      TabOrder = 6
      OnClick = Button28Click
    end
    object ch1_fir_setting_panel: TPanel
      Left = 416
      Top = 24
      Width = 241
      Height = 41
      TabOrder = 7
      Visible = False
      object Label15: TLabel
        Left = 10
        Top = 12
        Width = 127
        Height = 13
        Caption = 'Channel 1 Cutoff  (Hz)'
      end
      object Edit4: TEdit
        Left = 144
        Top = 12
        Width = 41
        Height = 21
        TabOrder = 0
        Text = '20'
        OnChange = Edit4Change
      end
      object UpDown3: TUpDown
        Left = 185
        Top = 12
        Width = 16
        Height = 21
        Associate = Edit4
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 1
      end
      object Button29: TButton
        Left = 208
        Top = 8
        Width = 27
        Height = 25
        Caption = 'Ok'
        TabOrder = 2
        OnClick = Button29Click
      end
    end
    object Button35: TButton
      Left = 678
      Top = 72
      Width = 17
      Height = 25
      Caption = 'A'
      TabOrder = 8
      OnClick = Button35Click
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
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
      SeriesColor = clBlack
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
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
    object Series12: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
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
    object Series19: TLineSeries
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
  end
  object Chart3: TChart
    Left = 40
    Top = 116
    Width = 697
    Height = 150
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch2 (MAP2 or CV1)')
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
      Left = 488
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
      Left = 32
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
      Left = 568
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Ch2 Filter'
      TabOrder = 1
      OnClick = ch2_filterClick
    end
    object Button13: TButton
      Left = 678
      Top = 48
      Width = 17
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
      Left = 678
      Top = 96
      Width = 17
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
      Left = 400
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Ch2 Period'
      TabOrder = 4
      OnClick = ch2_periodClick
    end
    object stimulus_on_ch2: TCheckBox
      Left = 136
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Show Stimulus'
      TabOrder = 5
      OnClick = stimulus_on_ch2Click
    end
    object Button30: TButton
      Left = 648
      Top = 0
      Width = 35
      Height = 21
      Caption = 'FIR'
      TabOrder = 6
      OnClick = Button30Click
    end
    object ch2_fir_setting_panel: TPanel
      Left = 408
      Top = 24
      Width = 249
      Height = 41
      TabOrder = 7
      Visible = False
      object Label16: TLabel
        Left = 8
        Top = 12
        Width = 127
        Height = 13
        Caption = 'Channel 2 Cutoff  (Hz)'
      end
      object Edit5: TEdit
        Left = 144
        Top = 12
        Width = 41
        Height = 21
        TabOrder = 0
        Text = '20'
        OnChange = Edit5Change
      end
      object UpDown4: TUpDown
        Left = 185
        Top = 12
        Width = 16
        Height = 21
        Associate = Edit5
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 1
      end
      object Button31: TButton
        Left = 208
        Top = 8
        Width = 27
        Height = 25
        Caption = 'Ok'
        TabOrder = 2
        OnClick = Button31Click
      end
    end
    object Button36: TButton
      Left = 678
      Top = 72
      Width = 17
      Height = 25
      Caption = 'A'
      TabOrder = 8
      OnClick = Button36Click
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
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
      SeriesColor = clGreen
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
    object Series20: TLineSeries
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
  end
  object Chart4: TChart
    Left = 40
    Top = 267
    Width = 697
    Height = 150
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Ch3 (MAP3 or CV2)')
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
      Left = 496
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
      Left = 32
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Ch3 Show'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ch4_showClick
    end
    object ch3_filter: TCheckBox
      Left = 568
      Top = 8
      Width = 81
      Height = 17
      Caption = 'Ch3 Filter'
      TabOrder = 1
      OnClick = ch3_filterClick
    end
    object Button15: TButton
      Left = 677
      Top = 40
      Width = 17
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
      Left = 676
      Top = 88
      Width = 17
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
      Left = 408
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Ch3 Period'
      TabOrder = 4
      OnClick = ch3_periodClick
    end
    object stimulus_on_ch3: TCheckBox
      Left = 136
      Top = 8
      Width = 121
      Height = 17
      Caption = 'Show Stimulus'
      TabOrder = 5
      OnClick = stimulus_on_ch3Click
    end
    object Button32: TButton
      Left = 648
      Top = 0
      Width = 35
      Height = 21
      Caption = 'FIR'
      TabOrder = 6
      OnClick = Button32Click
    end
    object ch3_fir_setting_panel: TPanel
      Left = 400
      Top = 24
      Width = 257
      Height = 41
      TabOrder = 7
      Visible = False
      object Label17: TLabel
        Left = 10
        Top = 12
        Width = 127
        Height = 13
        Caption = 'Channel 3 Cutoff  (Hz)'
      end
      object Edit6: TEdit
        Left = 144
        Top = 12
        Width = 41
        Height = 21
        TabOrder = 0
        Text = '20'
        OnChange = Edit6Change
      end
      object UpDown5: TUpDown
        Left = 185
        Top = 12
        Width = 16
        Height = 21
        Associate = Edit6
        Min = 1
        Max = 300
        Position = 20
        TabOrder = 1
      end
      object Button33: TButton
        Left = 216
        Top = 8
        Width = 27
        Height = 25
        Caption = 'Ok'
        TabOrder = 2
        OnClick = Button33Click
      end
    end
    object Button37: TButton
      Left = 677
      Top = 64
      Width = 17
      Height = 25
      Caption = 'A'
      TabOrder = 8
      OnClick = Button37Click
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
    object Series21: TLineSeries
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
  end
  object GroupBox1: TGroupBox
    Left = 751
    Top = 593
    Width = 1162
    Height = 159
    Caption = 'Imedance'
    TabOrder = 7
    object Label5: TLabel
      Left = 24
      Top = 24
      Width = 23
      Height = 13
      Caption = 'Add'
      Visible = False
    end
    object Label13: TLabel
      Left = 16
      Top = 80
      Width = 64
      Height = 13
      Caption = 'Frequency:'
      Visible = False
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '10'
      Visible = False
    end
    object Button3: TButton
      Left = 16
      Top = 40
      Width = 49
      Height = 25
      Caption = 'Reset'
      TabOrder = 1
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 80
      Top = 40
      Width = 49
      Height = 25
      Caption = 'Add'
      TabOrder = 2
      Visible = False
      OnClick = Button4Click
    end
    object Button7: TButton
      Left = 24
      Top = 32
      Width = 73
      Height = 25
      Caption = 'Impedance'
      TabOrder = 3
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 8
      Top = 48
      Width = 65
      Height = 25
      Caption = 'Calculate'
      TabOrder = 4
      Visible = False
      OnClick = Button8Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 608
    Top = 483
    Width = 117
    Height = 61
    Caption = 'Pulse Generator'
    TabOrder = 8
    object Button2: TButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 0
      OnClick = Button2Click
    end
    object InstantDoCtrl1: TInstantDoCtrl
      Left = 32
      Top = 24
      Width = 32
      Height = 32
      ControlData = {
        01010000000000000000000000010000000000000010000000440065006D006F
        004400650076006900630065002C004200490044002300300000000000010000
        000000090000}
    end
  end
  object GroupBox3: TGroupBox
    Left = 5
    Top = 595
    Width = 163
    Height = 157
    Caption = 'Stimulation Current'
    Enabled = False
    TabOrder = 9
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
      Font.Height = -12
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
      Left = 48
      Top = 112
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
      Left = 112
      Top = 32
      Width = 32
      Height = 32
      ControlData = {
        01010000000000000000000000010000000000000010000000440065006D006F
        004400650076006900630065002C004200490044002300300000000000010000
        0000000000000024400000000000002440080000000000000001000000010000
        0001000000020000000100000003000000010000000400000001000000050000
        00010000000600000001000000070000000100000000090000}
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
    Left = 740
    Top = 107
    Width = 1177
    Height = 477
    Caption = 'Restitution Chart'
    TabOrder = 10
    object Panel1: TPanel
      Left = 16
      Top = 32
      Width = 1145
      Height = 433
      Color = 16777119
      TabOrder = 0
      object Label44: TLabel
        Left = 280
        Top = 416
        Width = 35
        Height = 13
        Caption = 'index:'
      end
      object Label27: TLabel
        Left = 176
        Top = 376
        Width = 46
        Height = 13
        Caption = 'DI Type'
      end
      object Label45: TLabel
        Left = 8
        Top = 375
        Width = 120
        Height = 13
        Caption = 'Calculation Algorithm'
      end
      object Chart7: TChart
        Left = 392
        Top = 16
        Width = 377
        Height = 409
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Restitution (APDx-DI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 500.000000000000000000
        BottomAxis.Minimum = 30.000000000000000000
        BottomAxis.Title.Caption = 'DI (ms)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 150.000000000000000000
        LeftAxis.Minimum = 5.000000000000000000
        LeftAxis.Title.Caption = 'APDx (ms)'
        Legend.Visible = False
        View3D = False
        Color = clBtnHighlight
        TabOrder = 0
        object Button25: TButton
          Left = 80
          Top = 40
          Width = 217
          Height = 25
          Caption = 'Old Resti Calc amp for each MAP'
          TabOrder = 0
          Visible = False
          OnClick = Button25Click
        end
        object only_test_calc_btn: TButton
          Left = 72
          Top = 208
          Width = 177
          Height = 25
          Caption = 'only_test_calc_btn'
          TabOrder = 1
          Visible = False
          OnClick = only_test_calc_btnClick
        end
        object reprocess_resti_btn: TButton
          Left = 72
          Top = 304
          Width = 177
          Height = 25
          Caption = 'reprocess_resti_btn'
          TabOrder = 2
          Visible = False
          OnClick = reprocess_resti_btnClick
        end
        object Series18: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = clBlue
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
        object Series7: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = 16777088
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
      object Panel2: TPanel
        Left = 8
        Top = 388
        Width = 161
        Height = 41
        Color = clBtnHighlight
        TabOrder = 1
        object Stimulus_dependent: TRadioButton
          Left = 8
          Top = 4
          Width = 145
          Height = 17
          Caption = 'Stimulus Dependent'
          Enabled = False
          TabOrder = 0
          OnClick = Stimulus_dependentClick
        end
        object Stimulus_independent: TRadioButton
          Left = 8
          Top = 21
          Width = 145
          Height = 17
          Caption = 'Stimulus Independent'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = Stimulus_independentClick
        end
      end
      object Button24: TButton
        Left = 280
        Top = 392
        Width = 105
        Height = 20
        Caption = 'Reset Processor'
        TabOrder = 2
        OnClick = Button24Click
      end
      object StringGrid1: TStringGrid
        Left = 8
        Top = 8
        Width = 369
        Height = 201
        ColCount = 8
        DefaultColWidth = 45
        RowCount = 2
        TabOrder = 3
        OnClick = StringGrid1Click
      end
      object on_click_resti_btn: TButton
        Left = 224
        Top = 120
        Width = 131
        Height = 25
        Caption = 'on_click_resti_btn'
        TabOrder = 4
        Visible = False
        OnClick = on_click_resti_btnClick
      end
      object Chart9: TChart
        Left = 776
        Top = 16
        Width = 361
        Height = 409
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Restitution (S2V2-DI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 500.000000000000000000
        BottomAxis.Title.Caption = 'DI (ms)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 150.000000000000000000
        LeftAxis.Title.Caption = 'S2V2 (ms)'
        Legend.Visible = False
        View3D = False
        Color = clBtnHighlight
        TabOrder = 5
        object Series29: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = clBlue
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
        object Series8: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = 16777088
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
      object Resti_calc_btn: TButton
        Left = 464
        Top = 128
        Width = 177
        Height = 25
        Caption = 'Resti_calc_btn'
        TabOrder = 6
        Visible = False
        OnClick = Resti_calc_btnClick
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 216
        Width = 369
        Height = 121
        Caption = 'Processor Settings'
        TabOrder = 7
        object Label46: TLabel
          Left = 272
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Tests:'
        end
        object Resti_global_calculation: TCheckBox
          Left = 16
          Top = 24
          Width = 81
          Height = 17
          Caption = 'Active'
          TabOrder = 0
          OnClick = Resti_global_calculationClick
        end
        object slow_motion: TCheckBox
          Left = 112
          Top = 24
          Width = 65
          Height = 17
          Caption = 'Slow'
          TabOrder = 1
          OnClick = slow_motionClick
        end
        object RadioButton3: TRadioButton
          Left = 16
          Top = 48
          Width = 153
          Height = 17
          Caption = 'All Stimulation Pulses'
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = RadioButton3Click
        end
        object only_test_process_radio_btn: TRadioButton
          Left = 16
          Top = 72
          Width = 113
          Height = 17
          Caption = 'Only Test Pulse'
          TabOrder = 3
          OnClick = only_test_process_radio_btnClick
        end
        object Panel4: TPanel
          Left = 176
          Top = 24
          Width = 81
          Height = 81
          Color = 16777119
          TabOrder = 4
          object ch1_restitution: TRadioButton
            Left = 8
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Ch 1'
            Color = clRed
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            OnClick = ch1_restitutionClick
          end
          object ch2_restitution: TRadioButton
            Left = 8
            Top = 32
            Width = 65
            Height = 17
            Caption = 'Ch 2'
            Color = clGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            OnClick = ch2_restitutionClick
          end
          object ch3_restitution: TRadioButton
            Left = 8
            Top = 56
            Width = 65
            Height = 17
            Caption = 'Ch 3'
            Color = clBlue
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            OnClick = ch3_restitutionClick
          end
        end
        object zoom_to_test_check_box: TCheckBox
          Left = 16
          Top = 96
          Width = 97
          Height = 17
          Caption = 'Zoom to Test'
          Enabled = False
          TabOrder = 5
        end
        object tests_list: TListBox
          Left = 272
          Top = 32
          Width = 73
          Height = 81
          ItemHeight = 13
          TabOrder = 6
        end
      end
      object Button48: TButton
        Left = 16
        Top = 344
        Width = 105
        Height = 21
        Caption = 'Save'
        TabOrder = 8
        OnClick = Button48Click
      end
      object Button49: TButton
        Left = 144
        Top = 344
        Width = 113
        Height = 20
        Caption = 'Load'
        TabOrder = 9
        OnClick = Button49Click
      end
      object Button50: TButton
        Left = 280
        Top = 343
        Width = 105
        Height = 21
        Caption = 'Clear'
        TabOrder = 10
        OnClick = Button50Click
      end
      object Reprocess_Btn: TButton
        Left = 280
        Top = 368
        Width = 105
        Height = 21
        Caption = 'Reprocess'
        TabOrder = 11
        OnClick = Reprocess_BtnClick
      end
      object Panel6: TPanel
        Left = 176
        Top = 389
        Width = 97
        Height = 41
        TabOrder = 12
        object RadioButton4: TRadioButton
          Left = 8
          Top = 3
          Width = 65
          Height = 17
          Caption = 'Real'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadioButton5: TRadioButton
          Left = 8
          Top = 21
          Width = 81
          Height = 17
          Caption = 'V1V2-APD'
          TabOrder = 1
        end
      end
    end
    object normal_radio_button: TRadioButton
      Left = 128
      Top = 16
      Width = 129
      Height = 17
      Caption = 'Normal Protocols'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = normal_radio_buttonClick
    end
    object af_vf_radio_button: TRadioButton
      Left = 376
      Top = 16
      Width = 113
      Height = 17
      Caption = 'AF-VF Protocol'
      Enabled = False
      TabOrder = 2
      OnClick = af_vf_radio_buttonClick
    end
    object Panel3: TPanel
      Left = 16
      Top = 40
      Width = 1145
      Height = 41
      Caption = 'AF-VF'
      Color = 11778047
      TabOrder = 3
      Visible = False
      object Label39: TLabel
        Left = 1040
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Timer'
      end
      object Label40: TLabel
        Left = 784
        Top = 8
        Width = 179
        Height = 13
        Caption = 'Period: 0 to 500 ms , Step: 5ms'
      end
      object Chart10: TChart
        Left = 8
        Top = 24
        Width = 1129
        Height = 305
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'RR Interval')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 300.000000000000000000
        Legend.Visible = False
        View3D = False
        TabOrder = 0
        object RR_memo: TMemo
          Left = 288
          Top = 64
          Width = 185
          Height = 89
          Lines.Strings = (
            'RR_memo')
          ScrollBars = ssBoth
          TabOrder = 0
          Visible = False
        end
        object Series32: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = 33023
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series33: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series34: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clGreen
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series35: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clBlue
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series36: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = 6730751
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series37: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = 8421631
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series38: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = 7470961
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series39: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = 16742777
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object ch0_rr_radio_btn: TRadioButton
        Left = 32
        Top = 344
        Width = 121
        Height = 17
        Caption = 'Ch0 RR Interval'
        Color = 4227327
        Enabled = False
        ParentColor = False
        TabOrder = 1
      end
      object ch1_rr_radio_btn: TRadioButton
        Left = 160
        Top = 344
        Width = 121
        Height = 17
        Caption = 'Ch1 RR Interval'
        Color = clRed
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object ch2_rr_radio_btn: TRadioButton
        Left = 288
        Top = 344
        Width = 121
        Height = 17
        Caption = 'Ch2 RR Interval'
        Color = clGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object ch3_rr_radio_btn: TRadioButton
        Left = 416
        Top = 344
        Width = 121
        Height = 17
        Caption = 'Ch3 RR Interval'
        Color = clBlue
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object Button39: TButton
        Left = 40
        Top = 368
        Width = 49
        Height = 25
        Caption = 'Reset'
        TabOrder = 5
        OnClick = Button39Click
      end
      object Button40: TButton
        Left = 96
        Top = 368
        Width = 49
        Height = 25
        Caption = 'Start'
        TabOrder = 6
        OnClick = Button40Click
      end
      object Button41: TButton
        Left = 152
        Top = 368
        Width = 49
        Height = 25
        Caption = 'Stop'
        TabOrder = 7
        OnClick = Button41Click
      end
      object Button42: TButton
        Left = 1072
        Top = 336
        Width = 33
        Height = 25
        Caption = '+50'
        TabOrder = 8
        OnClick = Button42Click
      end
      object Button43: TButton
        Left = 1032
        Top = 336
        Width = 33
        Height = 25
        Caption = '-50'
        TabOrder = 9
        OnClick = Button43Click
      end
      object Button44: TButton
        Left = 368
        Top = 368
        Width = 49
        Height = 25
        Caption = 'Clear'
        TabOrder = 10
      end
      object Button45: TButton
        Left = 256
        Top = 368
        Width = 49
        Height = 25
        Caption = 'Save'
        TabOrder = 11
        OnClick = Button45Click
      end
      object Button46: TButton
        Left = 312
        Top = 368
        Width = 49
        Height = 25
        Caption = 'Load'
        TabOrder = 12
        OnClick = Button46Click
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 5
    Top = 431
    Width = 588
    Height = 149
    Caption = 'DAQ Control'
    TabOrder = 11
    object Label37: TLabel
      Left = 816
      Top = 128
      Width = 5
      Height = 13
    end
    object BtnStart: TButton
      Left = 17
      Top = 37
      Width = 80
      Height = 28
      Caption = 'Start'
      TabOrder = 0
      OnClick = BtnStartClick
    end
    object BtnPause: TButton
      Left = 425
      Top = 12
      Width = 80
      Height = 21
      Caption = 'Pause'
      TabOrder = 1
      Visible = False
      OnClick = BtnPauseClick
    end
    object BtnStop: TButton
      Left = 240
      Top = 40
      Width = 81
      Height = 28
      Caption = 'Stop'
      TabOrder = 2
      OnClick = BtnStopClick
    end
    object Button1: TButton
      Left = 366
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 3
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 112
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Show on Screen'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 72
      Width = 569
      Height = 57
      Caption = 'Zoom'
      TabOrder = 5
      object Label4: TLabel
        Left = 520
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
        Width = 549
        Height = 26
        Max = 20
        Min = 1
        Position = 10
        TabOrder = 0
        OnChange = TrackBar1Change
      end
    end
    object Button21: TButton
      Left = 208
      Top = 16
      Width = 75
      Height = 17
      Caption = 'FIR Block'
      TabOrder = 6
      Visible = False
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 296
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Restitution block'
      TabOrder = 7
      Visible = False
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 104
      Top = 16
      Width = 91
      Height = 17
      Caption = 'Period Block'
      TabOrder = 8
      Visible = False
      OnClick = Button23Click
    end
    object Button38: TButton
      Left = 472
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 9
      OnClick = Button38Click
    end
  end
  object Chart8: TChart
    Left = 816
    Top = -189
    Width = 1021
    Height = 289
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Restitution Calculation')
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 12
    object delta_T_label: TLabel
      Left = 72
      Top = 8
      Width = 78
      Height = 13
      Caption = 'delta_T_label'
    end
    object Label41: TLabel
      Left = 624
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Current Periode:'
    end
    object Label42: TLabel
      Left = 720
      Top = 8
      Width = 65
      Height = 20
      Caption = 'Label42'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Series23: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
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
    object Series24: TLineSeries
      Marks.ArrowLength = 0
      Marks.Visible = False
      SeriesColor = clGreen
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
    object Series25: TLineSeries
      Marks.ArrowLength = 0
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
    object Series26: TLineSeries
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
    object Series27: TLineSeries
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
    object Series28: TLineSeries
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
    object Series30: TLineSeries
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
    object Series31: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clAqua
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
    object Series17: TLineSeries
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
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
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
    object Series6: TPointSeries
      Marks.ArrowLength = 0
      Marks.Visible = False
      SeriesColor = 65408
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
    object Series22: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 16744703
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
  object ch0_trackbar: TTrackBar
    Left = 0
    Top = -165
    Width = 53
    Height = 129
    Max = 80
    Orientation = trVertical
    Position = 20
    TabOrder = 13
    OnChange = ch0_trackbarChange
  end
  object ch1_trackbar: TTrackBar
    Left = 0
    Top = -5
    Width = 53
    Height = 118
    Max = 80
    Orientation = trVertical
    Position = 20
    TabOrder = 14
    OnChange = ch1_trackbarChange
  end
  object ch2_trackbar: TTrackBar
    Left = 0
    Top = 139
    Width = 49
    Height = 126
    Max = 80
    Orientation = trVertical
    Position = 20
    TabOrder = 15
    OnChange = ch2_trackbarChange
  end
  object ch3_trackbar: TTrackBar
    Left = 0
    Top = 291
    Width = 53
    Height = 121
    Max = 80
    Orientation = trVertical
    Position = 20
    TabOrder = 16
    OnChange = ch3_trackbarChange
  end
  object base_line_trackbar: TTrackBar
    Left = 760
    Top = -185
    Width = 45
    Height = 221
    Max = 100
    Orientation = trVertical
    Position = 50
    TabOrder = 17
    OnChange = base_line_trackbarChange
  end
  object apdx_trackbar: TTrackBar
    Left = 1848
    Top = -181
    Width = 45
    Height = 249
    Max = 100
    Orientation = trVertical
    Position = 80
    TabOrder = 18
    TickMarks = tmTopLeft
    OnChange = apdx_trackbarChange
  end
  object Edit9: TEdit
    Left = 1848
    Top = 76
    Width = 41
    Height = 21
    TabOrder = 19
    Text = '80'
  end
  object ch0_fir_setting_panel: TPanel
    Left = 464
    Top = -157
    Width = 241
    Height = 41
    TabOrder = 20
    Visible = False
    object Label14: TLabel
      Left = 8
      Top = 12
      Width = 127
      Height = 13
      Caption = 'Channel 0 Cutoff  (Hz)'
    end
    object Edit3: TEdit
      Left = 136
      Top = 12
      Width = 41
      Height = 21
      TabOrder = 0
      Text = '20'
      OnChange = Edit3Change
    end
    object UpDown2: TUpDown
      Left = 177
      Top = 12
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 1
      Max = 300
      Position = 20
      TabOrder = 1
    end
    object Button27: TButton
      Left = 208
      Top = 8
      Width = 27
      Height = 25
      Caption = 'Ok'
      TabOrder = 2
      OnClick = Button27Click
    end
  end
  object GroupBox9: TGroupBox
    Left = 178
    Top = 593
    Width = 561
    Height = 161
    Caption = 
      'Test DataSheet (Must be Compeleted for any Test and Drug Seprate' +
      'ly)'
    TabOrder = 21
    object Label32: TLabel
      Left = 11
      Top = 24
      Width = 254
      Height = 13
      Caption = 'Auto Save Files and Path , Select to resave.'
    end
    object Label33: TLabel
      Left = 276
      Top = 56
      Width = 102
      Height = 13
      Caption = 'Animal Wight (gr):'
    end
    object Label34: TLabel
      Left = 279
      Top = 80
      Width = 66
      Height = 13
      Caption = 'Researcher'
    end
    object Label35: TLabel
      Left = 276
      Top = 104
      Width = 61
      Height = 13
      Caption = 'Supervisor'
    end
    object Label36: TLabel
      Left = 277
      Top = 136
      Width = 52
      Height = 13
      Caption = 'Comment'
    end
    object ListBox1: TListBox
      Left = 8
      Top = 48
      Width = 257
      Height = 97
      ItemHeight = 13
      TabOrder = 0
      OnClick = ListBox1Click
    end
    object ComboBox1: TComboBox
      Left = 280
      Top = 24
      Width = 129
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Select Animal Type'
      Items.Strings = (
        'Rat'
        'Rabbit'
        'Mice')
    end
    object ComboBox2: TComboBox
      Left = 424
      Top = 24
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Select Animal Sex'
      Items.Strings = (
        'Male'
        'Female')
    end
    object Edit10: TEdit
      Left = 480
      Top = 56
      Width = 73
      Height = 21
      TabOrder = 3
      Text = '300'
    end
    object Edit11: TEdit
      Left = 432
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'Salar Basiri'
    end
    object Edit12: TEdit
      Left = 432
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'Dr Khori'
    end
    object Edit13: TEdit
      Left = 336
      Top = 128
      Width = 217
      Height = 21
      TabOrder = 6
      Text = 'Comment'
    end
  end
  object Button17: TButton
    Left = 296
    Top = -181
    Width = 41
    Height = 21
    Caption = 'ax+b'
    TabOrder = 22
    OnClick = Button17Click
  end
  object Panel5: TPanel
    Left = 128
    Top = -157
    Width = 185
    Height = 121
    TabOrder = 23
    Visible = False
    object Label19: TLabel
      Left = 16
      Top = 8
      Width = 46
      Height = 20
      Caption = 'Scale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 19
      Top = 64
      Width = 73
      Height = 20
      Caption = 'DC Level'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit7: TEdit
      Left = 112
      Top = 8
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object Edit8: TEdit
      Left = 112
      Top = 64
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object UpDown6: TUpDown
      Left = 145
      Top = 64
      Width = 16
      Height = 21
      Associate = Edit8
      Min = -10
      Max = 10
      TabOrder = 2
    end
    object UpDown7: TUpDown
      Left = 145
      Top = 8
      Width = 16
      Height = 21
      Associate = Edit7
      Min = 1
      Max = 10
      Position = 1
      TabOrder = 3
    end
    object Button51: TButton
      Left = 64
      Top = 88
      Width = 57
      Height = 25
      Caption = 'Set'
      TabOrder = 4
      OnClick = Button51Click
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Negative'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object Button18: TButton
    Left = 296
    Top = -29
    Width = 41
    Height = 21
    Caption = 'ax+b'
    TabOrder = 24
    OnClick = Button18Click
  end
  object Button19: TButton
    Left = 296
    Top = 115
    Width = 41
    Height = 21
    Caption = 'ax+b'
    TabOrder = 25
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 296
    Top = 267
    Width = 41
    Height = 21
    Caption = 'ax+b'
    TabOrder = 26
    OnClick = Button20Click
  end
  object GroupBox6: TGroupBox
    Left = 1923
    Top = -197
    Width = 249
    Height = 777
    Caption = 'Debugging Variables Check'
    TabOrder = 27
    object Memo1: TMemo
      Left = 16
      Top = 28
      Width = 217
      Height = 397
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 18
      Top = 440
      Width = 215
      Height = 321
      Lines.Strings = (
        'Memo2')
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object auto_base: TCheckBox
    Left = 753
    Top = 59
    Width = 57
    Height = 17
    Caption = 'Auto'
    TabOrder = 28
    OnClick = auto_baseClick
  end
  object min_as_base: TCheckBox
    Left = 754
    Top = 82
    Width = 121
    Height = 17
    Caption = 'Min as Base Line'
    TabOrder = 29
    OnClick = min_as_baseClick
  end
  object SaveDialog1: TSaveDialog
    Left = 333
    Top = 538
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2
    OnTimer = Timer1Timer
    Left = 907
    Top = 65495
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 944
    Top = 65495
  end
  object AI_AO_Handle: TTimer
    Enabled = False
    Interval = 200
    OnTimer = AI_AO_HandleTimer
    Left = 146
    Top = 80
  end
  object Show_timer: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Show_timerTimer
    Left = 920
    Top = 65369
  end
  object FIR_timer: TTimer
    Enabled = False
    Interval = 7
    OnTimer = FIR_timerTimer
    Left = 880
    Top = 65369
  end
  object restitution_timer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = restitution_timerTimer
    Left = 842
    Top = 65495
  end
  object RR_calc_timer: TTimer
    Enabled = False
    OnTimer = RR_calc_timerTimer
    Left = 104
    Top = 20
  end
  object OpenDialog1: TOpenDialog
    Left = 364
    Top = 536
  end
  object reprocess_timer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = reprocess_timerTimer
    Left = 52
    Top = 60
  end
  object pre_resti_timer: TTimer
    Enabled = False
    Interval = 30
    OnTimer = pre_resti_timerTimer
    Left = 64
    Top = 16
  end
  object period_timer: TTimer
    Enabled = False
    Interval = 7
    OnTimer = period_timerTimer
    Left = 104
    Top = 221
  end
end
