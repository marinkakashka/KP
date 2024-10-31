unit glavnaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.OleCtrls, SHDocVw, acWebBrowser, sBitBtn,
  Vcl.MPlayer, acPNG, IniFiles;

  var
  FirstTime: Boolean = True;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image5: TImage;
    Panel3: TPanel;
    Image6: TImage;
    Image8: TImage;
    Image7: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    MediaPlayer1: TMediaPlayer;
    Image9: TImage;
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private

  public
    procedure SaveProgress(Count: Integer);
    function LoadProgress: Integer;
  end;

var
  Form6: TForm6;


implementation

{$R *.dfm}

uses nastroyki, otchet, web, zastavka1, pol2;



procedure TForm6.BitBtn10Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\ягодицы опыт.htm');
end;

procedure TForm6.BitBtn11Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\все тело продв.htm');
end;

procedure TForm6.BitBtn12Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\руки продв.htm');
end;

procedure TForm6.BitBtn13Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\пресс продв.htm');
end;

procedure TForm6.BitBtn14Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\ноги продв.htm');
end;

procedure TForm6.BitBtn15Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\ягодицы продв.htm');
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\все тело новичок.htm');
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\ягодицы новичок.htm');
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\ягодицы новичок.htm');
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\новичок ноги.htm');
end;

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\руки новичок.htm');
end;

procedure TForm6.BitBtn6Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\все тело опытный.htm');
end;

procedure TForm6.BitBtn7Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\руки опыт.htm');
end;

procedure TForm6.BitBtn8Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\пресс опытный.htm');
end;

procedure TForm6.BitBtn9Click(Sender: TObject);
begin
Form6.Hide;
Form9.Show;
Form9.sWebBrowser1.Navigate(extractFilePath(paramstr(0))+'странички\ноги опыт.htm');
end;

procedure TForm6.FormCreate(Sender: TObject);
var font:string;
begin
font:=extractfilepath(application.ExeName);
AddFontResource(PChar(font + 'шрифты\ofont.ru_Capture it.ttf'));
AddFontResource(PChar(font + 'шрифты\ofont.ru_SAIBA-45.ttf'));
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  if FirstTime then
  begin
    Form2.ShowModal;
    FirstTime := False;
  end;
end;

procedure TForm6.Image2MouseEnter(Sender: TObject);
begin
  Label2.Caption := 'Главная';
end;

procedure TForm6.Image2MouseLeave(Sender: TObject);
begin
  Label2.Caption := '';
end;

procedure TForm6.Image3Click(Sender: TObject);
begin
Form1.PlayClickSound;
  Form7.Show;
end;

procedure TForm6.Image3MouseEnter(Sender: TObject);
begin
  Label3.Caption := 'Отчёт';
end;

procedure TForm6.Image3MouseLeave(Sender: TObject);
begin
  Label3.Caption := '';
end;

procedure TForm6.Image4Click(Sender: TObject);
begin
Form1.PlayClickSound;
  Form8.Show;
end;

procedure TForm6.Image4MouseEnter(Sender: TObject);
begin
  Label4.Caption := 'Настройки';
end;

procedure TForm6.Image4MouseLeave(Sender: TObject);
begin
  Label4.Caption := '';
end;


procedure TForm6.PageControl1Change(Sender: TObject);
begin
Form1.PlayClickSound;
end;

procedure TForm6.SaveProgress(Count: Integer);
var
  TextFile: TStringList;
  FilePath: string;
begin
  FilePath := ExtractFilePath(Application.ExeName) + 'отчет/user data.txt';
  TextFile := TStringList.Create;
  try
    TextFile.Add(IntToStr(Count));
    TextFile.SaveToFile(FilePath);
  finally
    TextFile.Free;
  end;
end;

function TForm6.LoadProgress: Integer;
var
  TextFile: TStringList;
  FilePath: string;
  TimerExpired: Boolean;
begin
  FilePath := ExtractFilePath(Application.ExeName) + 'отчет/user data.txt';

  TextFile := TStringList.Create;
  try
    if TimerExpired then
      Result := 1 // Таймер вышел, записываем 1
    else
      Result := 0; // Таймер не вышел, записываем 0

    // Записываем значение в файл
    TextFile.Text := IntToStr(Result);
    TextFile.SaveToFile(FilePath);
  finally
    TextFile.Free;
  end;
end;

procedure TForm6.FormDestroy(Sender: TObject);
begin
var font:string;
begin
font:=extractfilepath(application.ExeName);
AddFontResource(PChar(font + 'шрифты\ofont.ru_Capture it.ttf'));
AddFontResource(PChar(font + 'шрифты\ofont.ru_SAIBA-45.ttf'));
end;
end;


end.
