unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.StdActns, Vcl.StdCtrls;

type
  TASMIDEscr = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Close1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Edit1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    PasteSpecial1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    LeftPanel: TPanel;
    Splitter1: TSplitter;
    RigthPanel: TPanel;
    N7: TMenuItem;
    SaveProject: TMenuItem;
    Settings: TMenuItem;
    ErrorMessages: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    File_Setting: TAction;
    File_Open: TFileOpen;
    File_SaveAs: TFileSaveAs;
    File_Exit: TFileExit;
    File_NEW: TAction;
    File_Close: TAction;
    File_Save: TAction;
    File_SaveALL: TAction;
    Edit_Cut: TEditCut;
    Edit_Copy: TEditCopy;
    Edit_Paste: TEditPaste;
    Edit_Undo: TEditUndo;
    Edit_Delete: TEditDelete;
    Edit_PasteSpecial: TAction;
    Undo1: TMenuItem;
    Help_About: TAction;
    Project_Settings: TAction;
    Project1: TMenuItem;
    N1: TMenuItem;
    ProjectSettings1: TMenuItem;
    Project_compiler: TAction;
    Compiler1: TMenuItem;
    REM_CodeSpace: TRichEdit;
    procedure Help_AboutExecute(Sender: TObject);
    procedure File_SettingExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    AppsSettings: TstringList;
    AppsStartUpPath: String;
  end;

var
  ASMIDEscr: TASMIDEscr;

implementation

// vasm6502_oldstyle.exe -c02 -chklabels -nocase -L test.list -Fbin -o Test.hex -dotdir Test.ASM

Uses About_Form, SettingDLG, AppsCommon,Assembler6502;

{$R *.dfm}

procedure TASMIDEscr.File_SettingExecute(Sender: TObject);
begin
  OptionScr.ShowModal;
end;

procedure TASMIDEscr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveToASM(REM_CodeSpace.Lines, AppsSettings.Values['ProjectPath'] +
    'Test-out.ASM');

  AppsSettings.SaveToFile(AppsStartUpPath + 'Settings.cfg');

end;

procedure TASMIDEscr.FormCreate(Sender: TObject);
begin
  AppsStartUpPath := ExtractFilePath(Application.ExeName);
  AppsSettings := TstringList.Create;
  AppsSettings.LoadFromFile(AppsStartUpPath + 'Settings.cfg');

  // formcreate ???
  REM_CodeSpace.Lines.LoadFromFile(AppsSettings.Values['ProjectPath'] +
    'Test.ASM');
  REM_CodeSpace.Lines[5]:=ASMsyntax(REM_CodeSpace.Lines[5]);
end;

procedure TASMIDEscr.FormShow(Sender: TObject);
begin
  // formshow ???
end;

procedure TASMIDEscr.Help_AboutExecute(Sender: TObject);
begin
  AboutScreen.ShowModal;
end;

end.
