object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Aula JSON Attributes'
  ClientHeight = 457
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
  object Panel1: TPanel
    Left = 450
    Top = 0
    Width = 0
    Height = 408
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitWidth = 770
  end
  object Panel2: TPanel
    Left = 0
    Top = 408
    Width = 900
    Height = 49
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 770
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
    Height = 408
    Align = alLeft
    Caption = 'Panel3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitHeight = 426
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 448
      Height = 406
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitHeight = 424
    end
  end
  object Panel4: TPanel
    Left = 450
    Top = 0
    Width = 450
    Height = 408
    Align = alRight
    Caption = 'Panel4'
    TabOrder = 3
    ExplicitHeight = 426
    object Memo2: TMemo
      Left = 1
      Top = 1
      Width = 448
      Height = 406
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitHeight = 424
    end
  end
end
