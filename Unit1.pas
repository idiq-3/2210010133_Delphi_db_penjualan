unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    ed1: TMenuItem;
    DATAMASTER1: TMenuItem;
    RANSAKSI1: TMenuItem;
    LAPORAN1: TMenuItem;
    KATEGORI1: TMenuItem;
    SATUAN1: TMenuItem;
    SUPLLIER1: TMenuItem;
    KUSTOMER1: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    PENJUALAN1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    LAPORAN2: TMenuItem;
    LAPORANSOKBARANG1: TMenuItem;
    LAPPORANBARANG1: TMenuItem;
    procedure LOGIN1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ULogin;

{$R *.dfm}

procedure TForm1.LOGIN1Click(Sender: TObject);
begin
   Form2.show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   mm1.Items[1].Visible:=False;
   mm1.Items[2].Visible:=False;
   mm1.Items[3].Visible:=False;
end;

end.
