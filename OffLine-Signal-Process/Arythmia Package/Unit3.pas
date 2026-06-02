unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TBCL_form = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BCL_form: TBCL_form;
  max_pulse : word;
  count : word;
  low_time, high_time : int64;
  low_time_ms , high_time_ms : real;
  t : real;
  s : string;
implementation

uses Unit2;



{$R *.dfm}

procedure TBCL_form.Button1Click(Sender: TObject);
begin
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

form2.Chart1.Series[0].Add(max_pulse,'BCL'+edit2.Text);
global_t := global_t + t;
form2.Label1.Caption := 'Global Pulse Count: '+ inttostr(global_pulse_no) + '  ,Total Test Time (ms): ' + floattostr(global_t);
s := s + '#'+inttostr(global_pulse_no+1)+'#';
form2.memo1.lines.Add(s);
bcl_form.Close;


end;

end.
