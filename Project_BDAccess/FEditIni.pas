unit FEditIni;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmEditIni = class(TForm)
    lstEditIni: TListBox;
    btnCancel: TButton;
    btnStart: TButton;
    btnDelete: TButton;
    lbledtFind: TLabeledEdit;
    grpFileIni: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditIni: TfrmEditIni;

implementation

uses
  FMainAccess;

{$R *.dfm}

end.
