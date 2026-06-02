object BCL_form: TBCL_form
  Left = 701
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'BCL Setting'
  ClientHeight = 165
  ClientWidth = 198
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
    Width = 46
    Height = 13
    Caption = 'Pulse No:'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Latency (low)'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 53
    Height = 13
    Caption = 'Burst (high)'
  end
  object Edit1: TEdit
    Left = 112
    Top = 24
    Width = 70
    Height = 21
    TabOrder = 0
    Text = '100'
  end
  object Edit2: TEdit
    Left = 112
    Top = 56
    Width = 70
    Height = 21
    TabOrder = 1
    Text = '150'
  end
  object Edit3: TEdit
    Left = 112
    Top = 88
    Width = 70
    Height = 21
    TabOrder = 2
    Text = '2'
  end
  object Button1: TButton
    Left = 64
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = Button1Click
  end
end
