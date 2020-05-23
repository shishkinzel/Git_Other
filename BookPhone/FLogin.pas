unit FLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLog = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);

    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLog: TfrmLog;

implementation

uses
  FMain;

{$R *.dfm}

procedure TfrmLog.btn1Click(Sender: TObject);
begin
frmMain.Show;
Self.close;
end;

end.
