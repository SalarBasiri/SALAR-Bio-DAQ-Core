unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfacitilation_form = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  facitilation_form: Tfacitilation_form;

      max_pulse : word;
  count, c1 , c2 , c3 : word;
  low_time, high_time : int64;
  low_time_ms , high_time_ms : real;
  t : real;

  s : string;
implementation

uses Unit2;

{$R *.dfm}

procedure Tfacitilation_form.Button1Click(Sender: TObject);
begin

 c2 := strtoint(edit1.Text);
 max_pulse := (c2 + 2) * (memo1.Lines.Count);
 
count := 1;
form2.Chart2.Series[0].Clear;
t := 0;
c3 := 0;

 s := '';
s := inttostr(global_pulse_no+1);

repeat

 low_time_ms := strtofloat(edit2.Text);
 high_time_ms := strtofloat(edit3.Text);

 low_time := trunc(strtofloat(edit2.Text) * 1000);
 high_time := trunc(strtofloat(edit3.Text) * 1000);

for c1 := 1 to c2 do
begin
form2.Chart2.Series[0].AddXY(t,0);
global_pulse_no := global_pulse_no + 1;
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
form2.Chart2.Series[0].AddXY(t,0);

form2.Chart2.Series[0].AddXY(t,1);
global_pulse_no := global_pulse_no + 1;
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
form2.Chart2.Series[0].AddXY(t,1);

count := count +1;
end;

form2.Chart2.Series[0].AddXY(t,0);
global_pulse_no := global_pulse_no + 1;
low_time_ms := strtofloat(edit4.Text);
low_time := trunc(low_time_ms * 1000);
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
form2.Chart2.Series[0].AddXY(t,0);

form2.Chart2.Series[0].AddXY(t,1);
global_pulse_no := global_pulse_no + 1;
high_time_ms := strtofloat(edit5.Text);
high_time := trunc(high_time_ms * 1000);
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
form2.Chart2.Series[0].AddXY(t,1);

count := count +1;


form2.Chart2.Series[0].AddXY(t,0);
global_pulse_no := global_pulse_no + 1;
low_time_ms := strtofloat(memo1.Lines[c3]);
c3 := c3+1;
low_time := trunc(low_time_ms * 1000);
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
form2.Chart2.Series[0].AddXY(t,0);

form2.Chart2.Series[0].AddXY(t,1);
global_pulse_no := global_pulse_no + 1;
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
form2.Chart2.Series[0].AddXY(t,1);

count := count +1;

until (count > max_pulse);

form2.Chart1.Series[0].Add(max_pulse,'Facitilation'+edit2.Text+','+edit4.text+'('+memo1.Lines[0]+'->'+memo1.Lines[c3-1]+')');
global_t := global_t + t;
form2.Label1.Caption := 'Global Pulse Count: '+ inttostr(global_pulse_no) + '  ,Total Test Time (ms): ' + floattostr(global_t);

s := s + '#'+inttostr(global_pulse_no+1)+'#';
form2.memo1.lines.Add(s);

facitilation_form.Close;
end;

end.
