object sdc_daq_dialog_form: Tsdc_daq_dialog_form
  Left = 158
  Top = 55
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Open and Load SDC-DAQ Data File'
  ClientHeight = 338
  ClientWidth = 329
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
    Left = 16
    Top = 128
    Width = 96
    Height = 16
    Caption = 'Animal Type: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 152
    Width = 86
    Height = 16
    Caption = 'Animal Sex: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 176
    Width = 100
    Height = 16
    Caption = 'Animal Weigth'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 200
    Width = 90
    Height = 16
    Caption = 'Researcher: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 224
    Width = 76
    Height = 16
    Caption = 'Supervisor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 248
    Width = 53
    Height = 16
    Caption = 'Coment'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 272
    Width = 88
    Height = 16
    Caption = 'Time Stamp:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 8
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'Select Stimulus Channel'
    Items.Strings = (
      'Ch 0'
      'Ch 1'
      'Ch 2'
      'Ch 3')
  end
  object ComboBox2: TComboBox
    Left = 16
    Top = 32
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Select MAP Channel'
    Items.Strings = (
      'Ch 0'
      'Ch 1'
      'Ch 2'
      'Ch 3')
  end
  object ComboBox3: TComboBox
    Left = 16
    Top = 56
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Select Contraction Channel'
    Items.Strings = (
      'Ch 0'
      'Ch 1'
      'Ch 2'
      'Ch 3')
  end
  object Button1: TButton
    Left = 208
    Top = 24
    Width = 105
    Height = 33
    Caption = 'Open and Load'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Defaults: TButton
    Left = 48
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Defaults'
    TabOrder = 4
    OnClick = DefaultsClick
  end
  object Button2: TButton
    Left = 136
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 5
    OnClick = Button2Click
  end
end
