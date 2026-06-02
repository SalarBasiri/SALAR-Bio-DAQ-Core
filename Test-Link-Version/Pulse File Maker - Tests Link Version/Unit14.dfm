object Concealed_form: TConcealed_form
  Left = 558
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Concealed Form'
  ClientHeight = 603
  ClientWidth = 211
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
      Width = 58
      Height = 13
      Caption = 'Periode (ms)'
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
    Height = 169
    Caption = 'Concealed Beat'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 107
      Height = 13
      Caption = 'Concealed Beat 1 (ms)'
    end
    object Label5: TLabel
      Left = 16
      Top = 128
      Width = 53
      Height = 13
      Caption = 'Burst (high)'
    end
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 107
      Height = 13
      Caption = 'Concealed Beat 2 (ms)'
    end
    object Label7: TLabel
      Left = 16
      Top = 96
      Width = 107
      Height = 13
      Caption = 'Concealed Beat 3 (ms)'
    end
    object Edit4: TEdit
      Left = 128
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '30'
    end
    object Edit5: TEdit
      Left = 128
      Top = 120
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '2'
    end
    object Edit6: TEdit
      Left = 128
      Top = 56
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '20'
    end
    object Edit7: TEdit
      Left = 128
      Top = 88
      Width = 49
      Height = 21
      TabOrder = 3
      Text = '10'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 320
    Width = 193
    Height = 185
    Caption = 'PreMature Periodes (ms)'
    TabOrder = 2
    object Memo1: TMemo
      Left = 24
      Top = 32
      Width = 145
      Height = 137
      Lines.Strings = (
        '100'
        '90'
        '80')
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 16
    Top = 512
    Width = 177
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 560
    Width = 89
    Height = 25
    Caption = 'Save Template'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 112
    Top = 560
    Width = 83
    Height = 25
    Caption = 'Open Template'
    TabOrder = 5
    OnClick = Button3Click
  end
  object save_memo: TMemo
    Left = 96
    Top = 592
    Width = 185
    Height = 89
    Lines.Strings = (
      'save_memo')
    ScrollBars = ssBoth
    TabOrder = 6
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Concealed Protocol Template File|*.Concealed'
    Left = 136
    Top = 584
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Concealed Protocol Template File|*.Concealed'
    Left = 56
    Top = 584
  end
end
