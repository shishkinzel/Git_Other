program MainPhoneBook;

uses
  Vcl.Forms,
  PhoneBook in 'PhoneBook.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
