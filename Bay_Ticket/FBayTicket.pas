unit FBayTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCalendars, Vcl.StdCtrls;

type
  TfrmBayTicket = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btnExit: TButton;
    btnStart: TButton;
    edtDate: TEdit;
    clndrpckrDeparture: TCalendarPicker;
    clndrpckrBay: TCalendarPicker;
    procedure btnStartClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure clndrpckrDepartureChange(Sender: TObject);
    procedure edtDateKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBayTicket: TfrmBayTicket;

implementation

{$R *.dfm}

procedure TfrmBayTicket.btnExitClick(Sender: TObject);
begin
  frmBayTicket.Close;
end;

procedure TfrmBayTicket.btnStartClick(Sender: TObject);
var
  day: Integer;
begin
  day := StrToIntDef(edtDate.Text, 0);
  if day <> 0 then
  begin
    lbl4.Visible := True;
    clndrpckrBay.Visible := True;
    day := StrToInt(edtDate.Text);
    clndrpckrBay.Date := clndrpckrDeparture.Date - (day - 1);
  end
  else
  begin
    edtDate.Clear;
    ShowMessage('Введите корректные данные в поле ' + #10 + '"За какое количество суток"');
    edtDate.SetFocus;
  end;
end;

procedure TfrmBayTicket.clndrpckrDepartureChange(Sender: TObject);
begin
  edtDate.Clear;
  edtDate.SetFocus;
end;

procedure TfrmBayTicket.edtDateKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnStartClick(nil);
end;

end.

