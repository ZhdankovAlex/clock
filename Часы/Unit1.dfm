object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'CLOCK'
  ClientHeight = 560
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 500
    Height = 500
  end
  object Button1: TButton
    Left = 8
    Top = 514
    Width = 113
    Height = 38
    Caption = #1057#1077#1082#1091#1085#1076#1099
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 127
    Top = 514
    Width = 113
    Height = 38
    Caption = #1052#1080#1085#1091#1090#1099
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 246
    Top = 514
    Width = 113
    Height = 38
    Caption = #1063#1072#1089#1099
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 392
    Top = 514
    Width = 113
    Height = 38
    Caption = #1042#1088#1077#1084#1103
    TabOrder = 3
    OnClick = Button4Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 520
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 520
    Top = 64
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 520
    Top = 120
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 520
    Top = 176
  end
end
