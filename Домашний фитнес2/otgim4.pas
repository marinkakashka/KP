unit otgim4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.MPlayer, acPNG;

type
  TForm4 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    Button1: TButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    function IsRadioButtonSelected: Boolean;
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses plan5, glavnaya, zona3, zastavka1;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form1.PlayClickSound;
if IsRadioButtonSelected then
  begin
    Form5.Show;
    Form4.Close;
  end
  else
    ShowMessage('Пожалуйста, выберите уровень, чтобы продолжить');
end;

procedure TForm4.RadioButton1Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

procedure TForm4.RadioButton2Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

procedure TForm4.RadioButton3Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

function TForm4.IsRadioButtonSelected: Boolean;
begin
  Result := RadioButton1.Checked or
            RadioButton2.Checked or
            RadioButton3.Checked;
end;

end.
