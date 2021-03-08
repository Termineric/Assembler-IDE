object ASMIDEscr: TASMIDEscr
  Left = 0
  Top = 0
  Caption = 'Assembler IDE By TerminEric'
  ClientHeight = 740
  ClientWidth = 1096
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 674
    Width = 1096
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 612
    ExplicitWidth = 763
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1096
    Height = 33
    ButtonHeight = 32
    ButtonWidth = 32
    Caption = 'ToolBar1'
    TabOrder = 0
    ExplicitWidth = 763
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 718
    Width = 1096
    Height = 22
    Panels = <>
    ExplicitTop = 653
    ExplicitWidth = 763
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 1096
    Height = 641
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitWidth = 763
    ExplicitHeight = 576
    object Splitter1: TSplitter
      Left = 209
      Top = 1
      Width = 7
      Height = 639
      ExplicitLeft = 153
      ExplicitTop = -15
      ExplicitHeight = 577
    end
    object RigthPanel: TPanel
      Left = 216
      Top = 1
      Width = 879
      Height = 639
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 215
      ExplicitTop = -1
      ExplicitWidth = 546
      ExplicitHeight = 574
      object REM_CodeSpace: TRichEdit
        Left = 0
        Top = 0
        Width = 879
        Height = 639
        Align = alClient
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Font.Quality = fqProof
        Lines.Strings = (
          'REM_CodeSpace')
        ParentFont = False
        TabOrder = 0
        Zoom = 100
        ExplicitLeft = -1
        ExplicitTop = -2
      end
    end
    object LeftPanel: TPanel
      Left = 1
      Top = 1
      Width = 208
      Height = 639
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitHeight = 574
    end
  end
  object ErrorMessages: TPanel
    Left = 0
    Top = 677
    Width = 1096
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = 'ErrorMessages'
    TabOrder = 3
    ExplicitTop = 612
    ExplicitWidth = 763
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 552
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Action = File_NEW
      end
      object Open1: TMenuItem
        Action = File_Open
      end
      object Close1: TMenuItem
        Action = File_Close
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Save1: TMenuItem
        Action = File_Save
      end
      object SaveAs1: TMenuItem
        Action = File_SaveAs
      end
      object SaveProject: TMenuItem
        Action = File_SaveALL
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Settings: TMenuItem
        Action = File_Setting
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = File_Exit
      end
    end
    object Project1: TMenuItem
      Caption = '&Project'
      object N1: TMenuItem
        Caption = '-'
      end
      object ProjectSettings1: TMenuItem
        Action = Project_Settings
      end
      object Compiler1: TMenuItem
        Action = Project_compiler
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      object Cut1: TMenuItem
        Action = Edit_Cut
      end
      object Copy1: TMenuItem
        Action = Edit_Copy
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        ShortCut = 16470
      end
      object PasteSpecial1: TMenuItem
        Action = Edit_PasteSpecial
        ShortCut = 16467
      end
      object Undo1: TMenuItem
        Action = Edit_Undo
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object About1: TMenuItem
        Action = Help_About
      end
    end
  end
  object ActionList1: TActionList
    Left = 112
    Top = 560
    object File_Setting: TAction
      Category = 'File'
      Caption = 'Settings'
      ShortCut = 24698
      OnExecute = File_SettingExecute
    end
    object File_Open: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 7
      ShortCut = 16463
    end
    object File_SaveAs: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 30
    end
    object File_Exit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object File_NEW: TAction
      Category = 'File'
      Caption = 'New'
    end
    object File_Close: TAction
      Category = 'File'
      Caption = 'Close'
    end
    object File_Save: TAction
      Category = 'File'
      Caption = 'Save'
      ShortCut = 16467
    end
    object File_SaveALL: TAction
      Category = 'File'
      Caption = 'Save ALL'
    end
    object Edit_Cut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object Edit_Copy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Edit_Paste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object Edit_Undo: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object Edit_Delete: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
    object Edit_PasteSpecial: TAction
      Category = 'Edit'
      Caption = 'Paste &Special'
    end
    object Help_About: TAction
      Category = 'Help'
      Caption = 'About'
      OnExecute = Help_AboutExecute
    end
    object Project_Settings: TAction
      Category = 'Project'
      Caption = 'Project Settings'
    end
    object Project_compiler: TAction
      Category = 'Project'
      Caption = 'Compiler'
      ShortCut = 120
    end
  end
end
