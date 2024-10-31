unit zona3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, sTrackBar, Vcl.ComCtrls,
  sGauge, Vcl.MPlayer;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Button6: TButton;
    Image2: TImage;
    MediaPlayer1: TMediaPlayer;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    procedure Button6Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
  private

    { Private declarations }
  public
    function IsRadioButtonSelected: Boolean;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses otgim4, zastavka1;

procedure TForm3.Button6Click(Sender: TObject);
begin
Form1.PlayClickSound;
  if IsRadioButtonSelected then
  begin
    Form4.Show;
    Form3.Close;
  end
  else
    ShowMessage('Пожалуйста, выберите зону для проработки, чтобы продолжить');
end;


procedure TForm3.RadioButton1Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

procedure TForm3.RadioButton4Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

procedure TForm3.RadioButton5Click(Sender: TObject);
begin
Form1.PlayClickSound;
end;

function TForm3.IsRadioButtonSelected: Boolean;
begin
  Result := RadioButton1.Checked or
            RadioButton2.Checked or
            RadioButton3.Checked or
            RadioButton4.Checked or
            RadioButton5.Checked;
end;



end.
