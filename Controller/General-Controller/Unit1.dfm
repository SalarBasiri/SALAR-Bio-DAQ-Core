object Form1: TForm1
  Left = 261
  Top = 137
  Width = 1155
  Height = 598
  Caption = 
    'General TeleLab Controller (Ischemic Research Lab) - Idea Land S' +
    'mart Solutions Co Ltd'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox5: TGroupBox
    Left = 7
    Top = 7
    Width = 186
    Height = 250
    Caption = 'Hardware Setting'
    Color = 9630593
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object ComboBox1: TComboBox
      Left = 33
      Top = 26
      Width = 117
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Text = 'COM Port'
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
    end
    object ComboBox2: TComboBox
      Left = 33
      Top = 59
      Width = 117
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      Text = 'BaudRate'
      Items.Strings = (
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200')
    end
    object terminal: TMemo
      Left = 13
      Top = 117
      Width = 150
      Height = 116
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
    end
    object Button9: TButton
      Left = 33
      Top = 91
      Width = 117
      Height = 20
      Caption = 'Connect'
      TabOrder = 3
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 161
      Top = 214
      Width = 14
      Height = 20
      Caption = 'i'
      TabOrder = 4
      OnClick = Button10Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 200
    Top = 8
    Width = 457
    Height = 249
    Caption = 'Servo Motor Control'
    Color = 15773180
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 19
      Top = 175
      Width = 430
      Height = 58
      Caption = 'Channel 4'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label12: TLabel
        Left = 364
        Top = 20
        Width = 37
        Height = 16
        Caption = 'PWM'
      end
      object TrackBar4: TTrackBar
        Left = 78
        Top = 20
        Width = 287
        Height = 29
        Max = 250
        Min = 1
        Position = 128
        TabOrder = 0
        OnChange = TrackBar4Change
      end
      object Button4: TButton
        Left = 13
        Top = 26
        Width = 61
        Height = 20
        Caption = 'Stop'
        TabOrder = 1
        OnClick = Button4Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 19
      Top = 119
      Width = 430
      Height = 58
      Caption = 'Channel 3'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label11: TLabel
        Left = 371
        Top = 20
        Width = 37
        Height = 16
        Caption = 'PWM'
      end
      object TrackBar3: TTrackBar
        Left = 78
        Top = 20
        Width = 287
        Height = 29
        Max = 250
        Min = 1
        Position = 128
        TabOrder = 0
        OnChange = TrackBar3Change
      end
      object Button3: TButton
        Left = 13
        Top = 26
        Width = 61
        Height = 20
        Caption = 'Stop'
        TabOrder = 1
        OnClick = Button3Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 19
      Top = 63
      Width = 430
      Height = 58
      Caption = 'Channel 2'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label10: TLabel
        Left = 371
        Top = 20
        Width = 37
        Height = 16
        Caption = 'PWM'
      end
      object TrackBar2: TTrackBar
        Left = 78
        Top = 20
        Width = 287
        Height = 29
        Max = 250
        Min = 1
        Position = 128
        TabOrder = 0
        OnChange = TrackBar2Change
      end
      object Button2: TButton
        Left = 13
        Top = 26
        Width = 61
        Height = 20
        Caption = 'Stop'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 19
      Top = 15
      Width = 430
      Height = 50
      Caption = 'Channel 1'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label9: TLabel
        Left = 371
        Top = 20
        Width = 37
        Height = 16
        Caption = 'PWM'
      end
      object TrackBar1: TTrackBar
        Left = 78
        Top = 16
        Width = 293
        Height = 28
        Max = 250
        Min = 1
        Position = 128
        TabOrder = 0
        OnChange = TrackBar1Change
      end
      object Button1: TButton
        Left = 13
        Top = 20
        Width = 61
        Height = 20
        Caption = 'Stop'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 264
    Width = 185
    Height = 289
    Caption = 'Relays Control'
    Color = 16579279
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object GroupBox8: TGroupBox
      Left = 8
      Top = 24
      Width = 161
      Height = 60
      Caption = 'Relay 1 '
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 8
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Open'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 88
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Close'
        TabOrder = 1
        OnClick = RadioButton2Click
      end
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = 88
      Width = 161
      Height = 60
      Caption = 'Relay 2'
      TabOrder = 1
      object RadioButton3: TRadioButton
        Left = 8
        Top = 32
        Width = 57
        Height = 17
        Caption = 'Open'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton3Click
      end
      object RadioButton4: TRadioButton
        Left = 88
        Top = 32
        Width = 65
        Height = 17
        Caption = 'Close'
        TabOrder = 1
        OnClick = RadioButton4Click
      end
    end
    object GroupBox10: TGroupBox
      Left = 8
      Top = 152
      Width = 161
      Height = 60
      Caption = 'Relay 3'
      TabOrder = 2
      object RadioButton5: TRadioButton
        Left = 8
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Open'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton5Click
      end
      object RadioButton6: TRadioButton
        Left = 88
        Top = 24
        Width = 57
        Height = 17
        Caption = 'Close'
        TabOrder = 1
        OnClick = RadioButton6Click
      end
    end
    object GroupBox11: TGroupBox
      Left = 8
      Top = 216
      Width = 161
      Height = 60
      Caption = 'Relay 4'
      TabOrder = 3
      object RadioButton7: TRadioButton
        Left = 8
        Top = 32
        Width = 60
        Height = 17
        Caption = 'Open'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton7Click
      end
      object RadioButton8: TRadioButton
        Left = 88
        Top = 32
        Width = 60
        Height = 17
        Caption = 'Close'
        TabOrder = 1
        OnClick = RadioButton8Click
      end
    end
  end
  object GroupBox12: TGroupBox
    Left = 200
    Top = 264
    Width = 289
    Height = 289
    Caption = 'DC Motor Control'
    Color = 10921727
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object GroupBox13: TGroupBox
      Left = 24
      Top = 24
      Width = 250
      Height = 60
      Caption = 'Motor 1'
      TabOrder = 0
      object RadioButton9: TRadioButton
        Left = 16
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Stop'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton9Click
      end
      object RadioButton10: TRadioButton
        Left = 88
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Left'
        TabOrder = 1
        OnClick = RadioButton10Click
      end
      object RadioButton11: TRadioButton
        Left = 168
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Right'
        TabOrder = 2
        OnClick = RadioButton11Click
      end
    end
    object GroupBox14: TGroupBox
      Left = 24
      Top = 88
      Width = 250
      Height = 60
      Caption = 'Motor 2'
      TabOrder = 1
      object RadioButton12: TRadioButton
        Left = 16
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Stop'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton12Click
      end
      object RadioButton13: TRadioButton
        Left = 88
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Left'
        TabOrder = 1
        OnClick = RadioButton13Click
      end
      object RadioButton14: TRadioButton
        Left = 168
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Right'
        TabOrder = 2
        OnClick = RadioButton14Click
      end
    end
    object GroupBox15: TGroupBox
      Left = 24
      Top = 152
      Width = 250
      Height = 60
      Caption = 'Motor 3'
      TabOrder = 2
      object RadioButton15: TRadioButton
        Left = 16
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Stop'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton15Click
      end
      object RadioButton16: TRadioButton
        Left = 88
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Left'
        TabOrder = 1
        OnClick = RadioButton16Click
      end
      object RadioButton17: TRadioButton
        Left = 168
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Right'
        TabOrder = 2
        OnClick = RadioButton17Click
      end
    end
    object GroupBox16: TGroupBox
      Left = 24
      Top = 216
      Width = 250
      Height = 60
      Caption = 'Motor 4'
      TabOrder = 3
      object RadioButton18: TRadioButton
        Left = 16
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Stop'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton18Click
      end
      object RadioButton19: TRadioButton
        Left = 88
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Left'
        TabOrder = 1
        OnClick = RadioButton19Click
      end
      object RadioButton20: TRadioButton
        Left = 168
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Right'
        TabOrder = 2
        OnClick = RadioButton20Click
      end
    end
  end
  object GroupBox18: TGroupBox
    Left = 496
    Top = 260
    Width = 161
    Height = 293
    Caption = 'Digital Input'
    Color = 10864569
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object Shape1: TShape
      Left = 80
      Top = 40
      Width = 26
      Height = 25
      Pen.Color = clNavy
      Shape = stCircle
    end
    object Shape2: TShape
      Left = 81
      Top = 85
      Width = 25
      Height = 26
      Pen.Color = clNavy
      Shape = stCircle
    end
    object Shape3: TShape
      Left = 80
      Top = 124
      Width = 26
      Height = 25
      Pen.Color = clNavy
      Shape = stCircle
    end
    object Shape4: TShape
      Left = 81
      Top = 169
      Width = 25
      Height = 25
      Pen.Color = clNavy
      Shape = stCircle
    end
    object Label1: TLabel
      Left = 42
      Top = 48
      Width = 27
      Height = 16
      Caption = 'Bit1'
    end
    object Label2: TLabel
      Left = 42
      Top = 87
      Width = 27
      Height = 16
      Caption = 'Bit2'
    end
    object Label3: TLabel
      Left = 42
      Top = 132
      Width = 27
      Height = 16
      Caption = 'Bit3'
    end
    object Label4: TLabel
      Left = 42
      Top = 177
      Width = 27
      Height = 16
      Caption = 'Bit4'
    end
    object Button6: TButton
      Left = 26
      Top = 221
      Width = 105
      Height = 27
      Caption = 'Read DI'
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button8: TButton
      Left = 26
      Top = 254
      Width = 105
      Height = 26
      Caption = 'Start-Stop'
      TabOrder = 1
      OnClick = Button8Click
    end
  end
  object GroupBox19: TGroupBox
    Left = 664
    Top = 8
    Width = 466
    Height = 545
    Caption = 'Analog Input (Sensors)'
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object Label5: TLabel
      Left = 38
      Top = 30
      Width = 59
      Height = 23
      Caption = 'ADC0:'
      Color = 7697919
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 40
      Top = 63
      Width = 59
      Height = 23
      Caption = 'ADC1:'
      Color = 8454016
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 258
      Top = 30
      Width = 59
      Height = 23
      Caption = 'ADC2:'
      Color = 16741749
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 259
      Top = 56
      Width = 59
      Height = 23
      Caption = 'ADC3:'
      Color = 8454143
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Chart1: TChart
      Left = 16
      Top = 96
      Width = 440
      Height = 392
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'ADC Values')
      Legend.Visible = False
      View3D = False
      Color = clWhite
      TabOrder = 0
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
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
      object Series2: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clLime
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
      object Series4: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clYellow
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
    object Button5: TButton
      Left = 280
      Top = 494
      Width = 156
      Height = 27
      Caption = 'Read ADC'
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button7: TButton
      Left = 46
      Top = 494
      Width = 104
      Height = 27
      Caption = 'Start-Stop'
      TabOrder = 2
      OnClick = Button7Click
    end
  end
  object SerialNG1: TSerialPortNG
    CommPort = 'COM2'
    RTOCharDelayTime = 200
    RTOExtraDelayTime = 100
    ClusterSize = 100
    RxQueueSize = 200
    TxQueueSize = 200
    WTOCharDelayTime = 200
    WTOExtraDelayTime = 100
    ErrorNoise = 255
    OnRxClusterEvent = SerialNG1RxClusterEvent
    Left = 200
    Top = 96
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 673
    Top = 506
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer2Timer
    Left = 881
    Top = 514
  end
end
