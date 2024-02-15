object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Aula Object To JSON - JSON To Object'
  ClientHeight = 475
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 426
    Width = 900
    Height = 49
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button2: TButton
      Left = 185
      Top = 1
      Width = 184
      Height = 47
      Align = alLeft
      Caption = 'JSON to Object'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 184
      Height = 47
      Align = alLeft
      Caption = 'Object to JSON'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 426
    Align = alLeft
    Caption = 'Panel3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 448
      Height = 424
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 450
    Top = 0
    Width = 450
    Height = 426
    Align = alRight
    Caption = 'Panel4'
    TabOrder = 2
    object Memo2: TMemo
      Left = 1
      Top = 1
      Width = 448
      Height = 424
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
