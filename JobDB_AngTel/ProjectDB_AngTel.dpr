program ProjectDB_AngTel;

uses
  Vcl.Forms,
  DB_AngTel_production in 'DB_AngTel_production.pas' {Form1},
  DataModule in 'DataModule.pas' {DModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDModule, DModule);
  Application.Run;
end.
