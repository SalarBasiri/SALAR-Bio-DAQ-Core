object Form8: TForm8
  Left = 192
  Top = 124
  Width = 786
  Height = 509
  Caption = 'AF Pulses'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 304
    Top = 16
    Width = 457
    Height = 401
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Normal Deviation')
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 0
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
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
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clLime
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 201
    Caption = 'Normal Distribution Criteria'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Pulse No:'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 93
      Height = 13
      Caption = 'Mean Latency (ms):'
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 94
      Height = 13
      Caption = 'Standard Deviation:'
    end
    object Label4: TLabel
      Left = 16
      Top = 128
      Width = 73
      Height = 13
      Caption = 'High Time (ms):'
    end
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '3000'
    end
    object Edit2: TEdit
      Left = 120
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '200'
    end
    object Edit3: TEdit
      Left = 120
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '30'
    end
    object Edit4: TEdit
      Left = 120
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '2'
    end
    object Button2: TButton
      Left = 94
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Button1: TButton
    Left = 336
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 216
    Width = 281
    Height = 201
    Caption = 'Normal Distribution Based on Max and Min Period'
    TabOrder = 3
    object Label5: TLabel
      Left = 24
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Pulse No:'
    end
    object Label6: TLabel
      Left = 24
      Top = 72
      Width = 45
      Height = 13
      Caption = 'Max (ms):'
    end
    object Label7: TLabel
      Left = 24
      Top = 104
      Width = 42
      Height = 13
      Caption = 'Min (ms):'
    end
    object Label8: TLabel
      Left = 24
      Top = 136
      Width = 47
      Height = 13
      Caption = 'High (ms):'
    end
    object Edit5: TEdit
      Left = 128
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '3000'
    end
    object Edit6: TEdit
      Left = 128
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '80'
    end
    object Edit7: TEdit
      Left = 128
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '30'
    end
    object Edit8: TEdit
      Left = 128
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '2'
    end
    object Button3: TButton
      Left = 96
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 56
    Top = 432
  end
end
