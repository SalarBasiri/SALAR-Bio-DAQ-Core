object AF_form: TAF_form
  Left = 192
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'AF Protocol'
  ClientHeight = 547
  ClientWidth = 877
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 209
    Caption = 'Normal Distribution Criteria (Mean, Deviation)'
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Pulse No:'
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 93
      Height = 13
      Caption = 'Mean Latency (ms):'
    end
    object Label3: TLabel
      Left = 32
      Top = 96
      Width = 94
      Height = 13
      Caption = 'Standard Deviation:'
    end
    object Label4: TLabel
      Left = 32
      Top = 128
      Width = 73
      Height = 13
      Caption = 'High Time (ms):'
    end
    object Edit1: TEdit
      Left = 176
      Top = 24
      Width = 80
      Height = 21
      TabOrder = 0
      Text = '3000'
    end
    object Edit2: TEdit
      Left = 176
      Top = 56
      Width = 80
      Height = 21
      TabOrder = 1
      Text = '80'
    end
    object Edit3: TEdit
      Left = 176
      Top = 88
      Width = 80
      Height = 21
      TabOrder = 2
      Text = '20'
    end
    object Edit4: TEdit
      Left = 176
      Top = 120
      Width = 80
      Height = 21
      TabOrder = 3
      Text = '2'
    end
    object Button1: TButton
      Left = 88
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 224
    Width = 281
    Height = 257
    Caption = 'Normal Distribution Criteria (Max , Min)'
    TabOrder = 1
    object Label5: TLabel
      Left = 40
      Top = 40
      Width = 46
      Height = 13
      Caption = 'Pulse No:'
    end
    object Label6: TLabel
      Left = 40
      Top = 80
      Width = 45
      Height = 13
      Caption = 'Max (ms):'
    end
    object Label7: TLabel
      Left = 40
      Top = 120
      Width = 42
      Height = 13
      Caption = 'Min (ms):'
    end
    object Label8: TLabel
      Left = 40
      Top = 160
      Width = 47
      Height = 13
      Caption = 'High (ms):'
    end
    object Edit5: TEdit
      Left = 168
      Top = 32
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '3000'
    end
    object Edit6: TEdit
      Left = 168
      Top = 72
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '100'
    end
    object Edit7: TEdit
      Left = 168
      Top = 112
      Width = 90
      Height = 21
      TabOrder = 2
      Text = '50'
    end
    object Edit8: TEdit
      Left = 168
      Top = 152
      Width = 90
      Height = 21
      TabOrder = 3
      Text = '2'
    end
    object Button2: TButton
      Left = 96
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 48
    Top = 496
    Width = 193
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Chart1: TChart
    Left = 296
    Top = 8
    Width = 561
    Height = 529
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Normal Distribution')
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    TabOrder = 3
    object Series1: TLineSeries
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
end
