unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Series1: TBarSeries;
    Memo1: TMemo;
    Series3: TBarSeries;
    Memo2: TMemo;
    Button1: TButton;
    Label7: TLabel;
    Series2: TBarSeries;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Memo3: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CheckBox4: TCheckBox;
    Desired_area_memo: TMemo;
    Series4: TPointSeries;
    Series5: TPointSeries;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  c , max_count : integer;
  xval , yval : double;
  click_flag : boolean;
  xval1 , xval2 : double;

  dt , y_value , x_value_check : double;
  sum : double;
  s1,s2,s3 : string;
  c2 , c3 : integer;
  stimulus_area , MAP_area , Contraction_area : double;
  left_axis_max : real;
  
implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form1.Button8.Click;


end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
chart1.Series[0].Active := checkbox1.Checked;
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
chart1.Series[1].Active := checkbox2.Checked;
end;

procedure TForm2.CheckBox3Click(Sender: TObject);
begin
chart1.Series[2].Active := checkbox3.Checked;
end;

procedure TForm2.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 XVal :=Chart1.BottomAxis.CalcPosPoint(X);
  YVal :=Chart1.LeftAxis.CalcPosPoint(Y);


end;

procedure TForm2.Chart1Click(Sender: TObject);
begin

if click_flag then
begin
  chart1.Series[3].Clear;
  chart1.Series[3].Addxy(xval , 100);
  click_flag := not click_flag;
  xval2 := xval;

  //calculate area under score curve
  dt := strtofloat(form1.Edit1.text);
  //1 stimulus
  max_count := memo3.Lines.Count - 3;
  sum := 0;
  for c := 1 to max_count do
  begin
   s1 := memo3.Lines[c];
   s2 := '';
   s3 := '';
   c2 := 1;
   c3 := length(s1);
   repeat
    s2 := s2 + s1[c2];
    c2 := c2 + 1;
   until (s1[c2] = chr(9));
   c2 := c2 + 1;
   repeat
    s3 := s3 + s1[c2];
    c2 := c2 + 1;
   until (c2 > c3);
   x_value_check := strtofloat(s2);
   if ((x_value_check > xval1) and (x_value_check < xval2)) then
   begin
   // sum := sum + strtofloat(s3)*dt;
   sum := sum + strtofloat(s3);
   end;
  end;
  stimulus_area := sum;


  //2 MAP
  max_count := memo1.Lines.Count - 3;
  sum := 0;
  for c := 1 to max_count do
  begin
   s1 := memo1.Lines[c];
   s2 := '';
   s3 := '';
   c2 := 1;
   c3 := length(s1);
   repeat
    s2 := s2 + s1[c2];
    c2 := c2 + 1;
   until (s1[c2] = chr(9));
   c2 := c2 + 1;
   repeat
    s3 := s3 + s1[c2];
    c2 := c2 + 1;
   until (c2 > c3);
   x_value_check := strtofloat(s2);
   if ((x_value_check > xval1) and (x_value_check < xval2)) then
   begin
   // sum := sum + strtofloat(s3)*dt;
   sum := sum + strtofloat(s3);
   end;
  end;
  MAP_area := sum;


  //3 Contraction
  max_count := memo2.Lines.Count - 3;
  sum := 0;
  for c := 1 to max_count do
  begin
   s1 := memo2.Lines[c];
   s2 := '';
   s3 := '';
   c2 := 1;
   c3 := length(s1);
   repeat
    s2 := s2 + s1[c2];
    c2 := c2 + 1;
   until (s1[c2] = chr(9));
   c2 := c2 + 1;
   repeat
    s3 := s3 + s1[c2];
    c2 := c2 + 1;
   until (c2 > c3);
   x_value_check := strtofloat(s2);
   if ((x_value_check > xval1) and (x_value_check < xval2)) then
   begin
   // sum := sum + strtofloat(s3)*dt;
   sum := sum + strtofloat(s3);
   end;
  end;
  Contraction_area := sum;

  label10.Caption := 'Stimulus Area : ' + inttostr(trunc(stimulus_area));
  label11.Caption := 'MAP Area : ' + inttostr(trunc(MAP_area));
  label12.Caption := 'Contraction Area : ' + inttostr(trunc(Contraction_area));

  desired_area_memo.Lines.Add('Area under curve between ('+inttostr(trunc(xval1))+','+inttostr(trunc(xval2))+') are as follow:');
  desired_area_memo.Lines.Add(label10.Caption);
  desired_area_memo.Lines.Add(label11.Caption);
  desired_area_memo.Lines.Add(label12.Caption);


  form1.end_period_label.Caption := inttostr(trunc(xval2));
  form1.mean_of_desired_area_btn.Click;

end
else
begin
  chart1.Series[4].Clear;
  chart1.Series[4].Addxy(xval , 100);
  click_flag := not click_flag;
  xval1 := xval;

  form1.start_period_label.Caption := inttostr(trunc(xval1));

end;

end;

procedure TForm2.CheckBox4Click(Sender: TObject);
begin
chart1.Series[3].Active := checkbox4.Checked;
chart1.Series[4].Active := checkbox4.Checked;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 left_axis_max := form2.Chart1.LeftAxis.Maximum;
 form2.Chart1.LeftAxis.SetMinMax(0 , left_axis_max + (0.1*left_axis_max));

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 left_axis_max := form2.Chart1.LeftAxis.Maximum;
 form2.Chart1.LeftAxis.SetMinMax(0 , left_axis_max - (0.1*left_axis_max));

end;

end.
