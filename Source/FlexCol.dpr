program FlexCol;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Uabout in 'Uabout.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Flexão composta reta armadura assimétrica';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.Run;
end.
