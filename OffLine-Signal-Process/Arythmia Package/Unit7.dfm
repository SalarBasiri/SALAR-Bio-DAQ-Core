object fatigue_form: Tfatigue_form
  Left = 688
  Top = 234
  Width = 263
  Height = 605
  Caption = 'Fatigue Form'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 217
    Height = 137
    Caption = 'Fatigue Cycles'
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
      Left = 120
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 0
      Text = '200'
    end
    object Edit2: TEdit
      Left = 120
      Top = 64
      Width = 70
      Height = 21
      TabOrder = 1
      Text = '150'
    end
    object Edit3: TEdit
      Left = 120
      Top = 96
      Width = 70
      Height = 21
      TabOrder = 2
      Text = '2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 160
    Width = 217
    Height = 137
    Caption = 'BCL'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 44
      Height = 13
      Caption = 'Pulse_no'
    end
    object Label5: TLabel
      Left = 16
      Top = 72
      Width = 63
      Height = 13
      Caption = 'Latency (low)'
    end
    object Label6: TLabel
      Left = 16
      Top = 104
      Width = 53
      Height = 13
      Caption = 'Burst (high)'
    end
    object Edit4: TEdit
      Left = 120
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 0
      Text = '10'
    end
    object Edit5: TEdit
      Left = 120
      Top = 64
      Width = 70
      Height = 21
      TabOrder = 1
      Text = '350'
    end
    object Edit6: TEdit
      Left = 120
      Top = 96
      Width = 70
      Height = 21
      TabOrder = 2
      Text = '2'
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 304
    Width = 217
    Height = 209
    Caption = 'PreMature'
    TabOrder = 2
    object Memo1: TMemo
      Left = 16
      Top = 32
      Width = 185
      Height = 161
      Lines.Strings = (
        '300'
        '250'
        '200')
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 80
    Top = 528
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = Button1Click
  end
end
