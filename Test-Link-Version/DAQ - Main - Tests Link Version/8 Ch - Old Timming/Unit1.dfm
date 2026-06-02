object Impedance_form: TImpedance_form
  Left = 325
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Impedance Chart'
  ClientHeight = 680
  ClientWidth = 975
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 808
    Top = 16
    Width = 120
    Height = 13
    Caption = 'Impedance vs Frequency'
  end
  object Chart1: TChart
    Left = 0
    Top = 480
    Width = 801
    Height = 161
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'V1')
    BottomAxis.Labels = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 2.000000000000000000
    LeftAxis.Minimum = -2.000000000000000000
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 0
    object Label3: TLabel
      Left = 48
      Top = 8
      Width = 78
      Height = 16
      Caption = 'Frequency:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
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
  end
  object Chart2: TChart
    Left = 0
    Top = 648
    Width = 801
    Height = 153
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'V2')
    BottomAxis.Labels = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 2.000000000000000000
    LeftAxis.Minimum = -2.000000000000000000
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 1
    object Series2: TLineSeries
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
  end
  object Chart3: TChart
    Left = 0
    Top = 0
    Width = 801
    Height = 481
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Impedance vs Frequency')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 1000.000000000000000000
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 2
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = 33023
      LinePen.Width = 3
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 808
    Width = 801
    Height = 73
    Caption = 'Setting'
    TabOrder = 3
    object Label1: TLabel
      Left = 120
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Add:'
    end
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 152
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '10'
    end
    object Button2: TButton
      Left = 216
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Add'
      Enabled = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 360
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Calculate'
      Enabled = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 480
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Clear all'
      Enabled = False
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 584
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Save Chart'
      Enabled = False
      TabOrder = 5
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 680
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Save Data'
      Enabled = False
      TabOrder = 6
      OnClick = Button6Click
    end
  end
  object Memo1: TMemo
    Left = 808
    Top = 32
    Width = 161
    Height = 849
    TabOrder = 4
  end
  object SaveDialog1: TSaveDialog
    Left = 768
    Top = 776
  end
end
