unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, ComCtrls;

type
  float_array_small = array [0 .. 10000] of real;
  TMulti_Chart_Show = class(TForm)
    Chart1: TChart;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    files_name_list: TListBox;
    Button7: TButton;
    OpenDialog1: TOpenDialog;
    Button9: TButton;
    GroupBox1: TGroupBox;
    time_list: TListBox;
    stimulus_list: TListBox;
    map_list: TListBox;
    contraction_list: TListBox;
    plot_button: TButton;
    file_data_memo: TMemo;
    MAP_Show_Checkbox: TCheckBox;
    Stimulus_Show_Checkbox: TCheckBox;
    Contraction_Show_Checkbox: TCheckBox;
    Memo1: TMemo;
    Button1: TButton;
    Score_btn: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Series1: TAreaSeries;
    Series2: TAreaSeries;
    Series3: TAreaSeries;
    Series4: TAreaSeries;
    Series5: TAreaSeries;
    Series6: TAreaSeries;
    Series7: TAreaSeries;
    Series8: TAreaSeries;
    Series9: TAreaSeries;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    TrackBar1: TTrackBar;
    Series10: TAreaSeries;
    Series11: TAreaSeries;
    Series12: TAreaSeries;
    Series13: TAreaSeries;
    Series14: TAreaSeries;
    Series15: TAreaSeries;
    Series16: TAreaSeries;
    procedure Button7Click(Sender: TObject);
    procedure files_name_listDblClick(Sender: TObject);
    procedure plot_buttonClick(Sender: TObject);
    procedure Contraction_Show_CheckboxClick(Sender: TObject);
    procedure Stimulus_Show_CheckboxClick(Sender: TObject);
    procedure MAP_Show_CheckboxClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Score_btnClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Multi_Chart_Show: TMulti_Chart_Show;

  chart_index : integer;

    amp : integer;
   c1 , max_count : integer;
   s1 , s2 , s3 , s4 , s : string;
   c2,c3,c4,c5 : integer;
   l : integer;

     periods_array : float_array_small;

     stimulus_amp , map_amp , contraction_amp : integer;

     th1 , th2   : integer;
     th_amp : real;


     first_area , second_area , third_area , all_area_sum : int64;
     first_area_percent , second_area_percent , third_area_percent : real;
     t : integer;

     score : real;
     delta_t : integer;
     file_index : integer;
     
     
implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TMulti_Chart_Show.Button7Click(Sender: TObject);
begin
if (opendialog1.Execute) and (files_name_list.Items.Count<4) then
begin
files_name_list.Items.Add(opendialog1.FileName);
form1.upload_memo.Lines.Add('Multichar Viewr Open New: '+opendialog1.FileName);

end;

end;

procedure TMulti_Chart_Show.files_name_listDblClick(Sender: TObject);
begin
file_data_memo.Lines.LoadFromFile(files_name_list.Items[files_name_list.itemindex]);
max_count :=file_data_memo.lines.count - 16;
time_list.Items.Clear;
stimulus_list.Items.Clear;
map_list.Items.Clear;
contraction_list.Items.Clear;
memo1.Lines.Clear;


for c1 := 1 to max_count do
begin
s := file_data_memo.Lines[c1];
c2 := 1;
s1 := '';
s2 := '';
s3 := '';
s4 := '';
l := length(s);
repeat
s1 := s1 + s[c2];
c2 := c2 + 1;
until (s[c2] = chr(9));
c2 := c2 + 1;

repeat
s2 := s2 + s[c2];
c2 := c2 + 1;
until (s[c2] = chr(9));
c2 := c2 + 1;

repeat
s3 := s3 + s[c2];
c2 := c2 + 1;
until (s[c2] = chr(9));
c2 := c2 + 1;

repeat
s4 := s4 + s[c2];
c2 := c2 + 1;
until (c2 > l);


time_list.Items.Add(s1);
stimulus_list.Items.Add(s4);
map_list.Items.Add(s2);
contraction_list.Items.Add(s3);

end;




max_count :=file_data_memo.lines.count - 1;
memo1.Lines.Clear;
c1 := c1 + 1;
for c2 :=  c1 to max_count do
begin
memo1.Lines.Add(file_data_memo.Lines[c2]);
end;


updown1.Max := strtoint(time_list.Items[time_list.Items.count-1]);
updown2.Max := updown1.Max;

//edit1.Text := inttostr(trunc(0.3 * updown1.Max));
//edit2.Text := inttostr(trunc(0.6 * updown1.Max));

{
th1 := strtoint(edit1.Text);
th2 := strtoint(edit2.Text);
th_amp := chart1.Series[1].MaxYValue;


chart1.Series[3].Clear;
chart1.Series[3].Addxy(th1,th_amp);
chart1.Series[3].Addxy(th2,th_amp);
}
file_index := files_name_list.ItemIndex;
plot_button.Click;

end;

procedure TMulti_Chart_Show.plot_buttonClick(Sender: TObject);
begin
//first plot Stimulus data
max_count := time_list.Items.Count - 1;
period_step := strtoint(form1.Edit1.text);
c1 := 1;
sum_amp := 0;
sum_amp_by_period := 0;
chart1.Series[file_index*4+0].Clear;
chart1.Series[file_index*4+1].Clear;
chart1.Series[file_index*4+2].Clear;
chart1.Series[file_index*4+3].Clear;
repeat

  period_check := strtoint(time_list.items[c1]);

  stimulus_amp := strtoint(stimulus_list.Items[c1]);
  map_amp := strtoint(map_list.Items[c1]);
  contraction_amp := strtoint(contraction_list.Items[c1]);

  Chart1.Series[file_index*4+0].AddXY(period_check,stimulus_amp);
    Chart1.Series[file_index*4+1].AddXY(period_check,map_amp);
      Chart1.Series[file_index*4+2].AddXY(period_check,contraction_amp);
        Chart1.Series[file_index*4+3].AddXY(period_check,0);


  c1 := c1 + 1;

until (c1 > max_count);

//trackbar1.Position := trunc(chart1.BottomAxis.Maximum);
 {
 form2.Chart1.Title.Text.Text := 'Periods Distribiution';

 form2.Chart1.LeftAxis.Title.Caption := 'Counts of Period Duration (No)';
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 //form2.Series2.AddXY(dominant_period,form2.Series1.MaxYValue);
 form2.show;
 form2.label1.caption := 'Sum of all Spectrum (MAP): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (MAP): ' + floattostr(trunc(sum_amp_by_period*100)/100);
 form2.label2.caption := 'Dominant Period (MAP): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (MAP): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
 form2.Memo1.Lines.add(form2.label1.caption);
 form2.Memo1.Lines.Add(form2.label2.caption);
 }



end;

procedure TMulti_Chart_Show.Contraction_Show_CheckboxClick(
  Sender: TObject);
begin
chart1.Series[2].Active := Contraction_show_checkbox.Checked;

end;

procedure TMulti_Chart_Show.Stimulus_Show_CheckboxClick(Sender: TObject);
begin
chart1.Series[0].Active := stimulus_show_checkbox.Checked;

end;

procedure TMulti_Chart_Show.MAP_Show_CheckboxClick(Sender: TObject);
begin
chart1.Series[1].Active := MAP_show_checkbox.Checked;

end;

procedure TMulti_Chart_Show.Button1Click(Sender: TObject);
begin
file_index := files_name_list.ItemIndex;
files_name_list.Items.Delete(file_index);
chart1.Series[file_index*4+0].Clear;
chart1.Series[file_index*4+1].Clear;
chart1.Series[file_index*4+2].Clear;
chart1.Series[file_index*4+3].Clear;

end;

procedure TMulti_Chart_Show.Edit2Change(Sender: TObject);
begin
{
th1 := strtoint(edit1.Text);
th2 := strtoint(edit2.Text);
th_amp := chart1.Series[1].MaxYValue;


chart1.Series[3].Clear;
chart1.Series[3].Addxy(th1,th_amp);
chart1.Series[3].Addxy(th2,th_amp);
 }
end;

procedure TMulti_Chart_Show.Edit1Change(Sender: TObject);
begin
{th1 := strtoint(edit1.Text);
th2 := strtoint(edit2.Text);
th_amp := chart1.Series[1].MaxYValue;


chart1.Series[3].Clear;
chart1.Series[3].Addxy(th1,th_amp);
chart1.Series[3].Addxy(th2,th_amp);
}
end;

procedure TMulti_Chart_Show.Score_btnClick(Sender: TObject);
begin
{max_count := time_list.Items.Count - 1;
first_area := 0;
second_area := 0;
third_area := 0;

delta_t := strtoint(edit1.Text);

for c1 := 1 to max_count do
begin
t := strtoint(time_list.Items[c1]);
amp := strtoint(map_list.Items[c1]);
if (t <= th1) then first_area := first_area + delta_t*amp;
if ((t > th1) and (t < th2)) then second_area := second_area + delta_t*amp;
if (t >= th2) then third_area := third_area + delta_t*amp;
{
if (t <= th1) then first_area := first_area + t*amp;
if ((t > th1) and (t < th2)) then second_area := second_area + t*amp;
if (t >= th2) then third_area := third_area + t*amp;

end;

all_area_sum := first_area + second_area + third_area;

first_area_percent := (first_area / all_area_sum) * 100;
second_area_percent := (second_area / all_area_sum) * 100;
third_area_percent := (third_area / all_area_sum) * 100;

score := (first_area_percent * 7) + (second_area_percent * 3);

score_form.Label1.Caption := 'VF area: '+ inttostr(first_area)+ '  ,  Percent: ' + floattostr(trunc(first_area_percent*10)/10);
score_form.Label2.Caption := 'VT area: '+ inttostr(Second_area)+ '  ,  Percent: ' + floattostr(trunc(Second_area_percent*10)/10);
score_form.Label3.Caption := 'Normal area: '+ inttostr(Third_area)+ '  ,  Percent: ' + floattostr(trunc(Third_area_percent*10)/10);
score_form.Label4.Caption := 'Sum of areas: '+ inttostr(all_area_sum);

score_form.Label5.Caption := 'Score: '+ floattostr(trunc(score)/100);


score_form.show;  }

end;

procedure TMulti_Chart_Show.CheckBox1Click(Sender: TObject);
begin
chart1.Series[0].Active := checkbox1.Checked;
chart1.Series[4].Active := checkbox1.Checked;
chart1.Series[8].Active := checkbox1.Checked;
chart1.Series[12].Active := checkbox1.Checked;
end;

procedure TMulti_Chart_Show.CheckBox2Click(Sender: TObject);
begin
chart1.Series[0+1].Active := checkbox2.Checked;
chart1.Series[4+1].Active := checkbox2.Checked;
chart1.Series[8+1].Active := checkbox2.Checked;
chart1.Series[12+1].Active := checkbox2.Checked;
end;

procedure TMulti_Chart_Show.CheckBox3Click(Sender: TObject);
begin
chart1.Series[0+2].Active := checkbox3.Checked;
chart1.Series[4+2].Active := checkbox3.Checked;
chart1.Series[8+2].Active := checkbox3.Checked;
chart1.Series[12+2].Active := checkbox3.Checked;
end;

procedure TMulti_Chart_Show.TrackBar1Change(Sender: TObject);
begin
chart1.BottomAxis.SetMinMax(0,trackbar1.Position);
end;

procedure TMulti_Chart_Show.FormCreate(Sender: TObject);
begin
multi_chart_show.Left := 0;
multi_chart_show.Top := 0;

end;

end.
