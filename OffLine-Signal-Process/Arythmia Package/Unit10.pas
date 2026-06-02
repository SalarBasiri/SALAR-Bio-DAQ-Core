unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Series, TeEngine, ExtCtrls, TeeProcs, Chart, StdCtrls , Math;

type

my_ar = array[1..20000] of word;
my_ar_real = array[1..20000] of real;
  TAF_form = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button3: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TBarSeries;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AF_form: TAF_form;

   y : real;
 y_int : integer;
 x , x_max : word;
  mean , std_dv : real;
  pulse_no : word;

  low , high : real;

  q1,q2,q3,q4 : real;

  max , min : real;

  std_dv_array : my_ar;
  rand_ar2: my_ar;

  rand_ar : my_ar_real;

  c1 , c2 , c3 : word;
  ar_index : word;

  current_pos_value : word;

  max_index : word;
  max_rand : real;
  std_dv_pulse_index : integer;
  zero_count : integer;
  new_pulse_no : word;
  myfile : text;

  a : word;

t : real;

low1,low2,high1 : byte;



  max_pulse : word;
  count : word;
  low_time, high_time : int64;
  low_time_ms , high_time_ms : real;

  s : string;
  s_criteria : string;
  

implementation

uses Unit2;

{$R *.dfm}

procedure TAF_form.Button1Click(Sender: TObject);
begin


x := 0;
mean := strtofloat(edit2.Text);
std_dv := strtofloat(edit3.Text);
pulse_no := strtoint(edit1.Text);
//high := strtofloat(edit4.Text);

s_criteria := 'Mean:'+edit2.Text+' ,Dev:'+edit3.Text;

 high_time_ms := strtofloat(edit4.Text);
 high_time := trunc(high_time_ms * 1000);


max := mean + 3*std_dv;
min := mean - 3*std_dv;




chart1.Series[0].Clear;
chart1.Series[1].Clear;
x := 0;



for c1 := 1 to pulse_no do
begin
   randomize();
   rand_ar[c1] := random;
   std_dv_array[c1] := 0;
end;

max_rand := 0;
for c1 := 1 to pulse_no do
begin
max_rand := 0;

   for c2 := 1 to pulse_no do
    begin
      if rand_ar[c2] > max_rand then
      begin
        max_index := c2;
        max_rand := rand_ar[c2];
      end;
    end;
    rand_ar2[c1] := max_index;
    rand_ar[max_index] := 0;
end;

x_max :=  trunc(mean*2);
std_dv_pulse_index := 1;

repeat
q1 := 1 / (std_dv*sqrt(2*3.1415926535));
q2 := (x-mean) * (x-mean);
q3 := 2*std_dv*std_dv;
q4 := power (2.71828,(-1*q2)/q3);
y := q1 * q4;


y_int:= trunc(y * pulse_no);

if y_int > 0 then
begin
  for c1 := 1 to y_int do
   begin



     std_dv_array[rand_ar2[std_dv_pulse_index]] := x;
     std_dv_pulse_index := std_dv_pulse_index + 1;
     
   end;

   //chart1.Series[1].AddXY(x,y);
end;


chart1.Series[0].AddXY(x,y * pulse_no);
x := x+1;


until (x > x_max);


//for c1 := 1 to pulse_no do
//  if std_dv_array[c1] = 0 then std_dv_array[c1] := trunc(mean);

zero_count := 0;
for c1 := 1 to pulse_no do
  if std_dv_array[c1] = 0 then zero_count := zero_count + 1;

//pulse deviation count for checking algorithm
for c1 := trunc(min) to trunc(max) do
  begin
    c3 := 0;
    for c2 := 1 to pulse_no do
      if std_dv_array[c2] = c1 then c3 := c3+1;

    if c3 > 1 then  chart1.Series[1].AddXY(c1,c3);


  end;


showmessage('Zero: '+inttostr(zero_count));

end;

procedure TAF_form.Button2Click(Sender: TObject);
begin
max := strtofloat(edit6.Text);
min := strtofloat(edit7.Text);

 high_time_ms := strtofloat(edit4.Text);
 high_time := trunc(high_time_ms * 1000);

s_criteria := 'Max:'+edit6.Text+' ,Min:'+edit7.Text;


chart1.Series[0].Clear;
chart1.Series[1].Clear;
x := 0;
mean := (max + min) / 2;
std_dv := (max - min) / 6;
pulse_no := strtoint(edit5.Text);
//high := strtofloat(edit8.Text);


for c1 := 1 to pulse_no do
begin
   randomize();
   rand_ar[c1] := random;
   std_dv_array[c1] := 0;
end;

max_rand := 0;
for c1 := 1 to pulse_no do
begin
max_rand := 0;

   for c2 := 1 to pulse_no do
    begin
      if rand_ar[c2] > max_rand then
      begin
        max_index := c2;
        max_rand := rand_ar[c2];
      end;
    end;
    rand_ar2[c1] := max_index;
    rand_ar[max_index] := 0;
end;

x_max :=  trunc(mean*2);
std_dv_pulse_index := 1;

repeat
q1 := 1 / (std_dv*sqrt(2*3.1415926535));
q2 := (x-mean) * (x-mean);
q3 := 2*std_dv*std_dv;
q4 := power (2.71828,(-1*q2)/q3);
y := q1 * q4;


y_int:= trunc(y * pulse_no);

if y_int > 0 then
begin
  for c1 := 1 to y_int do
   begin



     std_dv_array[rand_ar2[std_dv_pulse_index]] := x;
     std_dv_pulse_index := std_dv_pulse_index + 1;
     
   end;

   //chart1.Series[1].AddXY(x,y);
end;


chart1.Series[0].AddXY(x,y * pulse_no);
x := x+1;


until (x > x_max);


//for c1 := 1 to pulse_no do
//  if std_dv_array[c1] = 0 then std_dv_array[c1] := trunc(mean);

zero_count := 0;
for c1 := 1 to pulse_no do
  if std_dv_array[c1] = 0 then zero_count := zero_count + 1;

//pulse deviation count for checking algorithm
for c1 := trunc(min) to trunc(max) do
  begin
    c3 := 0;
    for c2 := 1 to pulse_no do
      if std_dv_array[c2] = c1 then c3 := c3+1;

    if c3 > 1 then  chart1.Series[1].AddXY(c1,c3);


  end;


showmessage('Zero: '+inttostr(zero_count));

end;

procedure TAF_form.Button3Click(Sender: TObject);
begin


new_pulse_no := pulse_no - zero_count - 1;
form2.Chart2.Series[0].Clear;
form2.Chart2.Series[0].AddXY(0,0);

s := '';
s := inttostr(global_pulse_no+1);


for a := 1 to new_pulse_no do
begin
  low_time_ms := std_dv_array[a];
form2.Chart2.Series[0].AddXY(t,0);
global_pulse_no := global_pulse_no + 1;
low_time := trunc(low_time_ms * 1000);
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
form2.Chart2.Series[0].AddXY(t,0);

form2.Chart2.Series[0].AddXY(t,1);
global_pulse_no := global_pulse_no + 1;
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
form2.Chart2.Series[0].AddXY(t,1);


end;




form2.Chart1.Series[0].Add(new_pulse_no,'AF='+inttostr(new_pulse_no)+'->'+s_criteria);
global_t := global_t + t;
form2.Label1.Caption := 'Global Pulse Count: '+ inttostr(global_pulse_no) + '  ,Total Test Time (ms): ' + floattostr(global_t);
s := s + '#'+inttostr(global_pulse_no+1)+'#';
form2.memo1.lines.Add(s);


AF_form.Close;



end;

end.
