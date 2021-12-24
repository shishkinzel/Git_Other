unit FShowSoft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TfrmShowSoft = class(TForm)
    mmoShowSoft: TMemo;
    btnCount: TButton;
    btnApply: TButton;
    mmLoadSoft: TMainMenu;
    mniFileLoadSoft: TMenuItem;
    mniOpenLoadSoft: TMenuItem;
    mniSaveLoadSoft: TMenuItem;
    mniSeparator1: TMenuItem;
    mniExitLoadSoft: TMenuItem;
    mniApplyLoadSoft: TMenuItem;
    mniReadingLostSoft: TMenuItem;
    dlgSaveLoadSoft: TSaveDialog;
    dlgOpenLostSoft: TOpenDialog;
    mniClear: TMenuItem;
    procedure btnCountClick(Sender: TObject);
    procedure mniExitLoadSoftClick(Sender: TObject);
    procedure mniSaveLoadSoftClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fTextSoft : string;

  end;

var
  frmShowSoft: TfrmShowSoft;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

procedure TfrmShowSoft.btnCountClick(Sender: TObject);
var
i : Integer;
begin
fTextSoft := '';
for I := 0 to mmoShowSoft.Lines.Count -1 do
begin
 fTextSoft := fTextSoft + mmoShowSoft.Lines.Strings[i];
end;
  if fTextSoft <> '' then
    ShowMessage('Информация считана' + #13 + 'Можно закрыть окно')
  else
  ShowMessage('Вы ничего не ввели' + #13 + 'Можно закрыть окно')
end;

procedure TfrmShowSoft.mniExitLoadSoftClick(Sender: TObject);
begin
frmShowSoft.Close;
end;

procedure TfrmShowSoft.mniSaveLoadSoftClick(Sender: TObject);
begin
if dlgSaveLoadSoft.Execute then

end;

end.
