unit Assembler6502;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.StdActns, Vcl.StdCtrls;

Function ASMsyntax(curendLine: String): String;

implementation

Function ASMsyntax(curendLine: String): String;
Var Int_STR:String;
Begin
Int_STR:= UpperCase(curendLine);
  if Pos('STA',Int_STR)>1 then
  Begin
      //curendLine:=Substr('STA'
  End;

  result := UpperCase(curendLine);
End;

end.
