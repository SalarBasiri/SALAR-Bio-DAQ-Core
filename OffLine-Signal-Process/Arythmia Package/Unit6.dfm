object wbcl_form: Twbcl_form
  Left = 796
  Top = 229
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'WBCL Form'
  ClientHeight = 400
  ClientWidth = 219
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
    Left = 24
    Top = 32
    Width = 43
    Height = 13
    Caption = 'Pulse No'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 53
    Height = 13
    Caption = 'Burst (high)'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 49
    Height = 13
    Caption = 'PreMature'
  end
  object Edit1: TEdit
    Left = 112
    Top = 24
    Width = 73
    Height = 21
    TabOrder = 0
    Text = '15'
  end
  object Edit2: TEdit
    Left = 112
    Top = 56
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '2'
  end
  object Memo1: TMemo
    Left = 24
    Top = 112
    Width = 177
    Height = 217
    Lines.Strings = (
      '250'
      '240'
      '230')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button1: TButton
    Left = 80
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = Button1Click
  end
end
