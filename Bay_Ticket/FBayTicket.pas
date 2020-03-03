unit FBayTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.StdCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBayTicket: TfrmBayTicket;

implementation

{$R *.dfm}

end.
