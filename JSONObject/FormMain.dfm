object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Aula JSON Object'
  ClientHeight = 457
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 408
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 376
      Height = 406
      Align = alLeft
      Caption = 'Panel3'
      TabOrder = 0
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 374
        Height = 404
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 392
      Top = 1
      Width = 377
      Height = 406
      Align = alRight
      Caption = 'Panel4'
      TabOrder = 1
      object Memo2: TMemo
        Left = 1
        Top = 1
        Width = 375
        Height = 404
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 408
    Width = 770
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 128
      Height = 47
      Align = alLeft
      Caption = 'Criar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 129
      Top = 1
      Width = 128
      Height = 47
      Align = alLeft
      Caption = 'Remove Pair'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 105
    end
    object Button3: TButton
      Left = 257
      Top = 1
      Width = 128
      Height = 47
      Align = alLeft
      Caption = 'Get Value'
      TabOrder = 2
      OnClick = Button3Click
      ExplicitLeft = 233
    end
    object Button4: TButton
      Left = 385
      Top = 1
      Width = 128
      Height = 47
      Align = alLeft
      Caption = 'Pairs'
      TabOrder = 3
      OnClick = Button4Click
      ExplicitLeft = 337
    end
  end
end
