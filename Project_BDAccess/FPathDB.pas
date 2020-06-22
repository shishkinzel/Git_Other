unit FPathDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPathDB = class(TForm)
    mmoPathDB: TMemo;
    btnCancel: TButton;
    btn2: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPathDB: TfrmPathDB;

implementation

uses
  FMainAccess;

{$R *.dfm}

procedure TfrmPathDB.FormShow(Sender: TObject);
var
i : Integer;
begin
mmoPathDB.Clear;
for I := 0 to frmListBD.fCountPath - 1 do
mmoPathDB.Lines.Add(frmListBD.fStringList.Strings[i]);

end;

end.
