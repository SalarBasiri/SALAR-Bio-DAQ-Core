object rate_dependency_form: Trate_dependency_form
  Left = 656
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rate Dependency Form'
  ClientHeight = 488
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
    Caption = 'Premature Periodes (ms)'
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
    Left = 16
    Top = 392
    Width = 193
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 432
    Width = 97
    Height = 25
    Caption = 'Save Template'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 432
    Width = 91
    Height = 25
    Caption = 'Open Template'
    TabOrder = 4
    OnClick = Button3Click
  end
  object save_memo: TMemo
    Left = 88
    Top = 472
    Width = 185
    Height = 89
    Lines.Strings = (
      'save_memo')
    ScrollBars = ssBoth
    TabOrder = 5
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Rate Dependency Protocol File|*.Rate_Dependency'
    Left = 144
    Top = 448
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Rate Dependance Protocol File|*.Rate_Dependecy'
    Left = 48
    Top = 448
  end
end
