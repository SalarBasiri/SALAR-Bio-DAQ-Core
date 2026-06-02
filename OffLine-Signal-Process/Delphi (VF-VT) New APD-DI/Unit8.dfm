object charts_form: Tcharts_form
  Left = 181
  Top = 23
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Charts Form'
  ClientHeight = 730
  ClientWidth = 1050
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 920
    Top = 640
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label1: TLabel
    Left = 280
    Top = 32
    Width = 30
    Height = 13
    Caption = 'Max Y'
  end
  object Label2: TLabel
    Left = 288
    Top = 544
    Width = 27
    Height = 13
    Caption = 'Min Y'
  end
  object Label4: TLabel
    Left = 384
    Top = 632
    Width = 27
    Height = 13
    Caption = 'Min X'
  end
  object Label5: TLabel
    Left = 1000
    Top = 632
    Width = 30
    Height = 13
    Caption = 'Max X'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 129
    Height = 665
    Caption = 'Vertical Axes'
    TabOrder = 0
    object apd_v: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = 'APDx'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = apd_vClick
    end
    object di_v: TRadioButton
      Left = 8
      Top = 56
      Width = 113
      Height = 17
      Caption = 'DI'
      TabOrder = 1
      OnClick = di_vClick
    end
    object s1s2_v: TRadioButton
      Left = 8
      Top = 80
      Width = 113
      Height = 17
      Caption = 'S1S2'
      TabOrder = 2
      OnClick = s1s2_vClick
    end
    object v1v2_v: TRadioButton
      Left = 8
      Top = 104
      Width = 113
      Height = 17
      Caption = 'V1V2'
      TabOrder = 3
      OnClick = v1v2_vClick
    end
    object s2v2_v: TRadioButton
      Left = 8
      Top = 128
      Width = 113
      Height = 17
      Caption = 'S2V2'
      TabOrder = 4
      OnClick = s2v2_vClick
    end
    object v1v2_1_v: TRadioButton
      Left = 8
      Top = 152
      Width = 113
      Height = 17
      Caption = '1 / V1V2 (CV)'
      Enabled = False
      TabOrder = 5
      OnClick = v1v2_1_vClick
    end
    object apd_p_di_v: TRadioButton
      Left = 8
      Top = 176
      Width = 113
      Height = 17
      Caption = 'APD+DI'
      Enabled = False
      TabOrder = 6
      OnClick = apd_p_di_vClick
    end
    object APA_v: TRadioButton
      Left = 8
      Top = 200
      Width = 113
      Height = 17
      Caption = 'APA'
      TabOrder = 7
      OnClick = APA_vClick
    end
    object s1s2_v1v2_v: TRadioButton
      Left = 8
      Top = 224
      Width = 113
      Height = 17
      Caption = 'S1S2 / V1V2'
      Enabled = False
      TabOrder = 8
      OnClick = s1s2_v1v2_vClick
    end
    object apd_di_v: TRadioButton
      Left = 8
      Top = 248
      Width = 113
      Height = 17
      Caption = 'APD / DI'
      Enabled = False
      TabOrder = 9
      OnClick = apd_di_vClick
    end
    object apd_apd_p_di_v: TRadioButton
      Left = 8
      Top = 272
      Width = 113
      Height = 17
      Caption = 'APD / (APD+DI)'
      Enabled = False
      TabOrder = 10
      OnClick = apd_apd_p_di_vClick
    end
    object apd_s1s2_v: TRadioButton
      Left = 8
      Top = 416
      Width = 113
      Height = 17
      Caption = 'APD / S1S2'
      Enabled = False
      TabOrder = 11
      OnClick = apd_s1s2_vClick
    end
    object di_s1s2_v: TRadioButton
      Left = 8
      Top = 344
      Width = 113
      Height = 17
      Caption = 'DI / S1S2'
      Enabled = False
      TabOrder = 12
      OnClick = di_s1s2_vClick
    end
    object apd_v1v2_v: TRadioButton
      Left = 8
      Top = 368
      Width = 113
      Height = 17
      Caption = 'APD / V1V2'
      Enabled = False
      TabOrder = 13
      OnClick = apd_v1v2_vClick
    end
    object di_v1v2_v: TRadioButton
      Left = 8
      Top = 392
      Width = 113
      Height = 17
      Caption = 'DI / V1V2'
      Enabled = False
      TabOrder = 14
      OnClick = di_v1v2_vClick
    end
    object di_apd_p_di_v: TRadioButton
      Left = 8
      Top = 320
      Width = 113
      Height = 17
      Caption = 'DI / (APD+DI)'
      Enabled = False
      TabOrder = 15
      OnClick = di_apd_p_di_vClick
    end
    object s1s2_apd_p_di_v: TRadioButton
      Left = 8
      Top = 296
      Width = 113
      Height = 17
      Caption = 'S1S2 / (APD+DI)'
      Enabled = False
      TabOrder = 16
      OnClick = s1s2_apd_p_di_vClick
    end
    object area_v: TRadioButton
      Left = 8
      Top = 440
      Width = 113
      Height = 17
      Caption = 'Area'
      TabOrder = 17
      OnClick = area_vClick
    end
    object rmp_v: TRadioButton
      Left = 8
      Top = 464
      Width = 113
      Height = 17
      Caption = 'RMP'
      TabOrder = 18
      OnClick = rmp_vClick
    end
    object tr_v: TRadioButton
      Left = 8
      Top = 488
      Width = 113
      Height = 17
      Caption = 'T r (Rising Time)'
      TabOrder = 19
      OnClick = tr_vClick
    end
    object tf_v: TRadioButton
      Left = 8
      Top = 512
      Width = 113
      Height = 17
      Caption = 'T f (Falling Time)'
      TabOrder = 20
      OnClick = tf_vClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 144
    Top = 8
    Width = 129
    Height = 665
    Caption = 'Horizontal Axes'
    TabOrder = 1
    object apd_h: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = 'APDx'
      TabOrder = 0
      OnClick = apd_hClick
    end
    object di_h: TRadioButton
      Left = 8
      Top = 56
      Width = 113
      Height = 17
      Caption = 'DI'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = di_hClick
    end
    object s1s2_h: TRadioButton
      Left = 8
      Top = 80
      Width = 113
      Height = 17
      Caption = 'S1S2'
      TabOrder = 2
      OnClick = s1s2_hClick
    end
    object v1v2_h: TRadioButton
      Left = 8
      Top = 104
      Width = 113
      Height = 17
      Caption = 'V1V2'
      TabOrder = 3
      OnClick = v1v2_hClick
    end
    object s2v2_h: TRadioButton
      Left = 8
      Top = 128
      Width = 113
      Height = 17
      Caption = 'S2V2'
      TabOrder = 4
      OnClick = s2v2_hClick
    end
    object v1v2_1_h: TRadioButton
      Left = 8
      Top = 152
      Width = 113
      Height = 17
      Caption = '1 / V1V2 (CV)'
      Enabled = False
      TabOrder = 5
      OnClick = v1v2_1_hClick
    end
    object apd_p_di_h: TRadioButton
      Left = 8
      Top = 176
      Width = 113
      Height = 17
      Caption = 'APD+DI'
      Enabled = False
      TabOrder = 6
      OnClick = apd_p_di_hClick
    end
    object apa_h: TRadioButton
      Left = 8
      Top = 200
      Width = 113
      Height = 17
      Caption = 'APA'
      TabOrder = 7
      OnClick = apa_hClick
    end
    object s1s2_v1v2_h: TRadioButton
      Left = 8
      Top = 224
      Width = 113
      Height = 17
      Caption = 'S1S2 / V1V2'
      Enabled = False
      TabOrder = 8
      OnClick = s1s2_v1v2_hClick
    end
    object apd_di_h: TRadioButton
      Left = 8
      Top = 248
      Width = 113
      Height = 17
      Caption = 'APD / DI'
      Enabled = False
      TabOrder = 9
      OnClick = apd_di_hClick
    end
    object apd_apd_p_di_h: TRadioButton
      Left = 8
      Top = 272
      Width = 113
      Height = 17
      Caption = 'APD / (APD+DI)'
      Enabled = False
      TabOrder = 10
      OnClick = apd_apd_p_di_hClick
    end
    object s1s2_apd_p_di_h: TRadioButton
      Left = 8
      Top = 296
      Width = 113
      Height = 17
      Caption = 'S1S2 / (APD+DI)'
      Enabled = False
      TabOrder = 11
      OnClick = s1s2_apd_p_di_hClick
    end
    object di_apd_p_di_h: TRadioButton
      Left = 8
      Top = 320
      Width = 113
      Height = 17
      Caption = 'DI / (APD+DI)'
      Enabled = False
      TabOrder = 12
      OnClick = di_apd_p_di_hClick
    end
    object di_s1s2_h: TRadioButton
      Left = 8
      Top = 344
      Width = 113
      Height = 17
      Caption = 'DI / S1S2'
      Enabled = False
      TabOrder = 13
      OnClick = di_s1s2_hClick
    end
    object apd_v1v2_h: TRadioButton
      Left = 8
      Top = 368
      Width = 113
      Height = 17
      Caption = 'APD / V1V2'
      Enabled = False
      TabOrder = 14
      OnClick = apd_v1v2_hClick
    end
    object di_v1v2_h: TRadioButton
      Left = 8
      Top = 392
      Width = 113
      Height = 17
      Caption = 'DI / V1V2'
      Enabled = False
      TabOrder = 15
      OnClick = di_v1v2_hClick
    end
    object apd_s1s2_h: TRadioButton
      Left = 8
      Top = 416
      Width = 113
      Height = 17
      Caption = 'APD / S1S2'
      Enabled = False
      TabOrder = 16
      OnClick = apd_s1s2_hClick
    end
    object area_h: TRadioButton
      Left = 8
      Top = 440
      Width = 113
      Height = 17
      Caption = 'Area'
      TabOrder = 17
      OnClick = area_hClick
    end
    object rmp_h: TRadioButton
      Left = 8
      Top = 464
      Width = 113
      Height = 17
      Caption = 'RMP'
      TabOrder = 18
      OnClick = rmp_hClick
    end
    object tr_h: TRadioButton
      Left = 8
      Top = 488
      Width = 113
      Height = 17
      Caption = 'T r (Rising Time)'
      TabOrder = 19
      OnClick = tr_hClick
    end
    object tf_h: TRadioButton
      Left = 8
      Top = 512
      Width = 113
      Height = 17
      Caption = 'T f (Falling Time)'
      TabOrder = 20
      OnClick = tf_hClick
    end
  end
  object Button1: TButton
    Left = 504
    Top = 688
    Width = 75
    Height = 25
    Caption = 'Plot'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Chart1: TChart
    Left = 328
    Top = 8
    Width = 713
    Height = 617
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    BottomAxis.Title.Caption = 'DI (ms)'
    LeftAxis.Title.Caption = 'APD (ms)'
    Legend.Visible = False
    View3D = False
    Color = clBtnHighlight
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnDblClick = Chart1DblClick
    OnMouseMove = Chart1MouseMove
    object Series1: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clAqua
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
  end
  object Button2: TButton
    Left = 600
    Top = 688
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 696
    Top = 688
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 5
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 680
    Width = 265
    Height = 49
    Caption = 'DI Type'
    TabOrder = 6
    object real_di_rbtn: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Real'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 136
      Top = 24
      Width = 113
      Height = 17
      Caption = 'V1V2 - APD'
      TabOrder = 1
    end
  end
  object max_y_edit: TEdit
    Left = 280
    Top = 48
    Width = 33
    Height = 21
    TabOrder = 7
    Text = '200'
    Visible = False
    OnChange = max_y_editChange
  end
  object min_y_edit: TEdit
    Left = 288
    Top = 560
    Width = 33
    Height = 21
    TabOrder = 8
    Text = '0'
    Visible = False
    OnChange = min_y_editChange
  end
  object min_x_edit: TEdit
    Left = 384
    Top = 648
    Width = 41
    Height = 21
    TabOrder = 9
    Text = '0'
    Visible = False
    OnChange = min_x_editChange
  end
  object max_x_edit: TEdit
    Left = 1000
    Top = 648
    Width = 41
    Height = 21
    TabOrder = 10
    Text = '200'
    Visible = False
    OnChange = max_x_editChange
  end
  object auto_scale_checkbox: TCheckBox
    Left = 752
    Top = 640
    Width = 81
    Height = 17
    Caption = 'Auto Scale'
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = auto_scale_checkboxClick
  end
  object find_click_index_btn: TButton
    Left = 840
    Top = 688
    Width = 113
    Height = 25
    Caption = 'find_click_index_btn'
    TabOrder = 12
    Visible = False
    OnClick = find_click_index_btnClick
  end
  object CheckBox1: TCheckBox
    Left = 608
    Top = 640
    Width = 97
    Height = 17
    Caption = 'Grid'
    Checked = True
    State = cbChecked
    TabOrder = 13
    OnClick = CheckBox1Click
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 288
    Top = 472
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 32
    object DeleteThisPoint1: TMenuItem
      Caption = 'Delete This Point'
      OnClick = DeleteThisPoint1Click
    end
  end
end
