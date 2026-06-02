object score_form: Tscore_form
  Left = 150
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Score Form'
  ClientHeight = 230
  ClientWidth = 428
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 55
    Height = 20
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 55
    Height = 20
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 55
    Height = 20
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 55
    Height = 20
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 152
    Top = 152
    Width = 63
    Height = 24
    Caption = 'Label5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 184
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 280
    Top = 200
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 1
    Visible = False
  end
end
