unit web;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, acWebBrowser,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, Vcl.ExtCtrls, acPNG, MMSystem;

type
  TForm9 = class(TForm)
    sWebBrowser1: TsWebBrowser;
    BitBtn1: TBitBtn;
    MediaPlayer1: TMediaPlayer;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    MediaPlayer2: TMediaPlayer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure MediaPlayer2Notify(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var SelectedSong: string;
  end;

var
  Form9: TForm9;
  TimeLeft: TDateTime;


implementation

{$R *.dfm}

uses glavnaya, zastavka1, nastroyki, otchet;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
Form1.PlayClickSound;
Form9.Close;
Form6.Show;
Timer1.Enabled := False;
Label1.Caption := ' ';
end;

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
Form1.PlayClickSound;
  TimeLeft := EncodeTime(0, 15, 0, 0); // устанавливаем начальное время в 15 минут
  Timer1.Interval := 1000; // интервал в 1 секунду
  Timer1.Enabled := True;
Image1.Visible := true;
end;

procedure TForm9.BitBtn3Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm9.MediaPlayer2Notify(Sender: TObject);
begin
  if (MediaPlayer2.Mode = mpStopped) and (MediaPlayer2.Position = MediaPlayer2.Length) then
  begin
    MediaPlayer2.Play;
  end;
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
  TimeLeft := TimeLeft - EncodeTime(0, 0, 1, 0);
  Label1.Caption := FormatDateTime('nn:ss', TimeLeft);
  if TimeLeft <= 0 then
  begin
    Timer1.Enabled := False;
    Form6.SaveProgress(Form6.LoadProgress + 1);
    Form7.UpdateStringGridAndProgressBar;
     ShowMessage('Поздравляем! Вы успешно завершили тренировку!');
  end;
//    if Assigned(Form7) then
//  begin
//    Form7.sProgressBar1.Position := Form7.sProgressBar1.Position + 1;
//  end;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MediaPlayer2.Stop;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
Image1.Visible := false;
Image2.Visible := false;
end;

procedure TForm9.Image1Click(Sender: TObject);
begin
Image1.Visible := false;
Image2.Visible := true;
  if Form8.sComboBox1.ItemIndex <> -1 then // проверка
    Form9.SelectedSong := Form8.sComboBox1.Items.Strings[Form8.sComboBox1.ItemIndex]
  else
    Form9.SelectedSong := (ExtractFilePath(Application.ExeName)+'музыка\Dj Luis Mares - Piano In The Club.mp3');
MediaPlayer2.FileName := SelectedSong;
MediaPlayer2.Open;
MediaPlayer2.OnNotify := MediaPlayer2Notify;
MediaPlayer2.Play;
end;

procedure TForm9.Image2Click(Sender: TObject);
begin
Image2.Visible := false;
Image1.Visible := true;
MediaPlayer2.Stop;
end;

procedure TForm9.Image3Click(Sender: TObject);
begin
Form8.show;
end;

end.
