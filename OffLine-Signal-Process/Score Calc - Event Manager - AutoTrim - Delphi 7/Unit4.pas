unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, ComCtrls;

type
  Tzoom_form = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Button1: TButton;
    Panel1: TPanel;
    max_trackbar: TTrackBar;
    Label1: TLabel;
    Panel2: TPanel;
    min_trackbar: TTrackBar;
    Label2: TLabel;
    a_label: TLabel;
    b_label: TLabel;
    Series4: TLineSeries;
    Series5: TLineSeries;
    stimulus_show: TCheckBox;
    MAP_show: TCheckBox;
    contraction_show: TCheckBox;
    Label5: TLabel;
    signal_name_label: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    min_ms_trackbar: TTrackBar;
    max_ms_trackbar: TTrackBar;
    Label8: TLabel;
    Label9: TLabel;
    Chart2: TChart;
    Series6: TLineSeries;
    Series7: TLineSeries;
    min_ms_label: TLabel;
    max_ms_label: TLabel;
    Timer1: TTimer;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure max_trackbarChange(Sender: TObject);
    procedure min_trackbarChange(Sender: TObject);
    procedure stimulus_showClick(Sender: TObject);
    procedure MAP_showClick(Sender: TObject);
    procedure contraction_showClick(Sender: TObject);
    procedure min_ms_trackbarChange(Sender: TObject);
    procedure max_ms_trackbarChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zoom_form: Tzoom_form;
  zoom_upper_limit , zoom_lower_limit : double;
  a , b : double;
implementation

uses Unit1;

{$R *.dfm}

procedure Tzoom_form.max_trackbarChange(Sender: TObject);
begin
if signal_name_label.Caption = 'MAP' then
begin
a := strtofloat(a_label.Caption);
b := strtofloat(b_label.Caption);

zoom_upper_limit := (1/a) * (1000 - max_trackbar.Position) - (b/a);
chart1.Series[1].Clear;
chart1.Series[1].AddXY(chart1.BottomAxis.Minimum,zoom_upper_limit);
chart1.Series[1].AddXY(chart1.BottomAxis.Maximum,zoom_upper_limit);


 form1.edit6.text := floattostr(trunc(zoom_upper_limit*100) / 100);
 form1.edit7.text := floattostr(trunc(zoom_lower_limit*100) / 100);
end; //MAP



if signal_name_label.Caption = 'Contraction' then
begin
a := strtofloat(a_label.Caption);
b := strtofloat(b_label.Caption);

zoom_upper_limit := (1/a) * (1000 - max_trackbar.Position) - (b/a);
chart1.Series[1].Clear;
chart1.Series[1].AddXY(chart1.BottomAxis.Minimum,zoom_upper_limit);
chart1.Series[1].AddXY(chart1.BottomAxis.Maximum,zoom_upper_limit);


 form1.edit10.text := floattostr(trunc(zoom_upper_limit*100) / 100);
 form1.edit11.text := floattostr(trunc(zoom_lower_limit*100) / 100);
end; //Contraction



end;

procedure Tzoom_form.min_trackbarChange(Sender: TObject);
begin
if signal_name_label.Caption = 'MAP' then
begin
a := strtofloat(a_label.Caption);
b := strtofloat(b_label.Caption);

zoom_lower_limit := (1/a) * (1000 - min_trackbar.Position) - (b/a);


chart1.Series[2].Clear;
chart1.Series[2].AddXY(chart1.BottomAxis.Minimum,zoom_lower_limit);
chart1.Series[2].AddXY(chart1.BottomAxis.Maximum,zoom_lower_limit);


 form1.edit6.text := floattostr(trunc(zoom_upper_limit*100) / 100);
 form1.edit7.text := floattostr(trunc(zoom_lower_limit*100) / 100);

end;    //MAP


if signal_name_label.Caption = 'Contraction' then
begin
a := strtofloat(a_label.Caption);
b := strtofloat(b_label.Caption);

zoom_lower_limit := (1/a) * (1000 - min_trackbar.Position) - (b/a);


chart1.Series[2].Clear;
chart1.Series[2].AddXY(chart1.BottomAxis.Minimum,zoom_lower_limit);
chart1.Series[2].AddXY(chart1.BottomAxis.Maximum,zoom_lower_limit);


 form1.edit10.text := floattostr(trunc(zoom_upper_limit*100) / 100);
 form1.edit11.text := floattostr(trunc(zoom_lower_limit*100) / 100);

end;    //Contraction

end;

procedure Tzoom_form.stimulus_showClick(Sender: TObject);
begin
chart1.Series[3].Active := stimulus_show.Checked;
end;

procedure Tzoom_form.MAP_showClick(Sender: TObject);
begin
chart1.Series[0].Active := MAP_show.Checked;
end;

procedure Tzoom_form.contraction_showClick(Sender: TObject);
begin
chart1.Series[4].Active := contraction_show.Checked;
end;

procedure Tzoom_form.min_ms_trackbarChange(Sender: TObject);
var
position : integer;
begin
position := min_ms_trackbar.Position;

if signal_name_label.Caption = 'MAP' then form1.edit8.text := inttostr(position);
if signal_name_label.Caption = 'Contraction' then form1.edit12.text := inttostr(position);
zoom_form.Chart2.Series[0].Clear;
zoom_form.Chart2.Series[0].Addxy(-1*position,1);
zoom_form.Chart2.Series[0].Addxy(position,1);
min_ms_label.Caption := inttostr(position);


end;

procedure Tzoom_form.max_ms_trackbarChange(Sender: TObject);
var
position : integer;
begin
position := max_ms_trackbar.Position;
if position + 5 < min_ms_trackbar.Position then min_ms_trackbar.Position := position + 5;
if signal_name_label.Caption = 'MAP' then form1.edit9.text := inttostr(position);
if signal_name_label.Caption = 'Contraction' then form1.edit13.text := inttostr(position);
zoom_form.Chart2.Series[1].Clear;
zoom_form.Chart2.Series[1].Addxy(-1*position,2);
zoom_form.Chart2.Series[1].Addxy(position,2);

max_ms_label.Caption := inttostr(position);
end;

procedure Tzoom_form.Timer1Timer(Sender: TObject);
begin
if max_trackbar.Position > min_trackbar.Position then min_trackbar.position := max_trackbar.Position;
if min_trackbar.Position < max_trackbar.Position then max_trackbar.position := min_trackbar.Position;

if min_ms_trackbar.Position > max_ms_trackbar.Position then max_ms_trackbar.Position := min_ms_trackbar.Position + 5;
if max_ms_trackbar.Position < min_ms_trackbar.Position then min_ms_trackbar.Position := max_ms_trackbar.Position - 5;

end;

procedure Tzoom_form.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked then form1.trim_stimulus_btn.Click
else form1.main_stimulus_btn.Click;
end;

procedure Tzoom_form.CheckBox2Click(Sender: TObject);
begin
if checkbox2.Checked then form1.trim_contraction_btn.Click
else form1.main_contraction_btn.Click;
end;

procedure Tzoom_form.CheckBox3Click(Sender: TObject);
begin
chart1.Series[5].Active := checkbox3.Checked;

end;

procedure Tzoom_form.CheckBox4Click(Sender: TObject);
begin
chart1.Series[6].Active := checkbox4.Checked;
end;

end.
