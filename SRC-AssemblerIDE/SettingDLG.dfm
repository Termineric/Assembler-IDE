object OptionScr: TOptionScr
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Settings for Assembler IDE'
  ClientHeight = 421
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 641
    Height = 384
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'VASM 6502 oldstyle'
      'General')
    TabIndex = 0
    object Active: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Active'
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 641
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      641
      37)
    object Button1: TButton
      Left = 473
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 554
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
