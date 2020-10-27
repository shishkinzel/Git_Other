program HotelDay;

uses
  Vcl.Forms,
  FBayTicket in '..\Bay_Ticket\FBayTicket.pas' {frmBayTicket};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBayTicket, frmBayTicket);
  Application.Run;
end.
