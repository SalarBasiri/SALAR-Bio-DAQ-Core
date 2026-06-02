object Form2: TForm2
  Left = 376
  Top = 309
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'S or N ?'
  ClientHeight = 111
  ClientWidth = 502
  Color = clWhite
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
    Top = 8
    Width = 468
    Height = 20
    Caption = 'Does the Arythmia Revert to Sinus Rythem Spontenously?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object NBottton: TButton
    Left = 296
    Top = 56
    Width = 75
    Height = 25
    Caption = 'No'
    TabOrder = 0
    OnClick = NBotttonClick
  end
  object SButton: TButton
    Left = 136
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Yes'
    TabOrder = 1
    OnClick = SButtonClick
  end
end
