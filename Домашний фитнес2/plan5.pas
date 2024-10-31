unit plan5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.OleCtrls, SHDocVw, acWebBrowser, acPNG;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    sWebBrowser1: TsWebBrowser;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function GetWorkoutPage(difficultyLevel: Integer; muscleGroup: String): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  difficultyLevel: Integer;
  muscleGroup: String;
  url: String;
  WorkoutPages: array[0..2, 1..5] of String; // массив для 3 уровней сложности и 5 групп мышц

implementation

{$R *.dfm}

uses glavnaya, zona3, otgim4, zastavka1, pol2;

function TForm5.GetWorkoutPage(difficultyLevel: Integer; muscleGroup: String): String;
var
  Path: String;
begin
  Path := ExtractFilePath(Application.ExeName); // Gets the path of the .exe file
  Result := Path + WorkoutPages[difficultyLevel][StrToInt(muscleGroup)];
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
Form1.PlayClickSound;
 begin
  // Определение выбранного уровня сложности
  if Form4.RadioButton1.Checked then difficultyLevel := 0 // новичок
  else if Form4.RadioButton3.Checked then difficultyLevel := 1 // опытный
  else if Form4.RadioButton2.Checked then difficultyLevel := 2; // продвинутый

  // Определение выбранной группы мышц
  muscleGroup := '';
  if Form3.RadioButton1.Checked then muscleGroup := muscleGroup + '1';
  if Form3.RadioButton2.Checked then muscleGroup := muscleGroup + '2';
  if Form3.RadioButton3.Checked then muscleGroup := muscleGroup + '3';
  if Form3.RadioButton4.Checked then muscleGroup := muscleGroup + '4';
  if Form3.RadioButton5.Checked then muscleGroup := muscleGroup + '5';

  sWebBrowser1.Navigate(GetWorkoutPage(difficultyLevel, muscleGroup));
 end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  WorkoutPages[0, 1] := 'странички\все тело новичок.htm';
  WorkoutPages[0, 2] := 'странички\пресс новичок.htm';
  WorkoutPages[0, 3] := 'странички\руки новичок.htm';
  WorkoutPages[0, 4] := 'странички\ягодицы новичок.htm';
  WorkoutPages[0, 5] := 'странички\новичок ноги.htm';
  WorkoutPages[1, 1] := 'странички\все тело опытный.htm';
  WorkoutPages[1, 2] := 'странички\пресс опытный.htm';
  WorkoutPages[1, 3] := 'странички\руки опыт.htm';
  WorkoutPages[1, 4] := 'странички\ягодицы опыт.htm';
  WorkoutPages[1, 5] := 'странички\ноги опыт.htm';
  WorkoutPages[2, 1] := 'странички\все тело продв.htm';
  WorkoutPages[2, 2] := 'странички\пресс продв.htm';
  WorkoutPages[2, 3] := 'странички\руки продв.htm';
  WorkoutPages[2, 4] := 'странички\ягодицы продв.htm';
  WorkoutPages[2, 5] := 'странички\ноги продв.htm';
end;

procedure TForm5.Label3Click(Sender: TObject);
begin
Form1.PlayClickSound;
Form6.show;
Form5.close;
end;

end.
