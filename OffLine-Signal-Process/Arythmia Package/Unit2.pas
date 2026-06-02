unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons;

type
  int64_array = array [1..10000000] of int64;
  TForm2 = class(TForm)



    Chart1: TChart;
    Series1: TBarSeries;
    Chart2: TChart;
    Series2: TLineSeries;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Chart1ClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  
  end;

var
  Form2: TForm2;
  click_index : integer;
   pulse_array : int64_array;
   global_pulse_no : int64;
   global_t : double;
    s , s1 , s2 , s3: string;
    c1 : integer;
    c2 : int64;
    c_start , c_end : int64;
    t : real;
    out_file : text;
implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit10,
  SerialNGSFileDemoMain;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
chart1.Series[0].Add(100,'wbcl');
chart1.Series[0].Add(150,'bcl');
chart1.Series[0].Add(200,'fatigue');
chart1.Series[0].Add(100,'af');
pulse_array[1] := 0;

end;

procedure TForm2.Chart1ClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  click_index := Series1.Clicked(X,Y);
  label1.Caption := inttostr(click_index);
   s := memo1.Lines[click_index];

   chart2.Series[0].Clear;
   s1 := '';
   s2 := '';
   c1 := 1;
   repeat
    s1 := s1 + s[c1];
    c1 := c1 + 1;
   until (s[c1] = '#');
   c1 := c1 + 1;
   repeat
    s2 := s2 + s[c1];
    c1 := c1 + 1;
   until (s[c1] = '#');

   label1.Caption := s1 + ',' + s2;

   c_start := strtoint(s1);
   c_end := strtoint(s2);
   c2 := c_start;
   t := 0;
    repeat
      Chart2.Series[0].AddXY(t,0);
      low_time_ms := trunc(pulse_array[c2] / 1000);
      t := t + low_time_ms;
      Chart2.Series[0].AddXY(t,0);

      c2 := c2 + 1;
      Chart2.Series[0].AddXY(t,1);
      high_time_ms := trunc(pulse_array[c2] / 1000);
      t := t + high_time_ms;
      form2.Chart2.Series[0].AddXY(t,1);

      c2 := c2 + 1;
    until (c2 > c_end);


end;

procedure TForm2.Button2Click(Sender: TObject);
begin
BCL_form.show;

end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
global_pulse_no := 0;
global_t := 0;
chart1.Series[0].Clear;
chart2.Series[0].Clear;
memo1.Lines.Clear;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
recovery_form.show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
facitilation_form.show;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
wbcl_form.show;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
fatigue_form.show;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
Rate_dependency_form.show;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
af_form.show;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
var
low1,low2,high,rnd : byte;
c : int64;
b : integer;
begin
if savedialog1.Execute then
begin
assignfile(out_file,savedialog1.filename+'.pmf');
rewrite(out_file);
form1.fnameedit.Text := savedialog1.filename+'.pmf';
c := 1;
size := global_pulse_no;
//writeln(out_file,inttostr(size));

if ((size <= 174760)) then
begin
repeat
randomize();
low_time := pulse_array[c];
high_time := pulse_array[c+1];
//AVR Timer1 11059000 , prescaler 256 -> 1 count = 23.14uS
low_time := trunc(low_time/23.14);
low1 := low_time div 256; if low1 = 255 then low1 := 254;
low2 := low_time mod 256; if low2 = 255 then low2 := 254;
high := trunc(high_time / 23.14); if high = 255 then high := 254;

writeln(out_file,inttostr(low1));
writeln(out_file,inttostr(low2));
writeln(out_file,inttostr(high));

c := c + 2;
until (c > size);

closefile(out_file);
end
else showmessage('Max Pulse Number is 174760 and Min Time 1000uS and Max Time 1510000.');



end;

end;

end.
