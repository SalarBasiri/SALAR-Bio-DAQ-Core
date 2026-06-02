unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, TeEngine, Series, StdCtrls, ExtCtrls, TeeProcs, Chart,
  ComCtrls, ExtDlgs, Menus;

type
  Tcharts_form = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Chart1: TChart;
    Button2: TButton;
    Button3: TButton;
    apd_v: TRadioButton;
    Series1: TPointSeries;
    di_v: TRadioButton;
    s1s2_v: TRadioButton;
    v1v2_v: TRadioButton;
    s2v2_v: TRadioButton;
    v1v2_1_v: TRadioButton;
    apd_p_di_v: TRadioButton;
    APA_v: TRadioButton;
    s1s2_v1v2_v: TRadioButton;
    apd_di_v: TRadioButton;
    apd_apd_p_di_v: TRadioButton;
    apd_s1s2_v: TRadioButton;
    di_s1s2_v: TRadioButton;
    apd_v1v2_v: TRadioButton;
    di_v1v2_v: TRadioButton;
    di_apd_p_di_v: TRadioButton;
    s1s2_apd_p_di_v: TRadioButton;
    apd_h: TRadioButton;
    di_h: TRadioButton;
    s1s2_h: TRadioButton;
    v1v2_h: TRadioButton;
    s2v2_h: TRadioButton;
    v1v2_1_h: TRadioButton;
    apd_p_di_h: TRadioButton;
    apa_h: TRadioButton;
    s1s2_v1v2_h: TRadioButton;
    apd_di_h: TRadioButton;
    apd_apd_p_di_h: TRadioButton;
    s1s2_apd_p_di_h: TRadioButton;
    di_apd_p_di_h: TRadioButton;
    di_s1s2_h: TRadioButton;
    apd_v1v2_h: TRadioButton;
    di_v1v2_h: TRadioButton;
    apd_s1s2_h: TRadioButton;
    Label3: TLabel;
    SavePictureDialog1: TSavePictureDialog;
    PopupMenu1: TPopupMenu;
    DeleteThisPoint1: TMenuItem;
    area_v: TRadioButton;
    area_h: TRadioButton;
    GroupBox3: TGroupBox;
    real_di_rbtn: TRadioButton;
    RadioButton2: TRadioButton;
    rmp_v: TRadioButton;
    rmp_h: TRadioButton;
    max_y_edit: TEdit;
    Label1: TLabel;
    min_y_edit: TEdit;
    Label2: TLabel;
    min_x_edit: TEdit;
    Label4: TLabel;
    max_x_edit: TEdit;
    Label5: TLabel;
    auto_scale_checkbox: TCheckBox;
    tr_v: TRadioButton;
    tf_v: TRadioButton;
    tr_h: TRadioButton;
    tf_h: TRadioButton;
    find_click_index_btn: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure apd_vClick(Sender: TObject);
    procedure di_vClick(Sender: TObject);
    procedure s1s2_vClick(Sender: TObject);
    procedure v1v2_vClick(Sender: TObject);
    procedure s2v2_vClick(Sender: TObject);
    procedure v1v2_1_vClick(Sender: TObject);
    procedure apd_p_di_vClick(Sender: TObject);
    procedure APA_vClick(Sender: TObject);
    procedure s1s2_v1v2_vClick(Sender: TObject);
    procedure apd_di_vClick(Sender: TObject);
    procedure apd_apd_p_di_vClick(Sender: TObject);
    procedure s1s2_apd_p_di_vClick(Sender: TObject);
    procedure di_apd_p_di_vClick(Sender: TObject);
    procedure di_s1s2_vClick(Sender: TObject);
    procedure apd_v1v2_vClick(Sender: TObject);
    procedure di_v1v2_vClick(Sender: TObject);
    procedure apd_s1s2_vClick(Sender: TObject);
    procedure apd_hClick(Sender: TObject);
    procedure di_hClick(Sender: TObject);
    procedure s1s2_hClick(Sender: TObject);
    procedure v1v2_hClick(Sender: TObject);
    procedure s2v2_hClick(Sender: TObject);
    procedure v1v2_1_hClick(Sender: TObject);
    procedure apd_p_di_hClick(Sender: TObject);
    procedure apa_hClick(Sender: TObject);
    procedure s1s2_v1v2_hClick(Sender: TObject);
    procedure apd_di_hClick(Sender: TObject);
    procedure apd_apd_p_di_hClick(Sender: TObject);
    procedure s1s2_apd_p_di_hClick(Sender: TObject);
    procedure di_apd_p_di_hClick(Sender: TObject);
    procedure di_s1s2_hClick(Sender: TObject);
    procedure apd_v1v2_hClick(Sender: TObject);
    procedure di_v1v2_hClick(Sender: TObject);
    procedure apd_s1s2_hClick(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DeleteThisPoint1Click(Sender: TObject);
    procedure area_vClick(Sender: TObject);
    procedure area_hClick(Sender: TObject);
    procedure rmp_vClick(Sender: TObject);
    procedure rmp_hClick(Sender: TObject);
    procedure auto_scale_checkboxClick(Sender: TObject);
    procedure tr_vClick(Sender: TObject);
    procedure tf_vClick(Sender: TObject);
    procedure tr_hClick(Sender: TObject);
    procedure tf_hClick(Sender: TObject);
    procedure max_y_editChange(Sender: TObject);
    procedure min_y_editChange(Sender: TObject);
    procedure min_x_editChange(Sender: TObject);
    procedure max_x_editChange(Sender: TObject);
    procedure find_click_index_btnClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  charts_form: Tcharts_form;
  vertical_value , horizontal_value : real;
   processed_No : integer;

   apdx , di , s1s2, v1v2 , apa , s2v2 : real;
   xc , yc : integer;
   select_index : integer;
   area : real;
   tr , tf : real;
   col_index_h , col_index_v : integer;
   i : integer;
   max_index : integer;
   real_click_index : integer;
   table_value_h , table_value_v : real;
implementation

uses Unit1;

{$R *.dfm}

procedure Tcharts_form.Button1Click(Sender: TObject);
begin
{
      stringgrid1.Cells[0,processed_No] := inttostr(processed_No);
      stringgrid1.Cells[1,processed_No] := formatfloat('#.###',APA);
      stringgrid1.Cells[2,processed_No] := formatfloat('#.#',APDx*1000);
     stringgrid1.Cells[3,processed_No] := formatfloat('#.#',DI*1000);
     stringgrid1.Cells[4,processed_No] := formatfloat('#.#',S2V2*1000);
     stringgrid1.Cells[5,processed_No] := formatfloat('#.#',S1S2*1000);
     stringgrid1.Cells[6,processed_No] := formatfloat('#.#',V1V2*1000);

     stringgrid1.Cells[7,processed_No] := inttostr(start_processing_index);
}


chart1.Series[0].Clear;

for processed_no := 1 to form1.StringGrid1.RowCount-1 do
begin
{   stringgrid1.Cells[0,0] := 'S No';
   stringgrid1.Cells[1,0] := 'APA';
   stringgrid1.Cells[2,0] := 'APD' + inttostr(apdx_select);
   stringgrid1.Cells[3,0] := 'preAPD';
   stringgrid1.Cells[4,0] := 'DI';

   stringgrid1.Cells[5,0] := 'DI(Calc)';

   stringgrid1.Cells[6,0] := 'S2V2';
   stringgrid1.Cells[7,0] := 'S1S2';
   stringgrid1.Cells[8,0] := 'V1V2';
   stringgrid1.Cells[9,0] := 'RMP';
   stringgrid1.Cells[10,0] := 'Area';
   stringgrid1.Cells[11,0] := 'T r';
   stringgrid1.Cells[12,0] := 'T f';
   stringgrid1.Cells[13,0] := 'index';
}
   APA := strtofloat(form1.stringgrid1.Cells[1,processed_No]);
   APDx := strtofloat(form1.stringgrid1.Cells[2,processed_No]);
   if real_di_rbtn.Checked then  DI := strtofloat(form1.stringgrid1.Cells[4,processed_No])
   else DI := strtofloat(form1.stringgrid1.Cells[5,processed_No]);
   S2V2 := strtofloat(form1.stringgrid1.Cells[6,processed_No]);
   S1S2 := strtofloat(form1.stringgrid1.Cells[7,processed_No]);
   V1V2 := strtofloat(form1.stringgrid1.Cells[8,processed_No]);
   RMP := strtofloat(form1.stringgrid1.Cells[9,processed_No]);
   Area := strtofloat(form1.stringgrid1.Cells[10,processed_No]);
   Tr := strtofloat(form1.stringgrid1.Cells[11,processed_No]);
   Tf := strtofloat(form1.stringgrid1.Cells[12,processed_No]);

   //vertical axes
    if apd_v.Checked then vertical_value := apdx;
    if di_v.Checked then vertical_value := di;
    if s1s2_v.Checked then vertical_value := s1s2;
    if v1v2_v.Checked then vertical_value := v1v2;
    if s2v2_v.Checked then vertical_value := s2v2;
    if v1v2_1_v.Checked then vertical_value := 1/v1v2;
    if apd_p_di_v.Checked then vertical_value := apdx+di;
    if apa_v.Checked then vertical_value := apa;
    if s1s2_v1v2_v.Checked then vertical_value := s1s2 / v1v2;
    if apd_di_v.Checked then vertical_value := apdx / di;
    if apd_apd_p_di_v.Checked then vertical_value := apdx / (apdx+di);
    if s1s2_apd_p_di_v.Checked then vertical_value := s1s2 / (apdx+di);
    if di_apd_p_di_v.Checked then vertical_value := di / (apdx+di);
    if di_s1s2_v.Checked then vertical_value := di / s1s2;
    if apd_v1v2_v.Checked then vertical_value := apdx / v1v2;
    if di_v1v2_v.Checked then vertical_value := di / v1v2;
    if apd_s1s2_v.Checked then vertical_value := apdx / s1s2;
    if area_v.Checked then vertical_value := area;
    if rmp_v.Checked then vertical_value := rmp;
    if tr_v.Checked then vertical_value := tr;
    if tf_v.Checked then vertical_value := tf;
    //horizontal axes
    if apd_h.Checked then horizontal_value := apdx;
    if di_h.Checked then horizontal_value := di;
    if s1s2_h.Checked then horizontal_value := s1s2;
    if v1v2_h.Checked then horizontal_value := v1v2;
    if s2v2_h.Checked then horizontal_value := s2v2;
    if v1v2_1_h.Checked then horizontal_value := 1/v1v2;
    if apd_p_di_h.Checked then horizontal_value := apdx+di;
    if apa_h.Checked then horizontal_value := apa;
    if s1s2_v1v2_h.Checked then horizontal_value := s1s2 / v1v2;
    if apd_di_h.Checked then horizontal_value := apdx / di;
    if apd_apd_p_di_h.Checked then horizontal_value := apdx / (apdx+di);
    if s1s2_apd_p_di_h.Checked then horizontal_value := s1s2 / (apdx+di);
    if di_apd_p_di_h.Checked then horizontal_value := di / (apdx+di);
    if di_s1s2_h.Checked then horizontal_value := di / s1s2;
    if apd_v1v2_h.Checked then horizontal_value := apdx / v1v2;
    if di_v1v2_h.Checked then horizontal_value := di / v1v2;
    if apd_s1s2_h.Checked then horizontal_value := apdx / s1s2;
    if area_h.Checked then horizontal_value := area;
    if rmp_h.Checked then horizontal_value := rmp;
    if tr_h.Checked then horizontal_value := tr;
    if tf_h.Checked then horizontal_value := tf;

    chart1.Series[0].AddXY(horizontal_value , vertical_value);

end;


end;

procedure Tcharts_form.apd_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'APDx (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'DI (ms)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.s1s2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'S1S2 (ms)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.v1v2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'V1V2 (ms)';
chart1.Series[0].Clear;

end;

procedure Tcharts_form.s2v2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'S2V2 (ms)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.v1v2_1_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := '1 / (V1V2) - CV - (1/ms)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_p_di_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'APD+DI (ms)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.APA_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'APA (mV)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.s1s2_v1v2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'S1S2 / V1V2';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_di_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'APD / DI';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_apd_p_di_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'APD / (APD+DI)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.s1s2_apd_p_di_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'S1S2 / (APD+DI)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_apd_p_di_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'DI / (APD+DI)';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_s1s2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'DI / S1S2';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_v1v2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'APD / V1V2';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_v1v2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'DI / V1V2';
chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_s1s2_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'APD / S1S2';
chart1.Series[0].Clear;

end;

procedure Tcharts_form.apd_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'APDx (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'DI (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.s1s2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'S1S2 (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.v1v2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'V1V2 (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.s2v2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'S2V2 (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.v1v2_1_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := '1 / (V1V2) - CV - (1/ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_p_di_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'APDx+DI (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.apa_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'APA (mV)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.s1s2_v1v2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'S1S2 / V1V2';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_di_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'APDx/DI';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_apd_p_di_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'APDx / (APDx+DI)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.s1s2_apd_p_di_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'S1S2 / (APDx+DI)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_apd_p_di_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'DI / (APDx+DI)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_s1s2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'DI / S1S2';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_v1v2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'APDx / V1V2';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.di_v1v2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'DI / V1V2';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.apd_s1s2_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'APDx / S1S2';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.Chart1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
xc := x;
yc := y;

end;

procedure Tcharts_form.Chart1DblClick(Sender: TObject);

begin

//select_index := series1.Clicked(xc,yc);
select_index := series1.GetCursorValueIndex;
if select_index<>-1 then
begin
find_click_index_btn.Click;
if select_index <> 0 then
begin
label3.Caption := inttostr(select_index);
form1.click_on_chart_label.Caption := inttostr(select_index);
form1.click_on_chart_btn.Click;
end;


end;
end;

procedure Tcharts_form.Button2Click(Sender: TObject);
begin
if savepicturedialog1.Execute then
  chart1.SaveToBitmapFile(savepicturedialog1.FileName+'_Restitution_'+formatdatetime('dd_mm_yy__hh_mm_ss', now)+'.bmp');
end;

procedure Tcharts_form.DeleteThisPoint1Click(Sender: TObject);
begin

select_index := series1.Clicked(xc,yc);
chart1.Series[0].Delete(select_index);

end;

procedure Tcharts_form.area_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'Area (mV.ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.area_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'Area (mV.mS)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.rmp_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'RMP (mV)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.rmp_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'RMP (mV)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.auto_scale_checkboxClick(Sender: TObject);
begin
if auto_scale_checkbox.Checked then
begin
 chart1.LeftAxis.Automatic := true;
 chart1.BottomAxis.Automatic := true;
 min_x_edit.Visible := false;
 min_y_edit.Visible := false;
 max_x_edit.Visible := false;
 max_y_edit.Visible := false;



end
else
begin
 chart1.LeftAxis.Automatic := false;
 chart1.BottomAxis.Automatic := false;
 min_x_edit.Visible := true;
 min_y_edit.Visible := true;
 max_x_edit.Visible := true;
 max_y_edit.Visible := true;
 chart1.LeftAxis.SetMinMax(strtofloat(min_y_edit.Text),strtofloat(max_y_edit.Text));
 chart1.BottomAxis.SetMinMax(strtofloat(min_x_edit.Text),strtofloat(max_x_edit.Text));


end;
end;

procedure Tcharts_form.tr_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'Tr (Rsising Time) (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.tf_vClick(Sender: TObject);
begin
chart1.LeftAxis.Title.Caption := 'Tf (Falling Time) (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.tr_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'Tr (Rsising Time) (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.tf_hClick(Sender: TObject);
begin
chart1.BottomAxis.Title.Caption := 'Tf (Falling Time) (ms)';
 chart1.Series[0].Clear;
end;

procedure Tcharts_form.max_y_editChange(Sender: TObject);
begin
 chart1.LeftAxis.SetMinMax(strtofloat(min_y_edit.Text),strtofloat(max_y_edit.Text));
 chart1.BottomAxis.SetMinMax(strtofloat(min_x_edit.Text),strtofloat(max_x_edit.Text));

end;

procedure Tcharts_form.min_y_editChange(Sender: TObject);
begin
 chart1.LeftAxis.SetMinMax(strtofloat(min_y_edit.Text),strtofloat(max_y_edit.Text));
 chart1.BottomAxis.SetMinMax(strtofloat(min_x_edit.Text),strtofloat(max_x_edit.Text));

end;

procedure Tcharts_form.min_x_editChange(Sender: TObject);
begin
 chart1.LeftAxis.SetMinMax(strtofloat(min_y_edit.Text),strtofloat(max_y_edit.Text));
 chart1.BottomAxis.SetMinMax(strtofloat(min_x_edit.Text),strtofloat(max_x_edit.Text));

end;

procedure Tcharts_form.max_x_editChange(Sender: TObject);
begin
 chart1.LeftAxis.SetMinMax(strtofloat(min_y_edit.Text),strtofloat(max_y_edit.Text));
 chart1.BottomAxis.SetMinMax(strtofloat(min_x_edit.Text),strtofloat(max_x_edit.Text));

end;

procedure Tcharts_form.find_click_index_btnClick(Sender: TObject);
begin
    //horizontal axes
    horizontal_value := Chart1.BottomAxis.CalcPosPoint(Xc);
    vertical_value := Chart1.LeftAxis.CalcPosPoint(Yc);
    {
       stringgrid1.Cells[1,0] := 'APA';
   stringgrid1.Cells[2,0] := 'APD' + inttostr(apdx_select);
   stringgrid1.Cells[3,0] := 'preAPD';
   stringgrid1.Cells[4,0] := 'DI';

   stringgrid1.Cells[5,0] := 'DI(Calc)';

   stringgrid1.Cells[6,0] := 'S2V2';
   stringgrid1.Cells[7,0] := 'S1S2';
   stringgrid1.Cells[8,0] := 'V1V2';
   stringgrid1.Cells[9,0] := 'RMP';
   stringgrid1.Cells[10,0] := 'Area';
   stringgrid1.Cells[11,0] := 'T r';
   stringgrid1.Cells[12,0] := 'T f';
   stringgrid1.Cells[13,0] := 'Index';
   stringgrid1.Cells[14,0] := 'Mode';
   stringgrid1.Cells[15,0] := 'S1Time';}

    if apd_h.Checked then col_index_h := 2;
    if di_h.Checked then col_index_h := 4;
        if real_di_rbtn.Checked = false then col_index_h := 5;
    if s1s2_h.Checked then col_index_h := 7;
    if v1v2_h.Checked then col_index_h := 8;
    if s2v2_h.Checked then col_index_h := 6;
    if apa_h.Checked then col_index_h := 1;
    if area_h.Checked then col_index_h := 10;
    if rmp_h.Checked then col_index_h := 9;
    if tr_h.Checked then col_index_h := 11;
    if tf_h.Checked then col_index_h := 12;


    if apd_v.Checked then col_index_v := 2;
    if di_v.Checked then col_index_v := 4;
        if real_di_rbtn.Checked = false then col_index_v := 5;
    if s1s2_v.Checked then col_index_v := 7;
    if v1v2_v.Checked then col_index_v := 8;
    if s2v2_v.Checked then col_index_v := 6;
    if apa_v.Checked then col_index_v := 1;
    if area_v.Checked then col_index_v := 10;
    if rmp_v.Checked then col_index_v := 9;
    if tr_v.Checked then col_index_v := 11;
    if tf_v.Checked then col_index_v := 12;

    max_index := form1.stringgrid1.rowcount - 1;
    real_click_index := 0;
    for i := 1 to max_index do
    begin
     table_value_h := strtofloat(form1.StringGrid1.Cells[col_index_h,i]);
     table_value_v := strtofloat(form1.StringGrid1.Cells[col_index_v,i]);


      if (abs(table_value_h - horizontal_value) < 0.5) and (abs(table_value_v - vertical_value) < 0.5) then real_click_index := i;


    end;
    select_index := real_click_index;



end;

procedure Tcharts_form.CheckBox1Click(Sender: TObject);
begin
chart1.BottomAxis.Grid.Visible := checkbox1.Checked;
chart1.LeftAxis.Grid.Visible := checkbox1.Checked;

end;

end.

