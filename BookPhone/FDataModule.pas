unit FDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB;

type
  TdtmdlPhoneBook = class(TDataModule)
    conPhoneBook: TFDConnection;
    conAuthorization: TFDConnection;
    fdtrnsctnReadPhone: TFDTransaction;
    fdtrnsctnWritePhone: TFDTransaction;
    fdphysfbdrvrlnkOne: TFDPhysFBDriverLink;
    fdtrnsctnReadAuth: TFDTransaction;
    fdtrnsctnWriteAuth: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmdlPhoneBook: TdtmdlPhoneBook;
implementation

uses
  FPhoneBook, FAuthorization;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

// Регистрация модуля данных
procedure TdtmdlPhoneBook.DataModuleCreate(Sender: TObject);
begin
// Отключаем автостарт транзакции
  fdtrnsctnReadPhone.Options.AutoStart := False;
  fdtrnsctnReadAuth.Options.AutoStart := False;

// Подключаем соединения
  conPhoneBook.Connected := True;
  conAuthorization.Connected := True;

// Стартуем Read транзакции
  fdtrnsctnReadPhone.StartTransaction;
  fdtrnsctnReadAuth.StartTransaction;

end;


procedure TdtmdlPhoneBook.DataModuleDestroy(Sender: TObject);
begin
  Self.fdtrnsctnReadPhone.Commit;
  Self.fdtrnsctnReadAuth.Commit;

  conPhoneBook.Connected := False;
  conAuthorization.Connected := False;
end;

end.

