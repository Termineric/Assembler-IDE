program AssemblerIDE;

uses
  Vcl.Forms,
  Main in 'Main.pas' {ASMIDEscr},
  SettingDLG in 'SettingDLG.pas' {OptionScr},
  About_Form in 'About_Form.pas' {AboutScreen},
  Vcl.Themes,
  Vcl.Styles,
  AppsCommon in 'AppsCommon.pas',
  Assembler6502 in 'Assembler6502.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TASMIDEscr, ASMIDEscr);
  Application.CreateForm(TOptionScr, OptionScr);
  Application.CreateForm(TAboutScreen, AboutScreen);
  Application.Run;
end.
