object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Aula JSON Reader-Writer'
  ClientHeight = 406
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 417
    Top = 0
    Width = 420
    Height = 357
    Align = alClient
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
    TabOrder = 2
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 104
      Height = 47
      Align = alLeft
      Caption = 'Writer'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 105
      Top = 1
      Width = 104
      Height = 47
      Align = alLeft
      Caption = 'Reader'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
