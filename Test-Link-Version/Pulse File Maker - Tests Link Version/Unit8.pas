unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Trate_dependency_form = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    Memo1: TMemo;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    save_memo: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rate_dependency_form: Trate_dependency_form;

      max_pulse : word;
  count, c1 , c2 , c3 ,c4 : word;
  low_time, high_time : int64;
  low_time_ms , high_time_ms , periode_ms : real;
  t : real;

  s : string;
implementation

uses Unit2;

{$R *.dfm}

procedure Trate_dependency_form.Button1Click(Sender: TObject);
begin

 c2 := strtoint(edit1.Text);
 c4 := strtoint(edit4.Text);
 max_pulse := (c2 + c4) * (memo1.Lines.Count);
 
count := 1;
form2.Chart2.Series[0].Clear;
t := 0;
c3 := 0;

s := '';
s := inttostr(global_pulse_no+1);

repeat

 //low_time_ms := strtofloat(edit2.Text);
 high_time_ms := strtofloat(edit3.Text);
  Periode_ms  := strtofloat(edit2.Text);
  low_time_ms := Periode_ms - high_time_ms;

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


for c1 := 1 to c4 do
begin
form2.Chart2.Series[0].AddXY(t,0);
 form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
global_pulse_no := global_pulse_no + 1;
//low_time_ms := strtofloat(memo1.Lines[c3]);
 Periode_ms  := strtofloat(memo1.Lines[c3]);
  low_time_ms := Periode_ms - high_time_ms;

low_time := trunc(low_time_ms * 1000);
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
//form2.Chart2.Series[0].AddXY(t,0);

//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
 form2.Chart2.Series[1].AddXY(t,1);  //test Pulse
global_pulse_no := global_pulse_no + 1;
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,1);  //test Pulse
form2.Chart2.Series[1].AddXY(t,0);  //test Pulse


count := count +1;

end;
c3 := c3+1;


until (count > max_pulse);

form2.Chart1.Series[0].Add(max_pulse,'Rate_Dependency_'+edit2.Text+'_'+edit4.Text+'_'+memo1.Lines[0]+'_'+memo1.Lines[c3-1]+'_');
form2.Label2.Caption := '_Rate_Dependency_'+edit2.Text+'_'+edit4.Text+'_'+memo1.Lines[0]+'_'+memo1.Lines[c3-1]+'_';
global_t := global_t + t;
form2.Label1.Caption := 'Global Pulse Count: '+ inttostr(global_pulse_no) + '  ,Total Test Time (ms): ' + floattostr(global_t);

s := s + '#'+inttostr(global_pulse_no+1)+'#';
form2.memo1.lines.Add(s);

for c1 := 0 to memo1.Lines.Count-1 do
  form2.tests_memo.Lines.Add(memo1.Lines[c1]);

  
rate_dependency_form.Close;
end;

procedure Trate_dependency_form.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.Add(edit1.Text);
save_memo.Lines.Add(edit2.Text);
save_memo.Lines.Add(edit3.Text);
save_memo.Lines.Add(edit4.Text);


for count := 0 to memo1.Lines.Count - 1 do
  save_memo.Lines.Add(memo1.Lines[count]);

save_memo.Lines.SaveToFile(savedialog1.FileName+'.Rate_Dependency');



end;
end;

procedure Trate_dependency_form.Button3Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.LoadFromFile(opendialog1.FileName);

edit1.Text := save_memo.Lines[0];
edit2.Text := save_memo.Lines[1];
edit3.Text := save_memo.Lines[2];
edit4.Text := save_memo.Lines[3];


memo1.Lines.Clear;
for count := 4 to save_memo.Lines.count - 1 do
   memo1.Lines.Add(save_memo.Lines[count]);

end;
end;

end.
