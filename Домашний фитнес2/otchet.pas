unit otchet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, acPNG, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series, Vcl.ComCtrls, acProgressBar,
  Vcl.Grids, sPanel, sMonthCalendar;

type
  TForm7 = class(TForm)
    Image3: TImage;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    sProgressBar1: TsProgressBar;
    Button1: TButton;
    sMonthCalendar1: TsMonthCalendar;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sMonthCalendar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateStringGridAndProgressBar;
    procedure UpdateStringGrid(StringGrid1: TStringGrid; CompletedWorkouts: Integer);
    procedure UpdateProgressBar(sProgressBar1: TsProgressBar; CompletedWorkouts: Integer; TotalWorkouts: Integer);
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses glavnaya, zastavka1;

procedure TForm7.Button1Click(Sender: TObject);
begin
Form6.Show;
Form7.Close;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
Form6.LoadProgress;
end;

procedure TForm7.sMonthCalendar1Change(Sender: TObject);
begin
var
  SelectedDate: TDateTime;
begin
  SelectedDate := sMonthCalendar1.CalendarDate;
  StringGrid1.Cells[1, 1] := DateToStr(SelectedDate);
end;
end;

procedure TForm7.UpdateStringGridAndProgressBar;
var
  CompletedWorkouts: Integer;
  TotalWorkouts: Integer;
begin
  CompletedWorkouts := Form6.LoadProgress;
  TotalWorkouts := StringGrid1.RowCount - 1;
  UpdateStringGrid(StringGrid1, CompletedWorkouts);
  UpdateProgressBar(sProgressBar1, CompletedWorkouts, TotalWorkouts);
end;

procedure TForm7.UpdateStringGrid(StringGrid1: TStringGrid; CompletedWorkouts: Integer);
var
  FileName: string;
  FileContents: TStringList;
  i: Integer;
begin
  FileName := 'отчет/user data.txt';

  FileContents := TStringList.Create;
  try
    FileContents.LoadFromFile(FileName);

    for i := 0 to StringGrid1.RowCount - 1 do
    begin
      if i < FileContents.Count then
      begin
        if FileContents[i] = '1' then
        begin
          StringGrid1.Cells[1, i + 1] := 'Завершено';
          Inc(CompletedWorkouts); // увеличиваем прогресс, если тренировка завершена
        end
        else
          StringGrid1.Cells[1, i + 1] := 'Не завершено';
      end
      else
        StringGrid1.Cells[1, i + 1] := 'Неизвестно';
    end;
  finally
    FileContents.Free;
  end;
end;

procedure TForm7.UpdateProgressBar(sProgressBar1: TsProgressBar; CompletedWorkouts, TotalWorkouts: Integer);
begin
  sProgressBar1.Max := TotalWorkouts;
  sProgressBar1.Position := CompletedWorkouts;
end;

end.
