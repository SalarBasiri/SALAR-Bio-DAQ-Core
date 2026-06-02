object facitilation_form: Tfacitilation_form
  Left = 809
  Top = 282
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Facitiliation Form'
  ClientHeight = 518
  ClientWidth = 209
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 193
    Height = 129
    Caption = 'BCL'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Pulse No'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 63
      Height = 13
      Caption = 'Latency (low)'
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 53
      Height = 13
      Caption = 'Burst (high)'
    end
    object Edit1: TEdit
      Left = 96
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
      Text = '15'
    end
    object Edit2: TEdit
      Left = 96
      Top = 56
      Width = 73
      Height = 21
      TabOrder = 1
      Text = '300'
    end
    object Edit3: TEdit
      Left = 96
      Top = 88
      Width = 73
      Height = 21
      TabOrder = 2
      Text = '2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 144
    Width = 193
    Height = 97
    Caption = 'Short Cycle'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 63
      Height = 13
      Caption = 'Latency (low)'
    end
    object Label5: TLabel
      Left = 16
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Burst (high)'
    end
    object Edit4: TEdit
      Left = 104
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
      Text = '30'
    end
    object Edit5: TEdit
      Left = 104
      Top = 56
      Width = 73
      Height = 21
      TabOrder = 1
      Text = '2'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 248
    Width = 193
    Height = 209
    Caption = 'PreMature'
    TabOrder = 2
    object Memo1: TMemo
      Left = 24
      Top = 32
      Width = 145
      Height = 161
      Lines.Strings = (
        '100'
        '90'
        '80')
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 64
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = Button1Click
  end
end
