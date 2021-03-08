unit AppsCommon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.StdActns, Vcl.StdCtrls;

  Procedure SaveToASM(Content:TStrings;FileName: AnsiString);

implementation

Procedure SaveToASM(Content:TStrings;FileName: AnsiString);
var
  i: integer;
  fSave: TextFile;
begin
  AssignFile(fSave, FileName);
  Rewrite(fSave);
  for i := 0 to Content.Count - 1 do
  begin
    Writeln(fSave, Content.Strings[i]);
  end;
  Append(fSave);
End;

end.
