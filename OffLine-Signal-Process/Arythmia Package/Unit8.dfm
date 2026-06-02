object rate_dependency_form: Trate_dependency_form
  Left = 804
  Top = 293
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rate Dependency Form'
  ClientHeight = 435
  ClientWidth = 222
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
    Width = 209
    Height = 137
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
      Left = 104
      Top = 24
      Width = 70
      Height = 21
      TabOrder = 0
      Text = '15'
    end
    object Edit2: TEdit
      Left = 104
      Top = 56
      Width = 70
      Height = 21
      TabOrder = 1
      Text = '150'
    end
    object Edit3: TEdit
      Left = 104
      Top = 88
      Width = 70
      Height = 21
      TabOrder = 2
      Text = '2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 152
    Width = 209
    Height = 233
    Caption = 'Premature'
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Pulse No'
    end
    object Edit4: TEdit
      Left = 104
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
      Text = '3'
    end
    object Memo1: TMemo
      Left = 8
      Top = 64
      Width = 185
      Height = 153
      Lines.Strings = (
        '300'
        '280'
        '260')
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 72
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = Button1Click
  end
end
