unit FdmPayment;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmPayment = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPayment: TdmPayment;

implementation

uses
  FPaymentDocuments;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
