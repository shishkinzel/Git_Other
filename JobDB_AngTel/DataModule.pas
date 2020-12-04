unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDModule = class(TDataModule)
    dsJob: TDataSource;
    conJob: TADOConnection;
    tblJob: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DModule: TDModule;

implementation

uses
  DB_AngTel_production;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
