object wbcl_form: Twbcl_form
  Left = 562
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'WBCL Form'
  ClientHeight = 415
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
    Width = 115
    Height = 13
    Caption = 'PreMature Periodes (ms)'
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
    Left = 16
    Top = 112
    Width = 185
    Height = 217
    Lines.Strings = (
      '250'
      '240'
      '230')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 336
    Width = 185
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 368
    Width = 89
    Height = 25
    Caption = 'Save  Template'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 112
    Top = 368
    Width = 91
    Height = 25
    Caption = 'Open Template'
    TabOrder = 5
    OnClick = Button3Click
  end
  object save_memo: TMemo
    Left = 48
    Top = 400
    Width = 185
    Height = 89
    Lines.Strings = (
      'save_memo')
    ScrollBars = ssBoth
    TabOrder = 6
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Filter = 'WBCL Protocol File|*.WBCL'
    Left = 144
    Top = 392
  end
  object SaveDialog1: TSaveDialog
    Filter = 'WBCL Template File|*.WBCL'
    Left = 32
    Top = 384
  end
end
