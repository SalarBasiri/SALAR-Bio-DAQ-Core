unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, StdCtrls, Series, jpeg , IdHashMessageDigest, idHash,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP , winsock , wininet , HTTPApp, ComCtrls, Menus;
type
  float_array = array [0 .. 30000000] of real;
  byte_array = array [0 .. 30000000] of byte;
  float_array_small = array [0 .. 10000] of real;
  int64_array = array [0 .. 100000] of int64;
  int64_array_small = array [0 .. 10000] of int64;
  TForm1 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Series2: TLineSeries;
    Series3: TLineSeries;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    ScrollBar1: TScrollBar;
    load_timer: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Load_btn: TButton;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    ListBox1: TListBox;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    Plot_btn: TButton;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    vf_rbtn: TRadioButton;
    vt_rbtn: TRadioButton;
    vpb_rbtn: TRadioButton;
    guide_label: TLabel;
    guide_btn: TButton;
    Label8: TLabel;
    Series1: TBarSeries;
    click1_on_chart_btn: TButton;
    Button2: TButton;
    GroupBox6: TGroupBox;
    Button3: TButton;
    Panel1: TPanel;
    Image1: TImage;
    hash_memo: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Button4: TButton;
    Timer1: TTimer;
    upload_btn: TButton;
    upload_memo: TMemo;
    GroupBox8: TGroupBox;
    score_b_radio_btn: TRadioButton;
    score_c_radio_btn: TRadioButton;
    score_btn: TButton;
    episodes_of_vf_edit: TEdit;
    episodes_of_vt_edit: TEdit;
    episodes_of_nvf_edit: TEdit;
    episodes_of_nvt_edit: TEdit;
    episodes_of_svf_edit: TEdit;
    episodes_of_svt_edit: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Memo1: TMemo;
    selection_label: TLabel;
    vf_label: TLabel;
    vt_label: TLabel;
    vpb_label: TLabel;
    vf_time_edit: TEdit;
    vt_time_edit: TEdit;
    vpb_count_edit: TEdit;
    Edit3: TEdit;
    Button5: TButton;
    Button7: TButton;
    CheckBox2: TCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    PopupMenu1: TPopupMenu;
    StartHere1: TMenuItem;
    EndHere1: TMenuItem;
    Cancel1: TMenuItem;
    reselect_btn: TButton;
    procedure Load_btnClick(Sender: TObject);
    procedure load_timerTimer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Plot_btnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure vf_rbtnClick(Sender: TObject);
    procedure vt_rbtnClick(Sender: TObject);
    procedure vpb_rbtnClick(Sender: TObject);
    procedure guide_btnClick(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure click1_on_chart_btnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure upload_btnClick(Sender: TObject);
    procedure score_btnClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure StartHere1Click(Sender: TObject);
    procedure EndHere1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure reselect_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
      in_file: text;
  Time, TEMP, stimulus, CV1, CV2, LVBP, Ventricular, MAP_endo, pH,
    Sinus_rate , temp_data , data_str: string;
  Time_array,  Data_array  : float_array;
  data : real;
  Find_index_array: int64_array;
  Find_counter, find_counter_max: int64;
  stimulus_threshold: single;
  check_window_width: word;
  point1, point2, point3: single;
  time2: single;
  time2_s: string;
  s_Line: string;
  s1, s2, s3, s4: string;
  my_file_name: string;
  c1, c2, c3, c_max: Integer;
  array_counter, max_array: int64;
  stimulus_ar, Time_ar: float_array_small;
  stimulus_counter: int64;
  stimulus1, stimulus2, mean: single;


  
  t1_sti, t2_sti , t1_map , t2_map , t1_cont , t2_cont: single;
  t1_index, t2_index: int64;
  start_counter, stop_counter: int64;
  s1v1_first_min, s1v1_global_min, s1v1_second_max, s1v1_first_max,
    s1v1_global_max: single;
  s1v1_start, s1v1_stop: single;
  max_index: int64;
  s1v1: single;

 plot_array_counter : int64;

  s2v2: single;
  plot_min_array, plot_max_array, current_array: int64;

  t0: single;
  stimulus1_index, stimulus2_index: int64;

  s1v1_first_min_index, s1v1_second_max_index: int64;

  zoom_start_index, zoom_end_index: int64;

  s1v1_start_time, s1v1_stop_time, s1v1_start_value, s1v1_stop_value: single;
  s2v2_start_time, s2v2_stop_time, s2v2_start_value, s2v2_stop_value: single;
  stimulus1_pointer_time, stimulus1_pointer_value, stimulus2_pointer_time,
    stimulus2_pointer_value: single;

  s1_index, s_block1_index, s_block2_index: int64;

  tangent: single;
  map_endo_max1_index, map_endo_max2_index, map_endo_max3_index,
    map_endo_max4_index, map_endo_max5_index: int64;
  map_endo_min1_index, map_endo_min2_index, map_endo_min3_index,
    map_endo_min4_index: int64;

  map_endo_global_max, map_endo_global_min, mean_map_endo, my_mean: single;

  mean_max, mean_min: single;
  v2apd90_amplitude, V2APD90_1, DI: single;
  max1_apd90_v1: int64;
  s1s2: single;
  auto_flag, re_flag, compelet_flag: string;
  auto_counter: Integer;
  redraw_array_s2v2, redraw_array_apdx: int64_array_small;

  di_round, dif_round: single;

  zoomRectangle, scroll_rectangle: TRect;

  min1, my_threshold, scale_stimulus: single;

  x1, y1, x2, y2, xc, yc: Integer;

  valueIndex, x_left_index, x_right_index: int64;
  start_data_index, stop_data_index, chart_max_index, click_data_index: int64;

  mean_index_length, first_array_counter, dif_index: int64;
  max_array_counter: int64;
  mean_block, max_block, min_block, block_index: single;
  higher_counter, lower_counter: word;
  m, y0, Y: single;

  Map_Endo_Min0: single;
  map_endo_min0_index: int64;

  max1,max2,dif_sti , dif_map, dif_cont : single;
  max1_index,max2_index : int64;

  global_max , global_min : single;

  block_no : integer;

  max_count  : integer;

  max_period , period_step , period_check : single;

  amp : integer;

  periods_array : float_array_small;

    sum_amp , sum_amp_by_period : single;

    dominant_period , dominant_freq : single;

    click_index : string;

  XVal , YVal : single;

  upper_limit_MAP , lower_limit_MAP : double;

  upper_limit_Contraction , lower_limit_Contraction : double;

  min_dif_map , max_dif_map : single;
  min_dif_contraction , max_dif_contraction : single;
  range1 , range2 : single;
  max_stimulus : single;

     point1_stimulus , point2_stimulus : single;

     MAP_counter , LVEDP_counter : int64;

     chart_index : integer;
     max_amp : integer;
     contraction_flag : boolean;

     plot_window_width, plot_start_index , plot_end_index  : int64;

     max_count2 , max_count5 , max_count8 : integer;
     s : string;

     xval_index , yval_index : int64;

     mouse_index_map , mouse_index_contraction : string;

     t1,t2,dt : double;

     array_counter_zoom , array_counter_zoom_max : int64;


     dif : double;

     zoom_min_MAP , zoom_max_MAP : double;

          zoom_min_Contraction , zoom_max_Contraction : double;

          zoom_min_Stimulus , zoom_max_Stimulus : double;
          
         contraction_zoom_scale : double;

     a , b : double;
     zoom_index_range : int64;
     time_center : double;

     zoom_amplitude : double;

     Stimulus_zoom_scale : double;

     my_LVBP , my_Contraction , my_Stimulus : double;
     contraction_zoom_offset : double;
     MAP_Amplitude , MAP_Ave , Contraction_amplitude , Contraction_Ave : double;


     MAP_global_Max , MAP_global_min , Contraction_Global_Max , Contraction_Global_min : double;
     MAP_offset , Contraction_offset : double;

   my_file : file;
   save_to_file_buffer , load_from_file_buffer : array [0..4] of single;
   i , c : integer;
   meta_data_string : string;








    //internet
    global_ip_address : string;
    url_encode : widestring;
    upload_string , responce_str : string;
    force_close_flag : boolean;
    computer_variable : string;
    black_list_check :  string;
    user_name , password : string;
    user_pass : string;
    md5_hash : string;
    login_ok : boolean;

 //new
 small_load_flag : boolean;
 start_plot_counter , end_plot_counter : int64;
 LVBP_global_Max ,LVBP_global_Min : real;
 ch_no : integer;
 data_global_Max , data_global_Min , my_data : real;
 time_fault_flag : boolean;
 time_fault_index : int64;
 
 segment_start_index , segment_end_index , segment_length: int64;
  Str_List: TStrings;

  min_scroll , max_scroll : integer;
  selection_flag : string;
  selection_start_index , selection_end_index : int64;
  click_flag : integer;
  
  signal_type_start_index , signal_type_end_index : int64;
  signal_type_array : byte_array;
  signal_type_array_counter : int64;

   vf_count , vt_count , sinus_count , vpb_count : int64;
   nvf_count , nvt_count : int64;
   svf_count , svt_count : int64;

   current_type , last_type : byte;

   total_time, vf_time, vt_time, sinus_time, vpb_time: real;
   nvf_time , nvt_time: real;
   svf_time , svt_time: real;

   episodes_of_VF , episodes_of_VT  : integer;
   episodes_of_NVF , episodes_of_NVT : integer;
   episodes_of_SVF , episodes_of_SVT : integer;

   episodes_of_VPB  : integer;
   each_color : int64;


   score : real;
   vf_plus_vt : real;

   small_load_max_count : int64;


   vpb_10 : integer;
episode_of_vt_1 : integer;
episode_of_vt_5 : integer;
vt_vf_time_40 : integer;
episode_of_nvf_2 : integer;
episode_of_nvf_5 : integer;
vt_vf_time_80 : integer;
vt_vf_time_160 : integer;
vt_vf_time_300 : integer;

score_find_flag : boolean;


chart1_max , chart1_min : real;
my_amp : real;
implementation

uses Unit2, Unit3;

{$R *.dfm}


procedure check_password;
begin
login_ok := false;
for c := 0 to form1.hash_memo.Lines.Count-1 do
  if md5_hash = form1.hash_memo.Lines[c] then login_ok := true;

if login_ok = true then
begin
form1.panel1.Height := 0;
form1.Panel1.Width := 0;
form1.timer1.Enabled := false;
end
else form1.Close;

end;
 function MD5(in_string : string) : string;
 var
   idmd5 : TIdHashMessageDigest5;
   hash : T4x4LongWordRecord;
 begin
   idmd5 := TIdHashMessageDigest5.Create;
   try
     result := idmd5.AsHex(idmd5.HashValue(in_string)) ;
   finally
     idmd5.Free;
   end;
 end;


function GetUrlContent(const Url: string): string;
var
  NetHandle: HINTERNET;
  UrlHandle: HINTERNET;
  Buffer: array[0..1024] of Char;
  BytesRead: dWord;
begin
  Result := '';
  NetHandle := InternetOpen('Delphi 5.x', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

  if Assigned(NetHandle) then 
  begin
    UrlHandle := InternetOpenUrl(NetHandle, PChar(Url), nil, 0, INTERNET_FLAG_RELOAD, 0);

    if Assigned(UrlHandle) then
      { UrlHandle valid? Proceed with download }
    begin
      FillChar(Buffer, SizeOf(Buffer), 0);
      repeat
        Result := Result + Buffer;
        FillChar(Buffer, SizeOf(Buffer), 0);
        InternetReadFile(UrlHandle, @Buffer, SizeOf(Buffer), BytesRead);
      until BytesRead = 0;
      InternetCloseHandle(UrlHandle);
    end
    else
      { UrlHandle is not valid. Raise an exception. }
      //raise Exception.CreateFmt('Cannot open URL %s', [Url]);

    InternetCloseHandle(NetHandle);
  end
  else
    { NetHandle is not valid. Raise an exception }
    raise Exception.Create('Unable to initialize Wininet');
end;

Function GetIPAddress():String;
type
  pu_long = ^u_long;
var
  varTWSAData : TWSAData;
  varPHostEnt : PHostEnt;
  varTInAddr : TInAddr;
  namebuf : Array[0..255] of char;
begin
  If WSAStartup($101,varTWSAData) <> 0 Then
  Result := 'No. IP Address'
  Else Begin
    gethostname(namebuf,sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := 'IP Address: '+inet_ntoa(varTInAddr);
  End;
  WSACleanup;
end;

procedure TForm1.Load_btnClick(Sender: TObject);
var
my_map , my_contraction : double;
begin
check_password;
 if OpenDialog1.Execute then
  begin
  small_load_flag := checkbox1.checked;
    my_file_name := OpenDialog1.FileName;
    label1.Caption := my_file_name;
    Label1.Caption := my_file_name;
    assignfile(in_file, my_file_name);
    reset(in_file);
   // for c1 := 1 to 4 do
   // begin
   //   readln(in_file, s_Line);

   // end;

    array_counter := 1;
    plot_array_counter := 1;
    LVBP_Global_max := -100000;
    LVBP_Global_min := 100000;

    chart1.Series[0].Clear;

    chart2.Series[0].Clear;


    ch_no := combobox2.ItemIndex;

    time_fault_flag := false;
    listbox1.items.Clear;

    small_load_max_count := 400 * strtoint(edit3.Text);

     load_timer.Enabled := true;

     chart1.Series[0].Clear;
     chart1.Series[1].Clear;

     chart2.Series[0].Clear;


   
       // upload_memo.Lines.Add('Open File (8CH): '+my_file_name);
      //  upload_memo.Lines.Add('Loading ' + inttostr(max_array) + ' Records has Compeleted');
      //  upload_btn.Click;



  end;


end;

procedure TForm1.load_timerTimer(Sender: TObject);
var
internal_load_counter : integer;
begin
    if  (not eof(in_file)) then
    begin
    //149.7075	36.8	-0.001	-0.454	-0.002	99.46	0.151	-3679.59	0.2779	-488.70	NaN
     for internal_load_counter := 1 to 2000 do
     begin
     if (not eof(in_file)) then
     begin
      readln(in_file, s_Line);
      signal_type_array[array_counter] := 0;
      //Time	Temp	STimulus	Atrial	ECG	LVBP	Ventricular	MAP	Sinusrate	dp/dt	EDP
      c_max := length(s_Line);
      c1 := 1;
      Time := '';
      repeat
        Time := Time + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Time <> 'NaN' then
        Time_array[array_counter] := strtofloat(Time);

        if Time = '0' then
        begin
        time_fault_flag := true;
        time_fault_index := array_counter;
        listbox1.items.Add(floattostr(Time_array[array_counter-1])+'=>'+floattostr(Time_array[array_counter]) + '@' + inttostr(array_counter-1));
        end;


       for c := 1 to ch_no do
       begin
        c1 := c1 + 1;
        repeat
        c1 := c1 + 1;
        until (s_line[c1] = chr(9));


       end;


      data_str := '';
      c1 := c1 + 1;
      repeat
        data_str := data_str + s_Line[c1];
        c1 := c1 + 1;
      until ((s_Line[c1] = chr(9)) or (c1 > c_max));
      if data_str <> 'NaN' then
      begin
        Data_array[array_counter] := strtofloat(data_str);
        my_data := strtofloat(data_str);
      if my_data > data_global_Max then data_global_Max := my_data;
      if my_data < data_global_Min then data_global_Min := my_data;
      end;





      {
        rate := '';
        c1 := c1 + 1;
        repeat
        rate := rate + s_line[c1];
        c1 := c1 + 1;
        until (s_line[c1] = chr(9));
        rate_array[array_counter] := strtofloat(rate);
        }

      array_counter := array_counter + 1;
      if  (not eof(in_file)) then label2.Caption := 'Records: ' + inttostr(array_counter);


      if ((array_counter > small_load_max_count) and (small_load_flag)) then
      begin
       closefile(in_file);
        max_array := array_counter - 1;
        Label2.Caption := 'Records: ' + inttostr(max_array);
        array_counter := 1;
        t0 := Time_array[2];
        t1 := t0;
       t2 := Time_array[3];
       dt := t2 - t1;
        load_timer.Enabled := false;

       
       showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');

       if time_fault_flag then showmessage ('There is '+inttostr(listbox1.Items.Count)+' Segments in this file.');

      end;

      end; // internal if eof ...
     end; //for internal_load_counter := 1 to 1000 do




    end //external if eof ....
    else
    begin
    closefile(in_file);
    max_array := array_counter - 5;
    Label1.Caption := 'Records: ' + inttostr(max_array);
    array_counter := 1;
    t0 := Time_array[2];
    t1 := t0;
    t2 := Time_array[3];
    dt := t2 - t1;
    load_timer.Enabled := false;

    scrollbar1.Max := trunc (max_array / (400 * 1)) - 1;
    plot_window_width := 400 * 1;

    showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');

     if time_fault_flag then showmessage ('There is '+inttostr(listbox1.Items.Count)+' Segments in this file.');

    end;


end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
small_load_flag := checkbox1.checked;

end;

procedure TForm1.Plot_btnClick(Sender: TObject);
begin



start_plot_counter := scrollbar1.position * plot_window_width;
end_plot_counter := (scrollbar1.position+1) * plot_window_width;
label3.Caption := inttostr(scrollbar1.position);
label4.Caption := inttostr(start_plot_counter) + '-'+inttostr(end_plot_counter);

  chart1.Series[0].Clear;

    plot_array_counter := start_plot_counter;
    chart1_max := 0;
    chart1_min := 0;
    repeat

    my_data := data_array[plot_array_counter];
    chart1.Series[0].AddXY(Time_array[plot_array_counter],my_data);
    if my_data > chart1_max then chart1_max := my_data;
    if my_data < chart1_min then chart1_min := my_data;


    plot_array_counter := plot_array_counter + 1;

    until (plot_array_counter > end_plot_counter);

   my_amp := chart1_max - chart1_min;

  chart1.LeftAxis.SetMinMax(chart1_max+(0.1*my_amp) , chart1_min - (0.1*my_amp));

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.Left := 0;
form1.Top := 0;
form1.Width := 1080;
form1.Height := 750;
panel1.Left := 5;
form1.Left := 0;
form1.Top := 0;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin

load_btn.Enabled := true;

chart1.Title.Text.Text := combobox2.Items[combobox2.itemindex];
chart2.Title.Text.Text := 'Processed '+combobox2.Items[combobox2.itemindex];


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
start_plot_counter := 76800;
end_plot_counter := 83200;
label3.Caption := inttostr(scrollbar1.position);
label4.Caption := inttostr(start_plot_counter) + '-'+inttostr(end_plot_counter);

  chart1.Series[0].Clear;

    plot_array_counter := start_plot_counter;
    repeat

    chart1.Series[0].AddXY(plot_array_counter,data_array[plot_array_counter]);

    plot_array_counter := plot_array_counter + 1;

    until (plot_array_counter > end_plot_counter);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
s1 , s2 : string;
c1, c2 , l : integer;
begin

  if listbox1.ItemIndex + 1 <> listbox1.Items.Count then
  begin
     s1 := listbox1.Items[listbox1.ItemIndex];
     c1 := 1;
     s2 := '';
     l := length(s1);
     repeat
      c1 := c1 + 1;
     until (s1[c1] = '@');
     c1 := c1 + 1;
     repeat
      s2 := s2 + s1[c1];
      c1 := c1 + 1;
     until (c1 > l);
     segment_start_index := strtoint(s2);


     s1 := listbox1.Items[listbox1.ItemIndex+1];
     c1 := 1;
     s2 := '';
     l := length(s1);
     repeat
      c1 := c1 + 1;
     until (s1[c1] = '@');
     c1 := c1 + 1;
     repeat
      s2 := s2 + s1[c1];
      c1 := c1 + 1;
     until (c1 > l);
     segment_end_index := strtoint(s2);
  end
  else
  begin
     s1 := listbox1.Items[listbox1.ItemIndex];
     c1 := 1;
     s2 := '';
     l := length(s1);
     repeat
      c1 := c1 + 1;
     until (s1[c1] = '@');
     c1 := c1 + 1;
     repeat 
      s2 := s2 + s1[c1];
      c1 := c1 + 1;
     until (c1 > l);
     segment_start_index := strtoint(s2);
     segment_end_index := max_array;
  end;
  segment_length := segment_end_index - segment_start_index;
  min_scroll := trunc (segment_start_index / (1 * 400)) + 1;
  max_scroll := trunc (segment_end_index / (1 * 400)) - 1;
  plot_window_width := 400 * 1;
  label7.Caption := inttostr(segment_start_index) + ' , ' + inttostr(segment_end_index);
  groupbox3.Enabled := true;
  plot_btn.Enabled := true;
  chart2.BottomAxis.SetMinMax(0,segment_length/400 );

  episodes_of_vt := 0;
  episodes_of_vf := 0;

  episodes_of_nvt := 0;
  episodes_of_nvf := 0;

  episodes_of_svt := 0;
  episodes_of_svf := 0;


  episodes_of_vpb := 0;
 
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  segment_length := segment_end_index - segment_start_index;
  min_scroll := trunc (segment_start_index / (strtoint(combobox1.Items[combobox1.Itemindex]) * 400)) + 1;
  max_scroll := trunc (segment_end_index / (strtoint(combobox1.Items[combobox1.Itemindex]) * 400)) - 1;
  scrollbar1.Min := min_scroll;
  scrollbar1.Max := max_scroll;
  scrollbar1.Position := scrollbar1.Min;
  
  label6.Caption := inttostr(min_scroll)+','+inttostr(max_scroll);
  plot_window_width := 400 * strtoint(combobox1.Items[combobox1.Itemindex]);

  plot_btn.Click;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
chart1.Series[1].Clear;
plot_btn.Click;
end;

procedure TForm1.vf_rbtnClick(Sender: TObject);
begin
if vf_rbtn.Checked then selection_flag := 'vf_start'
else selection_flag := 'no_vf';
click_flag := 1;
selection_label.Caption := selection_flag;
guide_btn.Click;


end;

procedure TForm1.vt_rbtnClick(Sender: TObject);
begin
if vt_rbtn.Checked then selection_flag := 'vt_start'
else selection_flag := 'no_vt';
click_flag := 1;
guide_btn.Click;

end;

procedure TForm1.vpb_rbtnClick(Sender: TObject);
begin
if vpb_rbtn.Checked then selection_flag := 'vpb_start'
else selection_flag := 'no_vpb';
click_flag := 1;
guide_btn.Click;

end;

procedure TForm1.guide_btnClick(Sender: TObject);
begin
if selection_flag = 'vf_start' then guide_label.Caption := 'Select VF Start Position by Right Click on Chart Above';
if selection_flag = 'vt_start' then guide_label.Caption := 'Select VT Start Position by Right on Chart Above';
if selection_flag = 'sinus_start' then guide_label.Caption := 'Select Sinus Start Position by Right Click on Chart Above';
if selection_flag = 'npb_start' then guide_label.Caption := 'Select NPB Start Position by Right Click on Chart Above';
if selection_flag = 'svf_start' then guide_label.Caption := 'Select SVF Start Position by Right Click on Chart Above';
if selection_flag = 'svt_start' then guide_label.Caption := 'Select SVT Start Position by Right Click on Chart Above';
if selection_flag = 'nvf_start' then guide_label.Caption := 'Select NVF Start Position by Right Click on Chart Above';
if selection_flag = 'nvt_start' then guide_label.Caption := 'Select NVT Start Position by Right Click on Chart Above';





if selection_flag = 'vf_end' then guide_label.Caption := 'Then Select VF End Position by Right Click on Chart Above';
if selection_flag = 'vt_end' then guide_label.Caption := 'Then Select VT End Position by Right Click on Chart Above';
if selection_flag = 'sinus_end' then guide_label.Caption := 'Then Select Sinus End Position by Right Click on Chart Above';
if selection_flag = 'npb_end' then guide_label.Caption := 'Then Select NPB End Position by Right Click on Chart Above';
if selection_flag = 'svf_end' then guide_label.Caption := 'Then Select SVF End Position by Right Click on Chart Above';
if selection_flag = 'svt_end' then guide_label.Caption := 'Then Select SVT End Position by Right Click on Chart Above';
if selection_flag = 'nvf_end' then guide_label.Caption := 'Then Select NVF End Position by Right Click on Chart Above';
if selection_flag = 'nvt_end' then guide_label.Caption := 'Then Select NVT End Position by Right Click on Chart Above';



if selection_flag = 'no' then guide_label.Caption := 'Now Select Another Signal Type (Step 4)';

end;

procedure TForm1.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 XVal :=Chart1.BottomAxis.CalcPosPoint(X);
  YVal :=Chart1.LeftAxis.CalcPosPoint(Y);

 xval_index := segment_start_index + trunc(xval * 400);
 label8.Caption := inttostr(xval_index);


end;

procedure TForm1.click1_on_chart_btnClick(Sender: TObject);
begin
//*******************************************************************
if ((selection_flag = 'vf_start') and (click_flag = 1)) then
begin
 chart1.Series[1].Clear;
 chart1.Series[1].SeriesColor := vf_rbtn.Color;
 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);
 selection_flag := 'vf_end';
 signal_type_start_index := xval_index;

end;
if ((selection_flag = 'vf_end') and (click_flag = 2)) then
begin
 episodes_of_vf := episodes_of_vf + 1;
 selection_label.Caption := selection_flag;
episodes_of_vf_edit.Text := inttostr(episodes_of_vf);
episodes_of_vt_edit.Text := inttostr(episodes_of_vt);
vpb_count_edit.Text := inttostr(episodes_of_vpb);

 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);
 //selection_flag := 'no';
 signal_type_end_index := xval_index;
 each_color := vf_rbtn.Color;
 plot_array_counter := signal_type_start_index;
 repeat
  signal_type_array[plot_array_counter] := 1;
  chart2.Series[0].AddXY(time_array[plot_array_counter] , data_array[plot_array_counter] , '' , each_color);
  chart1.Series[0].AddXY(time_array[plot_array_counter] , data_array[plot_array_counter] , '' , each_color);

  plot_array_counter := plot_array_counter + 1;

 until (plot_array_counter > signal_type_end_index);

 form2.show;

end;

//*******************************************************************
if ((selection_flag = 'vt_start') and (click_flag = 1)) then
begin
 chart1.Series[1].Clear;
 chart1.Series[1].SeriesColor := vt_rbtn.Color;
 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);
 selection_flag := 'vt_end';
  signal_type_start_index := xval_index;
end;
if ((selection_flag = 'vt_end') and (click_flag = 2)) then
begin
  episodes_of_vt := episodes_of_vt + 1;
  selection_label.Caption := selection_flag;
episodes_of_vf_edit.Text := inttostr(episodes_of_vf);
episodes_of_vt_edit.Text := inttostr(episodes_of_vt);
vpb_count_edit.Text := inttostr(episodes_of_vpb);

 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);
 //selection_flag := 'no';
  signal_type_end_index := xval_index;
  each_color := vt_rbtn.Color;
 plot_array_counter := signal_type_start_index;
 repeat
  signal_type_array[plot_array_counter] := 2;
  chart2.Series[0].AddXY(time_array[plot_array_counter] , data_array[plot_array_counter] , '' , each_color);
    chart1.Series[0].AddXY(time_array[plot_array_counter] , data_array[plot_array_counter] , '' , each_color);

  plot_array_counter := plot_array_counter + 1;

 until (plot_array_counter > signal_type_end_index);
 form2.show;

end;

//*******************************************************************
if ((selection_flag = 'sinus_start') and (click_flag = 1)) then
begin
 chart1.Series[1].Clear;
 chart1.Series[1].SeriesColor := clblue;
 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);
 selection_flag := 'sinus_end';
  signal_type_start_index := xval_index;
end;
if ((selection_flag = 'sinus_end') and (click_flag = 2)) then
begin
 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);
 selection_flag := 'no';
  signal_type_end_index := xval_index;

 plot_array_counter := signal_type_start_index;
 repeat
  signal_type_array[plot_array_counter] := 0;
  chart2.Series[0].AddXY(time_array[plot_array_counter] , data_array[plot_array_counter] , '' , clblue);
  plot_array_counter := plot_array_counter + 1;

 until (plot_array_counter > signal_type_end_index);

end;




//*******************************************************************
if ((selection_flag = 'vpb_start') and (click_flag = 1)) then
begin
 chart1.Series[1].Clear;
 chart1.Series[1].SeriesColor := vpb_rbtn.Color;
 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);
 selection_flag := 'vpb_end';
  signal_type_start_index := xval_index;
end;
if ((selection_flag = 'vpb_end') and (click_flag = 2)) then
begin
episodes_of_vpb := episodes_of_vpb + 1;
selection_label.Caption := selection_flag;
episodes_of_vf_edit.Text := inttostr(episodes_of_vf);
episodes_of_vt_edit.Text := inttostr(episodes_of_vt);
vpb_count_edit.Text := inttostr(episodes_of_vpb);

 chart1.Series[1].Addxy (xval , chart1.LeftAxis.Maximum);

  signal_type_end_index := xval_index;
  each_color := vpb_rbtn.Color;
 plot_array_counter := signal_type_start_index;
 repeat
  signal_type_array[plot_array_counter] := 7;
  chart2.Series[0].AddXY(time_array[plot_array_counter] , data_array[plot_array_counter] , '' , each_color);
    chart1.Series[0].AddXY(time_array[plot_array_counter] , data_array[plot_array_counter] , '' , each_color);

  plot_array_counter := plot_array_counter + 1;

 until (plot_array_counter > signal_type_end_index);
end;


guide_btn.Click;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

for c := 1 to 100 do
  chart1.Series[0].AddXY(c , 1 , '' , clred);

for c := 100 to 200 do
  chart1.Series[0].AddXY(c , 1 , '' , clgreen);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

 array_counter := segment_start_index;
 vf_count := 0;
 vt_count := 0;

 nvf_count := 0;
 nvt_count := 0;

 svf_count := 0;
 svt_count := 0;

 sinus_count := 0;
 vpb_count := 0;

 episodes_of_vf := strtoint(episodes_of_vf_edit.text);
 episodes_of_vt := strtoint(episodes_of_vt_edit.text);

 episodes_of_nvf := strtoint(episodes_of_nvf_edit.text);
 episodes_of_nvt := strtoint(episodes_of_nvf_edit.text);

 episodes_of_svf := strtoint(episodes_of_svf_edit.text);
 episodes_of_svt := strtoint(episodes_of_svf_edit.text);

 episodes_of_vpb := strtoint(vpb_count_edit.text);


 repeat
  current_type := signal_type_array[array_counter];

  case current_type of
  0 : sinus_count := sinus_count + 1;
  1 : vf_count := vf_count + 1;
  2 : vt_count := vt_count + 1;
  7 : vpb_count := vpb_count + 1;
  end;
  {
  if ((last_type <> current_type) and (current_type = 1)) then episodes_of_vf := episodes_of_vf + 1;
  if ((last_type <> current_type) and (current_type = 2)) then episodes_of_vt := episodes_of_vt + 1;
  if ((last_type <> current_type) and (current_type = 3)) then episodes_of_nvf := episodes_of_nvf + 1;
  if ((last_type <> current_type) and (current_type = 4)) then episodes_of_nvt := episodes_of_nvt + 1;
  if ((last_type <> current_type) and (current_type = 5)) then episodes_of_svf := episodes_of_svf + 1;
  if ((last_type <> current_type) and (current_type = 6)) then episodes_of_svt := episodes_of_svt + 1;
  if ((last_type <> current_type) and (current_type = 7)) then episodes_of_vpb := episodes_of_vpb + 1;


  last_type := current_type;
  }
  array_counter := array_counter + 1;
 until (array_counter > segment_end_index);
   segment_length := segment_end_index - segment_start_index;
   total_time := segment_length / 400;

   vf_time := vf_count / 400;
   vt_time := vt_count / 400;

   nvf_time := nvf_count / 400;
   nvt_time := nvt_count / 400;

   svf_time := svf_count / 400;
   svt_time := svt_count / 400;

   sinus_time := sinus_count / 400;
   vpb_time := vpb_count / 400;

   vf_time_edit.Text := floattostr(trunc(vf_time*100)/100);
   vt_time_edit.Text := floattostr(trunc(vt_time*100)/100);
   vpb_count_edit.Text := inttostr(episodes_of_vpb);



   score_form.memo1.Lines.Clear;
   score_form.memo1.Lines.Add('Total: '+floattostr(trunc(total_time*100)/100) );
   score_form.memo1.Lines.Add('Sinus: '+floattostr(trunc(sinus_time*100)/100) );
   
   score_form.memo1.Lines.Add('VF Time: '+floattostr(trunc(vf_time*100)/100) );
   score_form.memo1.Lines.add('VF Episodes: ' + inttostr(episodes_of_vf) );

   score_form.memo1.Lines.Add('VT Time: '+floattostr(trunc(vt_time*100)/100) );
   score_form.memo1.Lines.add('VT Episodes: ' + inttostr(episodes_of_vt) );

   //score_form.memo1.Lines.Add('NVF Time: '+floattostr(trunc(nvf_time*100)/100) );
   score_form.memo1.Lines.add('NVF Episodes: ' + inttostr(episodes_of_nvf) );

   //score_form.memo1.Lines.Add('NVT Time: '+floattostr(trunc(nvt_time*100)/100) );
   score_form.memo1.Lines.add('NVT Episodes: ' + inttostr(episodes_of_nvt) );

   //score_form.memo1.Lines.Add('SVF Time: '+floattostr(trunc(svf_time*100)/100) );
   score_form.memo1.Lines.add('SVF Episodes: ' + inttostr(episodes_of_svf) );

   //score_form.memo1.Lines.Add('SVT Time: '+floattostr(trunc(svt_time*100)/100) );
   score_form.memo1.Lines.add('SVT Episodes: ' + inttostr(episodes_of_svt) );


   score_form.memo1.Lines.Add('VPB Time: '+floattostr(trunc(vpb_time*100)/100) );
   score_form.memo1.Lines.add('VPB Episodes (Counts): ' + inttostr(episodes_of_vpb) );



   

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
panel1.Left:= 0;
panel1.Left := 0;
panel1.Top := 0;
Panel1.Height := 790;
panel1.Width := 1430;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
//if ((edit6.Text= 'Username') and (edit7.Text = 'Password')) then panel3.Height := 0;

user_name := edit1.Text;
password := edit2.Text;
user_pass := user_name +'ewilrvtgwl34tg#$%23bhf2jr' +  password;
md5_hash := md5(user_pass);


hash_memo.Lines.Clear;

//un comment
hash_memo.Lines.Add(GetUrlContent('http://drkhori.isensor.ir/uph.xyz'));


//Internet Check

global_ip_address := GetUrlContent('http://ipinfo.io/?token=6cb0ddaa049278');
upload_memo.Lines.Clear;
upload_memo.Lines.Add('****************************************************');
upload_memo.Lines.Add('New Session for Comelete Signal Score (Dr Khori) (Ms Enayati)');
upload_memo.Lines.Add('Program User: ' + user_name);

computer_variable := GetEnvironmentVariable('USERNAME');
upload_memo.Lines.Add('PC USERNAME: '+computer_variable);

computer_variable := GetEnvironmentVariable('CLIENTNAME');
upload_memo.Lines.Add('PC CLIENTNAME: '+computer_variable);

computer_variable := GetEnvironmentVariable('COMPUTERNAME');
upload_memo.Lines.Add('PC COMPUTERNAME: '+computer_variable);

black_list_check := computer_variable;

computer_variable := GetEnvironmentVariable('LOGONSERVER');
upload_memo.Lines.Add('PC LOGONSERVER: '+computer_variable);

computer_variable := GetEnvironmentVariable('PROCESSOR_IDENTIFIER');
upload_memo.Lines.Add('PC PROCESSOR_IDENTIFIER: '+computer_variable);

computer_variable := GetEnvironmentVariable('USERDOMAIN');
upload_memo.Lines.Add('PC USERDOMAIN: '+computer_variable);


upload_memo.Lines.Add(datetimetostr(now));
upload_memo.Lines.Add(GetIPAddress);
upload_memo.Lines.add(global_ip_address);

if length(global_ip_address) < 10 then form1.Close;



upload_btn.Click;
timer1.Enabled := true;
check_password;


//showmessage('Uncomment Password Check');
//panel1.Height := 0;
//timer1.Enabled := false;
end;

procedure TForm1.upload_btnClick(Sender: TObject);
begin

upload_string := '';

for c := 0 to upload_memo.Lines.Count-1 do
 upload_string := upload_string + upload_memo.Lines[c] + chr(13) + chr(10);

url_encode := 'http://drkhori.isensor.ir/enayati_score.php?dat=' + httpencode(utf8encode(upload_string));

//edit11.Text := url_encode;
responce_str := GetUrlContent(url_encode);

upload_memo.Lines.Clear;

//check for black listed users
url_encode := 'http://drkhori.isensor.ir/blacklist.txt';
responce_str := GetUrlContent(url_encode);
if (strpos(pchar(responce_str),pchar(black_list_check)) <> nil) then form1.Close;

end;

procedure TForm1.score_btnClick(Sender: TObject);
begin
   if score_b_radio_btn.Checked then
   begin
    episodes_of_vf := strtoint(episodes_of_vf_edit.Text);
    episodes_of_vt := strtoint(episodes_of_vt_edit.Text);

    episodes_of_nvf := strtoint(episodes_of_nvf_edit.Text);
    episodes_of_nvt := strtoint(episodes_of_nvt_edit.Text);

    episodes_of_svf := strtoint(episodes_of_svf_edit.Text);
    episodes_of_svt := strtoint(episodes_of_svt_edit.Text);

   vf_time := strtofloat(vf_time_edit.Text);
   vt_time := strtofloat(vt_time_edit.Text);
   episodes_of_vpb := strtoint(vpb_count_edit.Text); 

     vf_plus_vt := VF_time+VT_time;
     {
     if vf_plus_vt > 300 then score := 7
     else if (vf_plus_vt <= 300) and (vf_plus_vt > 160) then score := 6
     else if (vf_plus_vt <= 160) and (vf_plus_vt > 80) and (episodes_of_nvf > 5) then score := 5
     else if (vf_plus_vt <= 80) and (vf_plus_vt > 40) and (episodes_of_nvf <= 5) and (episodes_of_nvf >= 2)then score := 4
     else if (vf_plus_vt <= 40) and ( (episodes_of_vt > 5) or (episodes_of_svf > 0) or (episodes_of_nvf = 1))then score := 3
     else if (episodes_of_vt <= 5) and (episodes_of_vt >= 1)  then score := 2
     else if (episodes_of_vpb > 10) then score := 1
     else if (episodes_of_vpb <= 10) then score := 0;
     }

     vpb_10 := strtoint(score_form.Edit1.Text);
episode_of_vt_1 := strtoint(score_form.Edit2.Text);
episode_of_vt_5 := strtoint(score_form.Edit3.Text);
vt_vf_time_40 := strtoint(score_form.Edit4.Text);
episode_of_nvf_2 := strtoint(score_form.Edit5.Text);
episode_of_nvf_5 := strtoint(score_form.Edit6.Text);
vt_vf_time_80 := strtoint(score_form.Edit7.Text);
vt_vf_time_160 := strtoint(score_form.Edit8.Text);
vt_vf_time_300 := strtoint(score_form.Edit9.Text);

     score := 999;
     score_find_flag := false;
     if (vf_plus_vt > vt_vf_time_300)  then
     begin
     score := 7;
     score_find_flag := true;
     end;

     if ((vf_plus_vt <= vt_vf_time_300) and (vf_plus_vt > vt_vf_time_160))  then
     begin
     score := 6;
     score_find_flag := true;
     end;

     if (((vf_plus_vt <= vt_vf_time_160) and (vf_plus_vt > vt_vf_time_80)) or (episodes_of_nvf > episode_of_nvf_5))   then
     begin
     score := 5;
     score_find_flag := true;
     end;

     if ((vf_plus_vt <= vt_vf_time_80) and (vf_plus_vt > vt_vf_time_40) and (episodes_of_nvf <= episode_of_nvf_5) and (episodes_of_nvf >= episode_of_nvf_2)) then
     begin
     score := 4;
     score_find_flag := true;
     end;

     if (vf_plus_vt <= vt_vf_time_40) and ((episodes_of_vt > episode_of_vt_5) or (episodes_of_svf > 0) or (episodes_of_nvf = 1)) then
     begin
     score := 3;
     score_find_flag := true;
     end;

     if ((episodes_of_vt <= episode_of_vt_5) and (episodes_of_vt >= episode_of_vt_1) and (episodes_of_nvf = 0) and (episodes_of_svf = 0))   then
     begin
     score := 2;
     score_find_flag := true;
     end;

     if (episodes_of_vpb > vpb_10) and (score_find_flag = false) then
     begin
     score := 1;
     score_find_flag := true;
     end;

     if (episodes_of_vpb <= vpb_10) and (score_find_flag = false)then
     begin
     score := 0;
     score_find_flag := true;
     end;



     




score_form.score_label.caption := floattostr(score);
     score_form.Show;

   end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

chart1.LeftAxis.SetMinMax(chart1.LeftAxis.Minimum/1.5,chart1.LeftAxis.Maximum/1.5);
checkbox2.Checked := false;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
chart1.LeftAxis.SetMinMax(chart1.LeftAxis.Minimum*1.5,chart1.LeftAxis.Maximum*1.5);
checkbox2.Checked := false;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin

chart1.LeftAxis.AutomaticMaximum := checkbox2.Checked;
chart1.LeftAxis.AutomaticMinimum := checkbox2.Checked;
plot_btn.Click;

end;

procedure TForm1.StartHere1Click(Sender: TObject);
begin

if vf_rbtn.Checked then
begin
selection_flag := 'vf_start';
vt_rbtn.Enabled := false;
vpb_rbtn.Enabled := false;

end;

if vt_rbtn.Checked then
begin
selection_flag := 'vt_start';
vf_rbtn.Enabled := false;
vpb_rbtn.Enabled := false;

end;

if vpb_rbtn.Checked then
begin
selection_flag := 'vpb_start';
vt_rbtn.Enabled := false;
vf_rbtn.Enabled := false;

end;

click_flag := 1;
starthere1.Enabled := false;
click1_on_chart_btn.Click;


end;

procedure TForm1.EndHere1Click(Sender: TObject);
begin
if vf_rbtn.Checked then selection_flag := 'vf_end';
if vt_rbtn.Checked then selection_flag := 'vt_end';
if vpb_rbtn.Checked then selection_flag := 'vpb_end';

vt_rbtn.Enabled := true;
vf_rbtn.Enabled := true;
vpb_rbtn.Enabled := true;


click_flag := 2;
starthere1.Enabled := true;
click1_on_chart_btn.Click;
end;

procedure TForm1.Cancel1Click(Sender: TObject);
begin
if vf_rbtn.Checked then selection_flag := 'vf_start';
if vt_rbtn.Checked then selection_flag := 'vt_start';
if vpb_rbtn.Checked then selection_flag := 'vpb_start';

vt_rbtn.Enabled := true;
vf_rbtn.Enabled := true;
vpb_rbtn.Enabled := true;

click_flag := 1;
starthere1.Enabled := true;

chart1.Series[1].Clear;


end;

procedure TForm1.reselect_btnClick(Sender: TObject);
begin
if vf_rbtn.Checked then selection_flag := 'vf_start';
if vt_rbtn.Checked then selection_flag := 'vt_start';
if vpb_rbtn.Checked then selection_flag := 'vpb_start';

vt_rbtn.Enabled := true;
vf_rbtn.Enabled := true;
vpb_rbtn.Enabled := true;

click_flag := 1;
starthere1.Enabled := true;

chart1.Series[1].Clear;

end;

end.
