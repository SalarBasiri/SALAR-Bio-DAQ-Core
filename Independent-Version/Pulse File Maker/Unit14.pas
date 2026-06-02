unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TConcealed_form = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Button1: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    save_memo: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Concealed_form: TConcealed_form;

  max_pulse : word;
  count, c1 , c2 , c3 : word;
  low_time, high_time : int64;
  low_time_ms , high_time_ms , periode_ms : real;
  t : real;

  s : string;
implementation

uses Unit2, Unit5;

{$R *.dfm}

procedure TConcealed_form.Button1Click(Sender: TObject);
begin

 c2 := strtoint(edit1.Text);
 max_pulse := (c2 + 2) * (memo1.Lines.Count);

count := 1;
form2.chart2.Series[0].Clear;
form2.chart2.Series[1].Clear;
form2.chart2.Series[2].Clear;
t := 0;
c3 := 0;

 s := '';
s := inttostr(global_pulse_no+1);

repeat
//BCL
 high_time_ms := strtofloat(edit3.Text);
 periode_ms := strtofloat(edit2.Text);
 low_time_ms := periode_ms - high_time_ms;

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


//Concealed 1
form2.Chart2.Series[0].AddXY(t,0);
 form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
global_pulse_no := global_pulse_no + 1;
 periode_ms := strtofloat(edit4.Text);
 low_time_ms := periode_ms - high_time_ms;
low_time := trunc(low_time_ms * 1000);
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
//form2.Chart2.Series[0].AddXY(t,0);

//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
 form2.Chart2.Series[1].AddXY(t,1);  //test Pulse
global_pulse_no := global_pulse_no + 1;
high_time_ms := strtofloat(edit5.Text);
high_time := trunc(high_time_ms * 1000);
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,1);  //test Pulse

//Concealed 2
form2.Chart2.Series[0].AddXY(t,0);
 form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
global_pulse_no := global_pulse_no + 1;
 periode_ms := strtofloat(edit6.Text);
 low_time_ms := periode_ms - high_time_ms;
low_time := trunc(low_time_ms * 1000);
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
//form2.Chart2.Series[0].AddXY(t,0);

//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
 form2.Chart2.Series[1].AddXY(t,1);  //test Pulse
global_pulse_no := global_pulse_no + 1;
high_time_ms := strtofloat(edit5.Text);
high_time := trunc(high_time_ms * 1000);
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,1);  //test Pulse


//Concealed 3
form2.Chart2.Series[0].AddXY(t,0);
 form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
global_pulse_no := global_pulse_no + 1;
 periode_ms := strtofloat(edit7.Text);
 low_time_ms := periode_ms - high_time_ms;
low_time := trunc(low_time_ms * 1000);
pulse_array[global_pulse_no] := low_time;
t := t + low_time_ms;
//form2.Chart2.Series[0].AddXY(t,0);

//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
 form2.Chart2.Series[1].AddXY(t,1);  //test Pulse
global_pulse_no := global_pulse_no + 1;
high_time_ms := strtofloat(edit5.Text);
high_time := trunc(high_time_ms * 1000);
pulse_array[global_pulse_no] := high_time;
t := t + high_time_ms;
//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,1);  //test Pulse



count := count +1;


//Premature
//form2.Chart2.Series[0].AddXY(t,0);
 form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
global_pulse_no := global_pulse_no + 1;
//low_time_ms := strtofloat(memo1.Lines[c3]);
 periode_ms := strtofloat(memo1.Lines[c3]);
 low_time_ms := periode_ms - high_time_ms;
c3 := c3+1;
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

until (count > max_pulse);

form2.Chart1.Series[0].Add(max_pulse,'Concealed_'+edit2.Text+'_'+edit4.text+'_'+edit6.text+'_'+edit7.text+'_'+memo1.Lines[0]+'_'+memo1.Lines[c3-1]+'_');
form2.Label2.Caption := '_Conceald_'+edit2.Text+'_'+edit4.text+'_'+edit6.text+'_'+edit7.text+'_'+memo1.Lines[0]+'_'+memo1.Lines[c3-1]+'_';
global_t := global_t + t;
form2.Label1.Caption := 'Global Pulse Count: '+ inttostr(global_pulse_no) + '  ,Total Test Time (ms): ' + floattostr(global_t);

s := s + '#'+inttostr(global_pulse_no+1)+'#';
form2.memo1.lines.Add(s);

concealed_form.Close;
end;

procedure TConcealed_form.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.Add(edit1.Text);
save_memo.Lines.Add(edit2.Text);
save_memo.Lines.Add(edit3.Text);
save_memo.Lines.Add(edit4.Text);
save_memo.Lines.Add(edit5.Text);
save_memo.Lines.Add(edit6.Text);
save_memo.Lines.Add(edit7.Text);

for count := 0 to memo1.Lines.Count - 1 do
  save_memo.Lines.Add(memo1.Lines[count]);

save_memo.Lines.SaveToFile(savedialog1.FileName+'.Concealed');



end;
end;

procedure TConcealed_form.Button3Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.LoadFromFile(opendialog1.FileName);

edit1.Text := save_memo.Lines[0];
edit2.Text := save_memo.Lines[1];
edit3.Text := save_memo.Lines[2];
edit4.Text := save_memo.Lines[3];
edit5.Text := save_memo.Lines[4];
edit6.Text := save_memo.Lines[5];
edit7.Text := save_memo.Lines[6];

memo1.Lines.Clear;
for count := 7 to save_memo.Lines.count - 1 do
   memo1.Lines.Add(save_memo.Lines[count]);






end;
end;

end.
