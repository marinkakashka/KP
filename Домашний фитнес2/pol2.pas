unit pol2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.StdCtrls, acProgressBar, acPNG,
  sGauge;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    sProgressBar1: TsProgressBar;
    sGauge1: TsGauge;
    procedure Timer1Timer(Sender: TObject);
    procedure sProgressBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses zastavka1, glavnaya;

procedure TForm2.sProgressBar1Change(Sender: TObject);
begin
  sGauge1.Progress := sProgressBar1.Position;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
if Sprogressbar1.position<Sprogressbar1.max then
Sprogressbar1.Position:=Sprogressbar1.Position+10
else
begin
timer1.Enabled:=False;
Form1.Show;
Form2.close;
end;
end;
end.
