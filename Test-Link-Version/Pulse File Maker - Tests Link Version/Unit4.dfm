object Recovery_form: TRecovery_form
  Left = 771
  Top = 249
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recovery Form'
  ClientHeight = 425
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
    Width = 58
    Height = 13
    Caption = 'Periode (ms)'
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 53
    Height = 13
    Caption = 'Burst (high)'
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 110
    Height = 13
    Caption = 'PreMature Periode (ms)'
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
    Left = 16
    Top = 144
    Width = 217
    Height = 169
    Lines.Strings = (
      '300'
      '400'
      '500')
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button1: TButton
    Left = 24
    Top = 320
    Width = 209
    Height = 25
    Caption = 'Ok'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 360
    Width = 105
    Height = 25
    Caption = 'Save Template'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 136
    Top = 360
    Width = 99
    Height = 25
    Caption = 'Open Template'
    TabOrder = 6
    OnClick = Button3Click
  end
  object save_memo: TMemo
    Left = 40
    Top = 400
    Width = 185
    Height = 89
    Lines.Strings = (
      'save_memo')
    ScrollBars = ssBoth
    TabOrder = 7
    Visible = False
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Recovery Protocol Template File|*.Recovery'
    Left = 64
    Top = 376
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Recovery Protocol Template File|*.Recovery'
    Left = 176
    Top = 376
  end
end
