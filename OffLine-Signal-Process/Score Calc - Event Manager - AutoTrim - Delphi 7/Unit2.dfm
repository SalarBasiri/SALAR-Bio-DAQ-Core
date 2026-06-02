object Form2: TForm2
  Left = 235
  Top = 24
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Periods of Signals Spectrum'
  ClientHeight = 713
  ClientWidth = 1008
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 668
    Top = 544
    Width = 334
    Height = 20
    Caption = 'Click on Chart to Select T1 of Integration.'
    Color = 16711808
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 668
    Top = 568
    Width = 334
    Height = 20
    Caption = 'Click on Chart to Select T2 of Integration.'
    Color = 33023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 1001
    Height = 537
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Periods (ms) Spectrum')
    BottomAxis.Title.Caption = 'Period of Signals (ms)'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -13
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'Amplitude (No)'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -13
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 0
    OnClick = Chart1Click
    OnMouseMove = Chart1MouseMove
    object Label7: TLabel
      Left = 96
      Top = 768
      Width = 32
      Height = 13
      Caption = 'Label7'
    end
    object CheckBox1: TCheckBox
      Left = 752
      Top = 8
      Width = 81
      Height = 17
      Caption = 'MAP'
      Checked = True
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 840
      Top = 8
      Width = 145
      Height = 17
      Caption = 'Contraction'
      Checked = True
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 624
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Stimulus'
      Checked = True
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 80
      Top = 8
      Width = 217
      Height = 17
      Caption = 'Manual Area Calculator'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBox4Click
    end
    object Button2: TButton
      Left = 8
      Top = 480
      Width = 25
      Height = 25
      Caption = 'Y+'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 504
      Width = 25
      Height = 25
      Caption = 'Y -'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clLime
      BarPen.Visible = False
      BarWidthPercent = 100
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series3: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clBlue
      BarPen.Visible = False
      BarWidthPercent = 100
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clRed
      BarPen.Visible = False
      BarWidthPercent = 100
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series4: TPointSeries
      Marks.ArrowLength = 20
      Marks.Style = smsXValue
      Marks.Visible = True
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
    object Series5: TPointSeries
      Marks.ArrowLength = 20
      Marks.Style = smsXValue
      Marks.Visible = True
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
  object Memo1: TMemo
    Left = 792
    Top = 552
    Width = 67
    Height = 73
    Lines.Strings = (
      'MAP')
    ScrollBars = ssBoth
    TabOrder = 1
    Visible = False
  end
  object Memo2: TMemo
    Left = 888
    Top = 552
    Width = 91
    Height = 137
    Lines.Strings = (
      'Contraction'
      '')
    ScrollBars = ssBoth
    TabOrder = 2
    Visible = False
  end
  object Button1: TButton
    Left = 888
    Top = 504
    Width = 113
    Height = 33
    Caption = 'Save Results'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo3: TMemo
    Left = 792
    Top = 624
    Width = 91
    Height = 73
    Lines.Strings = (
      'Stimulus')
    ScrollBars = ssBoth
    TabOrder = 4
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 592
    Width = 665
    Height = 57
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 48
      Height = 16
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 29
      Width = 48
      Height = 16
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 648
    Width = 665
    Height = 57
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label3: TLabel
      Left = 8
      Top = 5
      Width = 48
      Height = 16
      Caption = 'Label3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 29
      Width = 48
      Height = 16
      Caption = 'Label4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 536
    Width = 665
    Height = 57
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object Label5: TLabel
      Left = 10
      Top = 5
      Width = 48
      Height = 16
      Caption = 'Label5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 29
      Width = 48
      Height = 16
      Caption = 'Label6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 672
    Top = 592
    Width = 329
    Height = 121
    Caption = 'Integration Results'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object Label10: TLabel
      Left = 24
      Top = 32
      Width = 65
      Height = 20
      Caption = 'Label10'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 56
      Width = 65
      Height = 20
      Caption = 'Label11'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 24
      Top = 80
      Width = 65
      Height = 20
      Caption = 'Label12'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Desired_area_memo: TMemo
    Left = 800
    Top = 616
    Width = 185
    Height = 89
    Lines.Strings = (
      'Desired_area_memo')
    ScrollBars = ssBoth
    TabOrder = 9
    Visible = False
  end
end
