unit FLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmLog = class(TForm)
    lblTitle: TLabel;
    lblLog: TLabel;
    lblPass: TLabel;
    edtLog: TEdit;
    edtPass: TEdit;
    btnCancel: TButton;
    btnOK: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
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

procedure TfrmLog.btnCancelClick(Sender: TObject);
begin
  frmLog.Close;
  frmMain.Close;
end;

procedure TfrmLog.btnOKClick(Sender: TObject);
begin
frmMain.Show;
frmLog.Close;
end;

end.

