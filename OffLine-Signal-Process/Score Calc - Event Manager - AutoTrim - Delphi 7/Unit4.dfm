object zoom_form: Tzoom_form
  Left = 28
  Top = 34
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Zoom Window'
  ClientHeight = 718
  ClientWidth = 1351
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object a_label: TLabel
    Left = 16
    Top = 640
    Width = 34
    Height = 13
    Caption = 'a_label'
    Visible = False
  end
  object b_label: TLabel
    Left = 16
    Top = 656
    Width = 34
    Height = 13
    Caption = 'b_label'
    Visible = False
  end
  object Label5: TLabel
    Left = 48
    Top = 0
    Width = 102
    Height = 20
    Caption = 'Zoom into ->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object signal_name_label: TLabel
    Left = 160
    Top = 0
    Width = 38
    Height = 20
    Caption = 'MAP'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 896
    Top = 0
    Width = 395
    Height = 20
    Caption = 'Adjust max and min for amplitude and ms setting.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Chart1: TChart
    Left = 56
    Top = 24
    Width = 1217
    Height = 617
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 0
    object stimulus_show: TCheckBox
      Left = 824
      Top = 0
      Width = 89
      Height = 17
      Caption = 'Stimulus'
      Checked = True
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = stimulus_showClick
    end
    object MAP_show: TCheckBox
      Left = 928
      Top = 8
      Width = 65
      Height = 17
      Caption = 'MAP'
      Checked = True
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = MAP_showClick
    end
    object contraction_show: TCheckBox
      Left = 1008
      Top = 0
      Width = 97
      Height = 17
      Caption = 'Contraction'
      Checked = True
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = contraction_showClick
    end
    object CheckBox1: TCheckBox
      Left = 824
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Trim'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 1008
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Trim'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox2Click
    end
    object Series1: TLineSeries
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
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clAqua
      LinePen.Width = 3
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
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 16744448
      LinePen.Width = 3
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
    object Series4: TLineSeries
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
    object Series5: TLineSeries
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
    object Series8: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clTeal
      LinePen.Width = 3
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
      SeriesColor = 16744448
      LinePen.Width = 3
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
      LinePen.Width = 3
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
  object Button1: TButton
    Left = 0
    Top = 672
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 24
    Width = 65
    Height = 617
    Color = clAqua
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 24
      Caption = 'Max'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object max_trackbar: TTrackBar
      Left = 8
      Top = 32
      Width = 45
      Height = 561
      Max = 1000
      Orientation = trVertical
      TabOrder = 0
      OnChange = max_trackbarChange
    end
  end
  object Panel2: TPanel
    Left = 1272
    Top = 16
    Width = 73
    Height = 625
    Color = 16744576
    TabOrder = 3
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 35
      Height = 24
      Caption = 'Min'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object min_trackbar: TTrackBar
      Left = 12
      Top = 32
      Width = 45
      Height = 577
      Max = 1000
      Orientation = trVertical
      TabOrder = 0
      OnChange = min_trackbarChange
    end
  end
  object Panel3: TPanel
    Left = 64
    Top = 640
    Width = 593
    Height = 73
    Color = 4227072
    TabOrder = 4
    object Label8: TLabel
      Left = 200
      Top = 8
      Width = 231
      Height = 20
      Caption = 'Time Period (ms) higher than'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object min_ms_label: TLabel
      Left = 456
      Top = 8
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object min_ms_trackbar: TTrackBar
      Left = 24
      Top = 32
      Width = 553
      Height = 45
      Max = 1000
      TabOrder = 0
      OnChange = min_ms_trackbarChange
    end
    object CheckBox3: TCheckBox
      Left = 32
      Top = 8
      Width = 129
      Height = 17
      Caption = 'Line Visible'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox3Click
    end
  end
  object Panel4: TPanel
    Left = 656
    Top = 640
    Width = 617
    Height = 73
    Color = 16744448
    TabOrder = 5
    object Label9: TLabel
      Left = 200
      Top = 8
      Width = 233
      Height = 20
      Caption = 'Time Periode (ms) lower than'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object max_ms_label: TLabel
      Left = 472
      Top = 8
      Width = 12
      Height = 24
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object max_ms_trackbar: TTrackBar
      Left = 16
      Top = 32
      Width = 521
      Height = 45
      Max = 1000
      TabOrder = 0
      OnChange = max_ms_trackbarChange
    end
    object CheckBox4: TCheckBox
      Left = 24
      Top = 8
      Width = 129
      Height = 17
      Caption = 'Line Visible'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox4Click
    end
  end
  object Chart2: TChart
    Left = 384
    Top = 696
    Width = 793
    Height = 73
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    AxisVisible = False
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 1000.000000000000000000
    BottomAxis.Minimum = -1000.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 3.000000000000000000
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 6
    Visible = False
    object Series6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 4227072
      LinePen.Width = 7
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
    object Series7: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 8421631
      LinePen.Width = 7
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
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 864
    Top = 544
  end
end
