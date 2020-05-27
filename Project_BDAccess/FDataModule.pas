unit FDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmAccessBD = class(TDataModule)
    conBDAccess: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAccessBD: TdmAccessBD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
