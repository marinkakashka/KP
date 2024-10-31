program Prkyrs;

uses
  Vcl.Forms,
  zastavka1 in 'zastavka1.pas' {Form1},
  pol2 in 'pol2.pas' {Form2},
  zona3 in 'zona3.pas' {Form3},
  otgim4 in 'otgim4.pas' {Form4},
  plan5 in 'plan5.pas' {Form5},
  glavnaya in 'glavnaya.pas' {Form6},
  otchet in 'otchet.pas' {Form7},
  nastroyki in 'nastroyki.pas' {Form8},
  web in 'web.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
