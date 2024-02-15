object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Aula JSON Builder-Iterator'
  ClientHeight = 406
  ClientWidth = 837
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
    Left = 417
    Top = 0
    Width = 420
    Height = 357
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel4: TPanel
      Left = 6
      Top = 1
      Width = 413
      Height = 355
      Align = alRight
      Caption = 'Panel4'
      TabOrder = 0
      object Memo2: TMemo
        Left = 1
        Top = 1
        Width = 411
        Height = 353
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 357
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
      Width = 415
      Height = 355
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 357
    Width = 837
    Height = 49
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 152
      Height = 47
      Align = alLeft
      Caption = 'Object Builder'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 153
      Top = 1
      Width = 152
      Height = 47
      Align = alLeft
      Caption = 'Array Builder'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 305
      Top = 1
      Width = 152
      Height = 47
      Align = alLeft
      Caption = 'Iterator'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 457
      Top = 1
      Width = 152
      Height = 47
      Align = alLeft
      Caption = 'Find'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
end
