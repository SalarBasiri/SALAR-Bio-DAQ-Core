object Recovery_form: TRecovery_form
  Left = 771
  Top = 249
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recovery Form'
  ClientHeight = 366
  ClientWidth = 254
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 43
    Height = 13
    Caption = 'Pulse No'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 63
    Height = 13
    Caption = 'Latency (low)'
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 53
    Height = 13
    Caption = 'Burst (high)'
  end
  object Label4: TLabel
    Left = 32
    Top = 128
    Width = 71
    Height = 13
    Caption = 'PreMature (ms)'
  end
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 70
    Height = 21
    TabOrder = 0
    Text = '15'
  end
  object Edit2: TEdit
    Left = 120
    Top = 48
    Width = 70
    Height = 21
    TabOrder = 1
    Text = '150'
  end
  object Edit3: TEdit
    Left = 120
    Top = 80
    Width = 70
    Height = 21
    TabOrder = 2
    Text = '2'
  end
  object Memo1: TMemo
    Left = 32
    Top = 144
    Width = 185
    Height = 169
    Lines.Strings = (
      '300'
      '400'
      '500')
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button1: TButton
    Left = 80
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 4
    OnClick = Button1Click
  end
end
