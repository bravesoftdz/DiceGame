object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    Alignment = taCenter
    Caption = 'Go'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -107
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = Label1Click
    ExplicitTop = 50
  end
  object Label2: TLabel
    Left = 8
    Top = 13
    Width = 89
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1080#1075#1088#1086#1082#1086#1074' : '
  end
  object Edit1: TEdit
    Left = 103
    Top = 10
    Width = 89
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
end
