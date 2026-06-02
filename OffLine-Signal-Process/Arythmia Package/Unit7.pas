unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfatigue_form = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fatigue_form: Tfatigue_form;

        max_pulse , max_pulse2 : word;
  count, c1 , c2 , c3 : word;
  low_time, high_time : int64;
  low_time_ms , high_time_ms : real;
  t : real;

implementation

uses Unit2, Unit4;

{$R *.dfm}

procedure Tfatigue_form.Button1Click(Sender: TObject);
begin

//long BCL
  low_time_ms := strtofloat(edit2.Text);
 high_time_ms := strtofloat(edit3.Text);

 low_time := trunc(strtofloat(edit2.Text) * 1000);
 high_time := trunc(strtofloat(edit3.Text) * 1000);
 max_pulse := strtoint(edit1.Text);
 
count := 1;
form2.Chart2.Series[0].Clear;
t := 0;

s := '';
s := inttostr(global_pulse_no+1);

repeat

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
until (count > max_pulse);
max_pulse2 := max_pulse;
//end of Long BCL



//+ Recovery

 c2 := strtoint(edit4.Text);
 max_pulse := (c2 + 1) * (memo1.Lines.Count);
 
count := 1;

c3 := 0;

repeat

 low_time_ms := strtofloat(edit5.Text);
 high_time_ms := strtofloat(edit6.Text);

 low_time := trunc(low_time_ms * 1000);
 high_time := trunc(high_time_ms * 1000);

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

form2.Chart1.Series[0].Add(max_pulse+max_pulse2,'Fatigue'+edit1.Text+'('+memo1.Lines[0]+'->'+memo1.Lines[c3-1]+')');
global_t := global_t + t;
form2.Label1.Caption := 'Global Pulse Count: '+ inttostr(global_pulse_no) + '  ,Total Test Time (ms): ' + floattostr(global_t);

s := s + '#'+inttostr(global_pulse_no+1)+'#';
form2.memo1.lines.Add(s);

fatigue_form.Close;




end;

end.
