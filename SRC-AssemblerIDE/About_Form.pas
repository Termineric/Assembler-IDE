unit About_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TAboutScreen = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    butnClose: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutScreen: TAboutScreen;

implementation

{$R *.dfm}

end.
