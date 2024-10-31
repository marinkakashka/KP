unit zastavka1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, sSkinManager, sButton,
  sMemo, acPNG, Vcl.MPlayer,shellAPI;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Image2: TImage;
    sSkinManager1: TsSkinManager;
    MediaPlayer1: TMediaPlayer;
    Image3: TImage;
    Image4: TImage;
    Button1: TButton;
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
     procedure PlayClickSound;
   { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses pol2, zona3, glavnaya;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
Form6.Show;
Form1.Close;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
PlayClickSound;
Image4.Enabled := false;
Label4.Visible:= false;
Form3.Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'картинки\мужчина.png');
Form6.Image9.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'картинки\мужч.png');
Form3.show;
Form1.close;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
PlayClickSound;
Image3.Enabled := false;
Label4.Visible:= false;
Form3.Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'картинки\женщина.png');
Form6.Image9.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'картинки\женщ.png');
Form3.show;
Form1.close;
end;

procedure TForm1.PlayClickSound;
begin
  MediaPlayer1.FileName := (ExtractFilePath(Application.ExeName) + 'музыка\dart-remove-dartboard.wav');
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;
end.
