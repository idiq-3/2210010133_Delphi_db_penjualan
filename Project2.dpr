program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ULogin in 'ULogin.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
