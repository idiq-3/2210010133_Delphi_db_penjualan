unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    edt2: TEdit;
    lbl2: TLabel;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule2.Zkategori.SQL.Clear;
DataModule2.Zkategori.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule2.Zkategori.ExecSQL;

DataModule2.Zkategori.SQL.Clear;
DataModule2.Zkategori.SQL.Add('select * from kategori');
DataModule2.Zkategori.Open;
ShowMessage('Data Tersimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin      //update
  SQL.Clear;
  SQL.Add('update kategori set name="'+edt1.text+'"where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select*from kategori');
  Open;
end;
ShowMessage('Data Di ubah');

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule2.Zkategori.Fields[1].AsString;
a:= DataModule2.Zkategori.Fields[0].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
with DataModule2.kategori do
begin
  SQL.Clear;
  SQL.Add('delete from kategori where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add ('select * from kategori');
  Open;
end;
ShowMessage('Data Terhapus');
end.
 