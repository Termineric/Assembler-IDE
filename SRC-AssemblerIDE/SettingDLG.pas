unit SettingDLG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TOptionScr = class(TForm)
    TabControl1: TTabControl;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Active: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OptionScr: TOptionScr;

implementation

{$R *.dfm}

end.
