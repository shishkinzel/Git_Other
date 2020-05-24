program BookBD;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FLogin in 'FLogin.pas' {frmLog},
  FPhoneBook in 'FPhoneBook.pas' {frmPhoneBook},
  FAuthorization in 'FAuthorization.pas' {frmAuthorization},
  FDataModule in 'FDataModule.pas' {dtmdlPhoneBook: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.ShowMainForm := False;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLog, frmLog);
  Application.CreateForm(TfrmPhoneBook, frmPhoneBook);
  Application.CreateForm(TfrmAuthorization, frmAuthorization);
  Application.CreateForm(TdtmdlPhoneBook, dtmdlPhoneBook);
  Application.Run;
end.
