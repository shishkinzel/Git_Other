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
    mniSettings: TMenuItem;
    mniFont: TMenuItem;
    mniColorBackGround: TMenuItem;
    dlgFont: TFontDialog;
    dlgColor: TColorDialog;
    procedure btnCountClick(Sender: TObject);
    procedure mniExitLoadSoftClick(Sender: TObject);
    procedure mniSaveLoadSoftClick(Sender: TObject);
    procedure mniOpenLoadSoftClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniClearClick(Sender: TObject);
    procedure mniFontClick(Sender: TObject);
    procedure mniColorBackGroundClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fTextSoft: string;
  end;

var
  frmShowSoft: TfrmShowSoft;

implementation

uses
  MacAdressIterator;

{$R *.dfm}

procedure TfrmShowSoft.btnCountClick(Sender: TObject);
var
  i: Integer;
begin
  fTextSoft := '';
  for i := 0 to mmoShowSoft.Lines.Count - 1 do
  begin
    fTextSoft := fTextSoft + mmoShowSoft.Lines.Strings[i];
  end;
  if fTextSoft <> '' then
    ShowMessage('Информация считана' + #13 + 'Можно закрыть окно')
  else
    ShowMessage('Вы ничего не ввели' + #13 + 'Можно закрыть окно');
// Сброс Memo после считывания
  mmoShowSoft.Clear;

end;

procedure TfrmShowSoft.mniOpenLoadSoftClick(Sender: TObject);
begin
  if dlgOpenLostSoft.Execute then
  begin
    mmoShowSoft.Lines.LoadFromFile(dlgOpenLostSoft.FileName);
    ShowMessage('Вы успешно выбрали сохраненную конфигурацию командной строки!!!');
  end
  else
  begin
    ShowMessage('Вы отказались от выбора конфигурации командной строки!!!');
  end;
end;

procedure TfrmShowSoft.mniSaveLoadSoftClick(Sender: TObject);
begin
  if dlgSaveLoadSoft.Execute then
  begin
    if AnsiPos('.', dlgSaveLoadSoft.FileName) > 0 then
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName)
    else
    begin
      mmoShowSoft.Lines.SaveToFile(dlgSaveLoadSoft.FileName + '.load_txt');
      ShowMessage('Вы успешно сохранили конфигурацию командной строки!!!');
    end;
  end
  else
  begin
    ShowMessage('Вы отказались от сохранения конфигурации командной строки!!!');
  end;

end;

procedure TfrmShowSoft.mniClearClick(Sender: TObject);
begin
  mmoShowSoft.Clear;
end;

procedure TfrmShowSoft.mniColorBackGroundClick(Sender: TObject);
begin
 if dlgColor.Execute then
  mmoShowSoft.Color := dlgColor.Color;
end;

procedure TfrmShowSoft.mniFontClick(Sender: TObject);
begin
if dlgFont.Execute then
  mmoShowSoft.Font := dlgFont.Font;
end;

// закрытие окна
procedure TfrmShowSoft.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mniExitLoadSoftClick(nil);
end;
procedure TfrmShowSoft.mniExitLoadSoftClick(Sender: TObject);
begin
  mmoShowSoft.Clear;
  frmShowSoft.Close;
end;

end.

