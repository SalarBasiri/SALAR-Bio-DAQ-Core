object stop_protocol_form: Tstop_protocol_form
  Left = 486
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Stop Protocol and What?'
  ClientHeight = 247
  ClientWidth = 275
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 24
    Width = 6
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 56
    Width = 6
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 24
    Width = 153
    Height = 17
    Caption = 'BCL Dialog Base'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 32
    Top = 56
    Width = 153
    Height = 17
    Caption = 'Manual Test Dialog Base'
    TabOrder = 1
  end
  object RadioButton3: TRadioButton
    Left = 32
    Top = 88
    Width = 153
    Height = 17
    Caption = 'High Output Condition'
    TabOrder = 2
  end
  object RadioButton4: TRadioButton
    Left = 32
    Top = 120
    Width = 153
    Height = 17
    Caption = 'Low Output Condition'
    TabOrder = 3
  end
  object RadioButton5: TRadioButton
    Left = 32
    Top = 152
    Width = 89
    Height = 17
    Caption = 'New Base :'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 128
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 128
    Top = 152
    Width = 57
    Height = 21
    TabOrder = 6
    Text = '250'
  end
end
