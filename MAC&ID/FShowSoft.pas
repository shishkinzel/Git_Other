unit FShowSoft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmShowSoft = class(TForm)
    mmoShowSoft: TMemo;
    btnCount: TButton;
    btnApply: TButton;
    procedure btnCountClick(Sender: TObject);
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

end.
