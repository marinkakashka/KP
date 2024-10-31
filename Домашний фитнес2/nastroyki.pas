unit nastroyki;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.pngimage, sPanel, sMonthCalendar, acPNG,
  Vcl.Buttons, sBitBtn, sListBox, Vcl.Mask, sMaskEdit, sCustomComboEdit,
  sComboBox, Vcl.MPlayer, Vcl.WinXCalendars, Vcl.ComCtrls,ShellAPI;

type
  TForm8 = class(TForm)
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    Image2: TImage;
    Image3: TImage;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    sComboBox1: TsComboBox;
    MediaPlayer1: TMediaPlayer;
    Label3: TLabel;
    RadioButton3: TRadioButton;
    CalendarPicker1: TCalendarPicker;
    procedure Label2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure CalendarPicker1Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses glavnaya, zastavka1, web, spravka;



procedure TForm8.CalendarPicker1Change(Sender: TObject);
var
  SelectedDateTime: TDateTime;
begin
  SelectedDateTime := CalendarPicker1.Date;

  if (SelectedDateTime >= EncodeTime(17, 0, 0, 0)) and (SelectedDateTime <= EncodeTime(17, 1, 0, 0)) then
    ShowMessage('Напоминание: Время для чего-то важного! Для тренировки');
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  sComboBox1.Items.Add('музыка\chime-adam-tell-whole-rob-gasser-remix.mp3');
  sComboBox1.Items.Add('музыка\skandr-summer-booty.mp3');
  sComboBox1.Items.Add('музыка\liqwyd-scandinavianz-odessa.mp3');
  sComboBox1.Items.Add('музыка\markvard-push.mp3');
  sComboBox1.Items.Add('музыка\shiiva-raw-ill-stay-at-home.mp3');
  sComboBox1.Items.Add('музыка\Пропаганда - Яй-я.mp3');
end;

procedure TForm8.Image2Click(Sender: TObject);
begin
 Form9.MediaPlayer2.Play;
end;

procedure TForm8.Image3Click(Sender: TObject);
begin
Form9.MediaPlayer2.Stop;
end;

procedure TForm8.Label2Click(Sender: TObject);
begin
Form1.PlayClickSound;
Form6.Show;
RadioButton1.Visible := false;
RadioButton2.Visible := false;
RadioButton3.Visible := false;
Image2.Visible := false;
Image3.Visible := false;
sComboBox1.Visible := false;
CalendarPicker1.Visible := false;
Form8.Close;
end;

procedure TForm8.Label3Click(Sender: TObject);
begin
Form9.Show;
Form8.Close;
end;

procedure TForm8.N1Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar('spravka.chm'),nil,nil,SW_SHOW);
end;

procedure TForm8.N4Click(Sender: TObject);
begin
Form10.show;
end;

procedure TForm8.RadioButton1Click(Sender: TObject);
begin
Form1.sSkinManager1.SkinName := 'Steam2';
end;

procedure TForm8.RadioButton2Click(Sender: TObject);
begin
Form1.sSkinManager1.SkinName := 'Calcium';
end;

procedure TForm8.RadioButton3Click(Sender: TObject);
begin
Form1.sSkinManager1.SkinName := 'Garnet II';
end;

procedure TForm8.sBitBtn1Click(Sender: TObject);
begin
Image2.Visible := true;
Image3.Visible := true;
end;

procedure TForm8.sBitBtn2Click(Sender: TObject);
begin
sComboBox1.Visible := true;
end;

procedure TForm8.sBitBtn3Click(Sender: TObject);
begin
RadioButton1.Visible := true;
RadioButton2.Visible := true;
RadioButton3.Visible := true;
end;

procedure TForm8.sBitBtn4Click(Sender: TObject);
begin
CalendarPicker1.Visible := true;
end;

end.
