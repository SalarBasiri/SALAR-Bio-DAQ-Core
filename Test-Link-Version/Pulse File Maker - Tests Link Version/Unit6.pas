unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Twbcl_form = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Memo1: TMemo;
    Label3: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    Button3: TButton;
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
  wbcl_form: Twbcl_form;

      max_pulse : word;
  count, c1 , c2 , c3 : word;
  low_time, high_time : int64;
  low_time_ms , high_time_ms , periode_ms : real;
  t : real;

  s : string;
implementation

uses Unit2;

{$R *.dfm}

procedure Twbcl_form.Button1Click(Sender: TObject);
begin
 c2 := strtoint(edit1.Text);
 max_pulse := (c2) * (memo1.Lines.Count);
 
count := 1;
form2.Chart2.Series[0].Clear;
t := 0;
c3 := 0;


s := '';
s := inttostr(global_pulse_no+1);

repeat


 high_time_ms := strtofloat(edit2.Text);

 high_time := trunc(strtofloat(edit2.Text) * 1000);

 //low_time_ms := strtofloat(memo1.Lines[c3]);
  Periode_ms  := strtofloat(memo1.Lines[c3]);
  low_time_ms := Periode_ms - high_time_ms;

 low_time := trunc(low_time_ms * 1000);
 c3 := c3+1;

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




until (count > max_pulse);

form2.Chart1.Series[0].Add(max_pulse,'WBCL_'+edit1.Text+'_'+memo1.Lines[0]+'_'+memo1.Lines[c3-1]+'_');
form2.Label2.Caption := '_WBCL_'+edit1.Text+'_'+memo1.Lines[0]+'_'+memo1.Lines[c3-1]+'_';
global_t := global_t + t;
form2.Label1.Caption := 'Global Pulse Count: '+ inttostr(global_pulse_no) + '  ,Total Test Time (ms): ' + floattostr(global_t);

s := s + '#'+inttostr(global_pulse_no+1)+'#';
form2.memo1.lines.Add(s);


for c1 := 0 to memo1.Lines.Count-1 do
  form2.tests_memo.Lines.Add(memo1.Lines[c1]);


wbcl_form.Close;
end;

procedure Twbcl_form.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.Add(edit1.Text);
save_memo.Lines.Add(edit2.Text);


for count := 0 to memo1.Lines.Count - 1 do
  save_memo.Lines.Add(memo1.Lines[count]);

save_memo.Lines.SaveToFile(savedialog1.FileName+'.WBCL');



end;
end;

procedure Twbcl_form.Button3Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.LoadFromFile(opendialog1.FileName);

edit1.Text := save_memo.Lines[0];
edit2.Text := save_memo.Lines[1];


memo1.Lines.Clear;
for count := 2 to save_memo.Lines.count - 1 do
   memo1.Lines.Add(save_memo.Lines[count]);

end;
end;

end.
