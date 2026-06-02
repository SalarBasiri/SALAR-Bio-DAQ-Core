object Multi_Chart_Show: TMulti_Chart_Show
  Left = 237
  Top = 48
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Multi Score Charts'
  ClientHeight = 681
  ClientWidth = 988
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 680
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 413
    Top = 683
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 977
    Height = 563
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Multi Score Chart')
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -13
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = []
    Legend.TextStyle = ltsPlain
    Legend.Visible = False
    Color = clBtnHighlight
    TabOrder = 0
    object MAP_Show_Checkbox: TCheckBox
      Left = 1584
      Top = 16
      Width = 73
      Height = 17
      Caption = 'MAP'
      Checked = True
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = MAP_Show_CheckboxClick
    end
    object Stimulus_Show_Checkbox: TCheckBox
      Left = 1440
      Top = 16
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
      TabOrder = 1
      OnClick = Stimulus_Show_CheckboxClick
    end
    object Contraction_Show_Checkbox: TCheckBox
      Left = 1696
      Top = 16
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
      TabOrder = 2
      OnClick = Contraction_Show_CheckboxClick
    end
    object Edit1: TEdit
      Left = 232
      Top = 543
      Width = 57
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '100'
      Visible = False
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 432
      Top = 543
      Width = 57
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '150'
      Visible = False
      OnChange = Edit2Change
    end
    object UpDown1: TUpDown
      Left = 289
      Top = 540
      Width = 16
      Height = 22
      Associate = Edit1
      Max = 200
      Position = 100
      TabOrder = 5
      Visible = False
    end
    object UpDown2: TUpDown
      Left = 489
      Top = 540
      Width = 16
      Height = 22
      Associate = Edit2
      Max = 200
      Position = 150
      TabOrder = 6
      Visible = False
    end
    object CheckBox1: TCheckBox
      Left = 40
      Top = 8
      Width = 105
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
      TabOrder = 7
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 160
      Top = 8
      Width = 105
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
      TabOrder = 8
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 280
      Top = 8
      Width = 105
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
      TabOrder = 9
      OnClick = CheckBox3Click
    end
    object TrackBar1: TTrackBar
      Left = 744
      Top = 520
      Width = 225
      Height = 25
      Max = 1000
      Position = 500
      TabOrder = 10
      OnChange = TrackBar1Change
    end
    object Series1: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 170
      DrawArea = True
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
    object Series2: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 41984
      DrawArea = True
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
    object Series3: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 11141120
      DrawArea = True
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
    object Series13: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clWhite
      DrawArea = True
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
    object Series4: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 251
      DrawArea = True
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
    object Series5: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 64768
      DrawArea = True
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
    object Series6: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 16730184
      DrawArea = True
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
    object Series14: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clWhite
      DrawArea = True
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
    object Series7: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 8421631
      DrawArea = True
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
    object Series8: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 10354589
      DrawArea = True
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
    object Series9: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 16749459
      DrawArea = True
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
    object Series15: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clWhite
      DrawArea = True
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
    object Series10: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 12303359
      DrawArea = True
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
    object Series11: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 13434828
      DrawArea = True
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
    object Series12: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = 16766421
      DrawArea = True
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
    object Series16: TAreaSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clWhite
      DrawArea = True
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
  object GroupBox3: TGroupBox
    Left = 0
    Top = 576
    Width = 985
    Height = 99
    Caption = 
      'Plot Multiple Results (Add Results then Double Click on Desired ' +
      'Items)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object files_name_list: TListBox
      Left = 8
      Top = 32
      Width = 545
      Height = 57
      ItemHeight = 16
      TabOrder = 0
      OnDblClick = files_name_listDblClick
    end
    object Button7: TButton
      Left = 568
      Top = 32
      Width = 105
      Height = 25
      Caption = 'Add ...'
      TabOrder = 1
      OnClick = Button7Click
    end
    object file_data_memo: TMemo
      Left = 16
      Top = 96
      Width = 929
      Height = 73
      Lines.Strings = (
        'file_data_memo')
      ScrollBars = ssBoth
      TabOrder = 2
      Visible = False
    end
    object Memo1: TMemo
      Left = 688
      Top = 24
      Width = 289
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 3
    end
    object Button1: TButton
      Left = 568
      Top = 64
      Width = 105
      Height = 25
      Caption = 'Remove'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Score_btn: TButton
      Left = 752
      Top = 32
      Width = 105
      Height = 25
      Caption = 'Score :)'
      Enabled = False
      TabOrder = 5
      OnClick = Score_btnClick
    end
  end
  object Button9: TButton
    Left = 888
    Top = 480
    Width = 65
    Height = 25
    Caption = 'Clear All'
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 296
    Top = 168
    Width = 473
    Height = 185
    Caption = 'File Raw Data'
    TabOrder = 3
    Visible = False
    object time_list: TListBox
      Left = 48
      Top = 40
      Width = 89
      Height = 97
      ItemHeight = 13
      TabOrder = 0
    end
    object stimulus_list: TListBox
      Left = 168
      Top = 40
      Width = 73
      Height = 97
      ItemHeight = 13
      TabOrder = 1
    end
    object map_list: TListBox
      Left = 272
      Top = 40
      Width = 73
      Height = 97
      ItemHeight = 13
      TabOrder = 2
    end
    object contraction_list: TListBox
      Left = 376
      Top = 40
      Width = 73
      Height = 97
      ItemHeight = 13
      TabOrder = 3
    end
    object plot_button: TButton
      Left = 248
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Plot'
      TabOrder = 4
      OnClick = plot_buttonClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 663
    Top = 159
  end
end
