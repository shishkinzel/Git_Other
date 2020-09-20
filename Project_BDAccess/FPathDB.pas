unit FPathDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPathDB = class(TForm)
    btnCancel: TButton;
    btnStart: TButton;
    lbledtChoice: TLabeledEdit;
    lstPath: TListBox;
    procedure FormShow(Sender: TObject);
    procedure lstPathDblClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPathDB: TfrmPathDB;
  numbetStr : Integer;
implementation

uses
  FMainAccess, FDataModule;

{$R *.dfm}


procedure TfrmPathDB.btnStartClick(Sender: TObject);
begin
  fStringList.Delete(numbetStr);
  fStringList.Insert(0, lbledtChoice.Text);
  fBDAccessPath := fStringList.Strings[0];
  with dmAccessBD do
  begin
    conBDAccess.Connected := False;
//    tblPhoneBook.Active := False;
//    tblAuthoriz.Active := False;
//    tblElectricitt.Active := False;
//    tblWater.Active := False;
    conBDAccess.ConnectionString := fProvider + fBDAccessPath + fParam;

    conBDAccess.Connected := True;    // Подключение БД
    tblPhoneBook.Active := True;
    tblAuthoriz.Active := True;
    tblElectricitt.Active := True;
    tblWater.Active := True;

  end;
  ModalResult := mrClose;
end;
procedure TfrmPathDB.FormShow(Sender: TObject);
var
i : Integer;
begin
lstPath.Clear;
for I := 0 to fStringList.Count - 1 do
lstPath.Items.Add(fStringList.Strings[i]);

end;







procedure TfrmPathDB.lstPathDblClick(Sender: TObject);
begin
numbetStr := lstPath.ItemIndex;
lbledtChoice.Text := lstPath.Items.Strings[numbetStr];
end;

end.
