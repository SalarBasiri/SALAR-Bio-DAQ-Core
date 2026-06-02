unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Menus,
  ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, Buttons , IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP , winsock , wininet , HTTPApp, jpeg ,IdHashMessageDigest, idHash;

type
  float_array = array [0 .. 3000000] of single;
  float_array_small = array [0 .. 10000] of single;
  int64_array = array [0 .. 100000] of int64;
  int64_array_small = array [0 .. 10000] of int64;
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Chart1: TChart;
    Chart2: TChart;
    Series1: TLineSeries;
    Series3: TLineSeries;
    Series5: TLineSeries;
    Label2: TLabel;
    Timer1: TTimer;
    Button5: TButton;
    Chart3: TChart;
    BarSeries2: TBarSeries;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Chart4: TChart;
    Series8: TLineSeries;
    Label15: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Series9: TBarSeries;
    Series10: TBarSeries;
    Label17: TLabel;
    Label18: TLabel;
    BarSeries1: TBarSeries;
    Button7: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button8: TButton;
    Button9: TButton;
    GroupBox5: TGroupBox;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Label19: TLabel;
    Label20: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Button17: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    Process1: TMenuItem;
    Setting1: TMenuItem;
    Help1: TMenuItem;
    Label3: TLabel;
    Edit1: TEdit;
    Series4: TPointSeries;
    Series11: TPointSeries;
    Edit12: TEdit;
    Edit13: TEdit;
    ProcessAllSegments1: TMenuItem;
    ProcessOneSegment1: TMenuItem;
    ProcessAllSegments2: TMenuItem;
    SaveResults1: TMenuItem;
    N7ResetandOpenNew1: TMenuItem;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label23: TLabel;
    MultiFileResultsViewer1: TMenuItem;
    ScrollBar1: TScrollBar;
    ComboBox1: TComboBox;
    zoom_out: TBitBtn;
    zoom_in: TBitBtn;
    Series2: TPointSeries;
    Label24: TLabel;
    GroupBox6: TGroupBox;
    ListBox7: TListBox;
    ListBox8: TListBox;
    ListBox9: TListBox;
    Button10: TButton;
    Button11: TButton;
    zoom_combo: TComboBox;
    Button12: TButton;
    Label25: TLabel;
    Memo1: TMemo;
    GroupBox7: TGroupBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    GroupBox8: TGroupBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    PopupMenu1: TPopupMenu;
    MAPZoomWindow1: TMenuItem;
    Label26: TLabel;
    PopupMenu2: TPopupMenu;
    ContractionZoomWindow1: TMenuItem;
    Label27: TLabel;
    trim_stimulus_btn: TButton;
    trim_contraction_btn: TButton;
    main_stimulus_btn: TButton;
    main_contraction_btn: TButton;
    Button16: TButton;
    Button18: TButton;
    load_file_btn: TButton;
    open2: TMenuItem;
    open3: TMenuItem;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Timer2: TTimer;
    upload_memo: TMemo;
    About1: TMenuItem;
    upload_btn: TButton;
    Panel1: TPanel;
    Image1: TImage;
    Edit2: TEdit;
    Edit3: TEdit;
    Button22: TButton;
    Memo2: TMemo;
    Timer3: TTimer;
    mean_of_desired_area_btn: TButton;
    start_period_label: TLabel;
    end_period_label: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Chart2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button6Click(Sender: TObject);
    procedure Chart1Zoom(Sender: TObject);
    procedure Chart2Zoom(Sender: TObject);
    procedure Chart4Zoom(Sender: TObject);
    procedure Chart2UndoZoom(Sender: TObject);
    procedure Chart1UndoZoom(Sender: TObject);
    procedure Chart4UndoZoom(Sender: TObject);
    procedure Chart2Scroll(Sender: TObject);
    procedure Chart1Scroll(Sender: TObject);
    procedure Chart4Scroll(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Chart4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit10Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure N7ResetandOpenNew1Click(Sender: TObject);
    procedure MultiFileResultsViewer1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure zoom_inClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure zoom_outClick(Sender: TObject);
    procedure zoom_comboChange(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure MAPZoomWindow1Click(Sender: TObject);
    procedure Chart2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Chart2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit11Change(Sender: TObject);
    procedure ContractionZoomWindow1Click(Sender: TObject);
    procedure Chart2DblClick(Sender: TObject);
    procedure Chart4DblClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure trim_stimulus_btnClick(Sender: TObject);
    procedure trim_contraction_btnClick(Sender: TObject);
    procedure main_stimulus_btnClick(Sender: TObject);
    procedure main_contraction_btnClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure load_file_btnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure open2Click(Sender: TObject);
    procedure open3Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure upload_btnClick(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure mean_of_desired_area_btnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    in_file: text;
  Time, TEMP, stimulus, CV1, CV2, LVEDP, Ventricular, MAP_endo, pH,
    Sinus_rate: string;
  Time_array, TEMP_array, stimulus_array, CV1_array, CV2_array, LVEDP_array,
    Ventricular_array, MAP_endo_array, pH_array, Sinus_rate_array: float_array;
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

     my_MAP , my_Contraction , my_Stimulus : double;
     contraction_zoom_offset : double;
     MAP_Amplitude , MAP_Ave , Contraction_amplitude , Contraction_Ave : double;


     MAP_global_Max , MAP_global_min , Contraction_Global_Max , Contraction_Global_min : double;
     MAP_offset , Contraction_offset : double;

   my_file : file;
   save_to_file_buffer , load_from_file_buffer : array [0..4] of single;
   i , c : integer;
   meta_data_string : string;

   global_ip_address , upload_string: string;

   url_encode, responce_str : string;
 force_close_flag : boolean;
 computer_variable : string;
 black_list_check  :string;

 //internet
 user_name , password , user_pass , md5_hash : String;
 login_ok : boolean;
 left_axis_max : real;
implementation

uses Unit2, Unit3, Unit4, Unit6, Unit7;

{$R *.dfm}


procedure check_password;
begin
login_ok := false;
for c := 0 to form1.memo2.Lines.Count-1 do
  if md5_hash = form1.memo2.Lines[c] then login_ok := true;

if login_ok = true then
begin
form1.panel1.Height := 0;
form1.Panel1.Width := 0;
form1.timer2.Enabled := false;
form1.timer3.Enabled := false;
form1.File1.Enabled := true;
form1.Process1.Enabled := true;
form1.Setting1.Enabled := true;

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
     // raise Exception.CreateFmt('Cannot open URL %s', [Url]);

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


procedure TForm1.Button1Click(Sender: TObject);
var
my_map , my_contraction : double;
begin
 if OpenDialog1.Execute then
  begin
    my_file_name := OpenDialog1.FileName;
    label8.Caption := my_file_name;
    form2.Label7.Caption := my_file_name;
    assignfile(in_file, my_file_name);
    reset(in_file);
    for c1 := 1 to 4000 do
    begin
      readln(in_file, s_Line);

    end;

    array_counter := 1;
    MAP_Global_max := -100000;
    MAP_Global_min := 100000;
    Contraction_Global_max := -100000;
    Contraction_Global_min := 100000;

    while (not eof(in_file)) do
    begin
      readln(in_file, s_Line);
      c_max := length(s_Line);
      c1 := 1;
      Time := '';
      repeat
        Time := Time + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Time <> 'NaN' then
        Time_array[array_counter] := strtofloat(Time);

      TEMP := '';
      c1 := c1 + 1;
      repeat
        TEMP := TEMP + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if TEMP <> 'NaN' then
        TEMP_array[array_counter] := strtofloat(TEMP);

      stimulus := '';
      c1 := c1 + 1;
      repeat
        stimulus := stimulus + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if stimulus <> 'NaN' then
        stimulus_array[array_counter] := strtofloat(stimulus);

      CV1 := '';
      c1 := c1 + 1;
      repeat
        CV1 := CV1 + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if CV1 <> 'NaN' then
        CV1_array[array_counter] := strtofloat(CV1);

      CV2 := '';
      c1 := c1 + 1;
      repeat
        CV2 := CV2 + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if CV2 <> 'NaN' then
        CV2_array[array_counter] := strtofloat(CV2);

      LVEDP := '';
      c1 := c1 + 1;
      repeat
        LVEDP := LVEDP + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if LVEDP <> 'NaN' then
        LVEDP_array[array_counter] := strtofloat(LVEDP);
        my_Contraction := strtofloat(LVEDP);
      if my_Contraction > Contraction_global_Max then Contraction_global_Max := my_Contraction;
      if my_Contraction < Contraction_global_Min then Contraction_global_Min := my_Contraction;



      Ventricular := '';
      c1 := c1 + 1;
      repeat
        Ventricular := Ventricular + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Ventricular <> 'NaN' then
        Ventricular_array[array_counter] := strtofloat(Ventricular);

      MAP_endo := '';
      c1 := c1 + 1;
      repeat
        MAP_endo := MAP_endo + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if MAP_endo <> 'NaN' then
        MAP_endo_array[array_counter] := strtofloat(MAP_endo);
        my_MAP := strtofloat(MAP_endo);
      if my_MAP > MAP_global_Max then MAP_global_Max := my_MAP;
      if my_MAP < MAP_global_Min then MAP_global_Min := my_MAP;

      
      pH := '';
      c1 := c1 + 1;
      repeat
        pH := pH + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if pH <> 'NaN' then
        pH_array[array_counter] := strtofloat(pH);

      Sinus_rate := '';
      c1 := c1 + 1;
      repeat
        Sinus_rate := Sinus_rate + s_Line[c1];
        c1 := c1 + 1;
      until ((s_Line[c1] = chr(9)) or (c1 > c_max));
      if Sinus_rate <> 'NaN' then
        Sinus_rate_array[array_counter] := strtofloat(Sinus_rate);

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

    end;

    closefile(in_file);
    max_array := array_counter - 5;
    Label1.Caption := 'Loaded Records: ' + inttostr(max_array);
    array_counter := 1;
    t0 := Time_array[2];
    t1 := t0;
    t2 := Time_array[3];
    dt := t2 - t1;

    plot_window_width := 10000;

    array_counter := 1;
    chart1.Series[0].Clear;
    chart1.Series[1].Clear;
    chart2.Series[0].Clear;
    chart2.Series[1].Clear;
    chart2.Series[2].Clear;
    chart2.Series[3].Clear;
    chart2.Series[4].Clear;
    chart4.Series[0].Clear;
    chart4.Series[1].Clear;
    chart4.Series[2].Clear;
    chart4.Series[3].Clear;
    chart4.Series[4].Clear;

    scrollbar1.Position := 0;
    scrollbar1.Max := trunc(max_array/100);
    plot_start_index := 1;
    plot_end_index := plot_start_index + plot_window_width;

    array_counter := 1;
    repeat

     chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);

     array_counter := array_counter + 1;

    until (array_counter > max_array);

    chart2.LeftAxis.SetMinMax(MAP_Global_min - 0.1*MAP_Global_Max , MAP_Global_Max + 0.1*MAP_Global_Max);
    chart4.LeftAxis.SetMinMax(Contraction_Global_min - 0.1*Contraction_Global_Max , Contraction_Global_Max + 0.1*Contraction_Global_Max);

    array_counter := 1;
    block_no := 1;
    listbox1.Items.Clear;
    listbox4.Items.clear;
    listbox7.Items.clear;
    zoom_combo.ItemIndex := 0;

        showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');

        upload_memo.Lines.Add('Open File (8CH): '+my_file_name);
        upload_memo.Lines.Add('Loading ' + inttostr(max_array) + ' Records has Compeleted');
        upload_btn.Click;
        
    button12.Click;

  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin


max_array_counter := array_counter + 10000;


if max_array_counter < max_array then
begin
scrollbar1.Position := trunc(max_array_counter / 100) - 1;
label2.Caption := 'Sgment No: ' + inttostr(block_no);
block_no := block_no + 1;
chart1.BottomAxis.SetMinMax(Time_array[array_counter],Time_array[max_array_counter]);
chart2.BottomAxis.SetMinMax(Time_array[array_counter],Time_array[max_array_counter]);
chart4.BottomAxis.SetMinMax(Time_array[array_counter],Time_array[max_array_counter]);

{
global_max := -10000;
global_min := 10000;
repeat
 point1 := map_endo_array[array_counter];

   if point1 >  global_max then global_max := point1;

   if point1 < global_min then global_min := point1;

   array_counter := array_counter + 1;

until (array_counter > max_array_counter);

mean := (global_max + global_min) / 2;

array_counter := max_array_counter - 10000;
chart2.Series[2].AddXY(time_array[array_counter] , mean);
chart2.Series[2].AddXY(time_array[max_array_counter] , mean);

}

min_dif_map := strtofloat(edit8.Text);
max_dif_map := strtofloat(edit9.Text);

Chart3.BottomAxis.SetMinMax(min_dif_map,max_dif_map);

min_dif_contraction := strtofloat(edit12.Text);
max_dif_contraction := strtofloat(edit13.Text);

repeat

     {
     chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);
       }

    point1_stimulus := stimulus_array[array_counter];
    point2_stimulus := stimulus_array[array_counter+1];
    if ((point1_stimulus > stimulus_threshold) and (point2_stimulus < stimulus_threshold)) then
    begin
    stimulus_counter := stimulus_counter + 1;

  t2_sti := time_array[array_counter];
   dif_sti := (t2_sti - t1_sti) * 1000;
   t1_sti := t2_sti;

   if ((dif_sti > 0) and (dif_sti < 1000)) then
   begin
   listbox7.Items.Add(floattostr(dif_sti));
   stimulus_counter := stimulus_counter + 1;
   label24.Caption := 'Stimulus Count: ' + inttostr(stimulus_counter);
    chart1.Series[1].AddXY(time_array[array_counter] , point1_stimulus);

   end;

    end;
 {
 point1 := (map_endo_array[array_counter]+map_endo_array[array_counter+1]+map_endo_array[array_counter+2]+map_endo_array[array_counter+3]) / 4;
  point2 := (map_endo_array[array_counter+8]+map_endo_array[array_counter+9]+map_endo_array[array_counter+10]+map_endo_array[array_counter+11]) / 4;
   point3 := (map_endo_array[array_counter+16]+map_endo_array[array_counter+17]+map_endo_array[array_counter+18]+map_endo_array[array_counter+19]) / 4;

 }
 point1 := map_endo_array[array_counter];
  point2 := map_endo_array[array_counter+20];
   point3 := map_endo_array[array_counter+40];


   if ((point2 > point1) and (point2 > point3) and (point2 > upper_limit_MAP)) then
   // if ((point2 > point1) and (point2 > point3)) then
   begin

  // chart2.Series[3].AddXY(Time_array[array_counter], upper_limit_MAP);
   t2_map := time_array[array_counter];
   dif_map := (t2_map - t1_map) * 1000;
   t1_map := t2_map;

   if ((dif_map > min_dif_map) and (dif_map < max_dif_map)) then
   begin
   listbox1.Items.Add(floattostr(dif_map));
   map_counter := map_counter + 1;
   label17.Caption := 'MAP Count: ' + inttostr(map_counter);
   chart2.Series[1].AddXY(time_array[array_counter+20] , map_endo_array[array_counter+20]);

   end;

   end;

if contraction_flag = true then
begin
 {
 point1 := (LVEDP_array[array_counter]+LVEDP_array[array_counter+1]+LVEDP_array[array_counter+2]+LVEDP_array[array_counter+3]) / 4;
  point2 := (LVEDP_array[array_counter+4]+LVEDP_array[array_counter+5]+LVEDP_array[array_counter+6]+LVEDP_array[array_counter+7]) / 4;
   point3 := (LVEDP_array[array_counter+8]+LVEDP_array[array_counter+9]+LVEDP_array[array_counter+10]+LVEDP_array[array_counter+11]) / 4;
  }
  point1 := LVEDP_array[array_counter];
  point2 := LVEDP_array[array_counter+50];
  point3 := LVEDP_array[array_counter+100];

   if ((point2 > point1) and (point2 > point3) and (point2 > upper_limit_Contraction)) then
   // if ((point2 > point1) and (point2 > point3)) then
   begin

  // chart4.Series[3].AddXY(Time_array[array_counter], upper_limit_Contraction);
   t2_cont := time_array[array_counter];
   dif_cont := (t2_cont - t1_cont) * 1000;
   t1_cont := t2_cont;

   if ((dif_cont > min_dif_contraction) and (dif_cont < max_dif_contraction)) then
   begin
   listbox4.Items.Add(floattostr(dif_cont));
   LVEDP_counter := LVEDP_counter + 1;
   label18.Caption := 'Contraction Count: ' + inttostr(LVEDP_counter);
   chart4.Series[1].AddXY(time_array[array_counter+50] , LVEDP_array[array_counter+50]);

   end;

   end;


   end; // if contraction_flag = true then
   array_counter := array_counter + 1;

  // chart1.repaint;
  // chart2.repaint;
  // chart4.repaint;
until (array_counter > max_array_counter);

end
else
begin
showmessage('End of File!');
timer1.Enabled := false;

end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
listbox2.Items.Clear;
listbox3.Items.Clear;
form2.memo1.lines.clear;
form2.Memo1.Lines.Add('MAP Periods (ms)'+chr(9)+'Count');
max_count := listbox1.Items.Count - 1;
period_step := strtofloat(edit1.Text);

c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox1.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := 0;

form2.chart1.Series[0].Clear;
//form2.Series2.Clear;
  sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;


  listbox2.Items.Add(inttostr(amp));
  sum_amp := sum_amp + amp;

  listbox3.Items.Add(floattostr(amp*period_check));
  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

  form2.Chart1.Series[0].AddXY(period_check,amp);
  period_check := period_check + period_step;
  form2.Memo1.Lines.Add(floattostr(period_check)+chr(9) +inttostr(amp));


until (period_check > max_period);

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

 if contraction_flag = true then button13.Click;


 form2.Left := 0;
 form2.Top := 0;
 
 button10.Click; // stimulus spectrum

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
timer1.Enabled := true;

    button3.Enabled := true;

    button8.Enabled := true;
    button9.Enabled := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if max_array_counter < max_array then button2.Click
else timer1.Enabled:= false;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

max_array_counter := array_counter + 10000;


if max_array_counter < max_array then
begin
label2.Caption := 'Block No: ' + inttostr(block_no);
block_no := block_no + 1;
chart1.BottomAxis.SetMinMax(Time_array[array_counter],Time_array[max_array_counter]);
chart2.BottomAxis.SetMinMax(Time_array[array_counter],Time_array[max_array_counter]);
chart4.BottomAxis.SetMinMax(Time_array[array_counter],Time_array[max_array_counter]);

{
global_max := -10000;
global_min := 10000;
repeat
 point1 := map_endo_array[array_counter];

   if point1 >  global_max then global_max := point1;

   if point1 < global_min then global_min := point1;

   array_counter := array_counter + 1;

until (array_counter > max_array_counter);

mean := (global_max + global_min) / 2;

array_counter := max_array_counter - 10000;
chart2.Series[2].AddXY(time_array[array_counter] , mean);
chart2.Series[2].AddXY(time_array[max_array_counter] , mean); }


min_dif_map := strtofloat(edit8.Text);
max_dif_map := strtofloat(edit9.Text);
Chart3.BottomAxis.SetMinMax(min_dif_map,max_dif_map);




repeat
 point1 := (map_endo_array[array_counter]+map_endo_array[array_counter+1]+map_endo_array[array_counter+2]+map_endo_array[array_counter+3]) / 4;
  point2 := (map_endo_array[array_counter+4]+map_endo_array[array_counter+5]+map_endo_array[array_counter+6]+map_endo_array[array_counter+7]) / 4;
   point3 := (map_endo_array[array_counter+8]+map_endo_array[array_counter+9]+map_endo_array[array_counter+10]+map_endo_array[array_counter+11]) / 4;

     chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);


     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);

    point1_stimulus := stimulus_array[array_counter];
    point2_stimulus := stimulus_array[array_counter+1];
    
    if ((point1_stimulus > stimulus_threshold) and (point2_stimulus < stimulus_threshold)) then
    begin
    stimulus_counter := stimulus_counter + 1;
    label17.Caption := 'Stimulus Count: ' + inttostr(stimulus_counter);

    end;

    
   if ((point2 > point1) and (point2 > point3) and (point2 > upper_limit_MAP)) then
   // if ((point2 > point1) and (point2 > point3)) then
   begin

   chart2.Series[1].AddXY(time_array[array_counter] , map_endo_array[array_counter]);
   chart2.Series[3].AddXY(Time_array[array_counter], upper_limit_MAP);
   t2_map := time_array[array_counter];
   dif_map := (t2_map - t1_map) * 1000;
   t1_map := t2_map;
   
   if ((dif_map > min_dif_map) and (dif_map < max_dif_map)) then
   begin
   listbox1.Items.Add(floattostr(dif_map));
   map_counter := map_counter + 1;
   label18.Caption := 'MAP Count: ' + inttostr(map_counter);
   end;

   end;

   array_counter := array_counter + 1;

until (array_counter > max_array_counter);

end
else
begin
showmessage('End of File!');
timer1.Enabled := false;

end;


 // Plot Score related charts

listbox2.Items.Clear;
//form2.memo1.lines.clear;
//form2.Memo1.Lines.Add('Periods (ms)'+chr(9)+'Count');
max_count := listbox1.Items.Count - 1;
period_step := strtofloat(edit1.Text);

c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox1.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := 0;

chart3.Series[0].Clear;
chart3.Series[1].Clear;
chart3.Series[2].Clear;
chart3.Series[3].Clear;

range1 := strtofloat(edit4.Text);
range2 := strtofloat(edit5.Text);

repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;
  

  listbox2.Items.Add(inttostr(amp));
  sum_amp := sum_amp + amp;

  listbox3.Items.Add(floattostr(amp*period_check));
  sum_amp_by_period := sum_amp_by_period + (amp*period_check);


   if (period_check < range1) then Chart3.Series[2].AddXY(period_check,amp);
   if ((period_check >= range1) and (period_check <= range2))then Chart3.Series[3].AddXY(period_check,amp);
   if (period_check > range2) then Chart3.Series[0].AddXY(period_check,amp);

  period_check := period_check + period_step;
  //form2.Memo1.Lines.Add(floattostr(period_check)+chr(9) +inttostr(amp));


until (period_check > max_period);

 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 chart3.Series[1].AddXY(dominant_period,chart3.Series[0].MaxYValue);
 //form2.show;
 label4.caption := 'Sum of all Spectrum: ' + floattostr(sum_amp) + ' ,  Sum of Multiply: ' + floattostr(trunc(sum_amp_by_period*100)/100);
  label5.caption := 'Dominant Period: ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq: '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
 //form2.Memo1.Lines.add(form2.label1.caption);
 //form2.Memo1.Lines.Add(form2.label2.caption);

 
end;

procedure TForm1.Label9Click(Sender: TObject);
begin
click_index := 'y>=';
chart2.Series[3].Clear;

screen.Cursor := crHandPoint;

end;

procedure TForm1.Label19Click(Sender: TObject);
begin
click_index := 'y>=';
chart4.Series[3].Clear;
screen.Cursor := crHandPoint;
end;

procedure TForm1.Label10Click(Sender: TObject);
begin
click_index := 'y<=';
chart2.Series[4].Clear;
screen.Cursor := crHandPoint;
end;

procedure TForm1.Label20Click(Sender: TObject);
begin
click_index := 'y<=';
chart4.Series[4].Clear;
screen.Cursor := crHandPoint;
end;

procedure TForm1.Label11Click(Sender: TObject);
begin
click_index := 'x>=';
end;

procedure TForm1.Label12Click(Sender: TObject);
begin
click_index := 'x<=';
end;

procedure TForm1.Chart2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 XVal :=Chart2.BottomAxis.CalcPosPoint(X);
  YVal :=Chart2.LeftAxis.CalcPosPoint(Y);

 if dt <> 0 then
 begin
  xval_index := trunc((xval - t0) / dt);
  label26.Caption := inttostr(xval_index);
 end;

 if mouse_index_map = 'down' then
  begin

 // chart2.Canvas.Rectangle(xval,yval,xval+100,yval+100);


  end;


end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    array_counter := 1;
    t0 := Time_array[1];
    t1 := t0;
    t2 := Time_array[2];
    dt := t2 - t1;

    plot_window_width := 10000;

    button2.Enabled := true;
    button4.Enabled := true;



    array_counter := 1;
   // chart1.Series[0].Clear;
    chart1.Series[1].Clear;
   // chart2.Series[0].Clear;
    chart2.Series[1].Clear;
   // chart2.Series[2].Clear;
   // chart2.Series[3].Clear;
   // chart2.Series[4].Clear;
   // chart4.Series[0].Clear;
    chart4.Series[1].Clear;
  //  chart4.Series[2].Clear;
  //  chart4.Series[3].Clear;
  //  chart4.Series[4].Clear;


    max_stimulus := -1000;

    repeat

    if (stimulus_array[array_counter] > max_stimulus) then max_stimulus := stimulus_array[array_counter];

   {  chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);  }

     array_counter := array_counter + 1;

    until (array_counter > 300000);

    array_counter := 1;
    block_no := 1;
    listbox1.Items.Clear;
    listbox4.Items.Clear;
    listbox7.Items.Clear;
    stimulus_threshold := trunc(700 * max_stimulus) / 1000;
    label16.Caption := floattostr(trunc(stimulus_threshold*100)/100);

    stimulus_counter := 0;
    MAP_counter := 0;
    LVEDP_Counter := 0;

    plot_start_index := 1;
    plot_end_index := plot_start_index + plot_window_width;
    chart1.BottomAxis.SetMinMax(time_array[plot_start_index],time_array[plot_end_index]);
         chart2.BottomAxis.SetMinMax(time_array[plot_start_index],time_array[plot_end_index]);
             chart4.BottomAxis.SetMinMax(time_array[plot_start_index],time_array[plot_end_index]);

    array_counter := 1;
    t0 := Time_array[1];
    t1 := t0;
    t2 := Time_array[2];
    dt := t2 - t1;

    plot_window_width := 10000;
    form2.Desired_area_memo.Lines.Clear;
end;

procedure TForm1.Chart1Zoom(Sender: TObject);
begin
chart2.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum);
chart4.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum);

end;

procedure TForm1.Chart2Zoom(Sender: TObject);
begin
chart1.BottomAxis.SetMinMax(chart2.BottomAxis.Minimum,chart2.BottomAxis.Maximum);
chart4.BottomAxis.SetMinMax(chart2.BottomAxis.Minimum,chart2.BottomAxis.Maximum);

end;

procedure TForm1.Chart4Zoom(Sender: TObject);
begin

chart1.BottomAxis.SetMinMax(chart4.BottomAxis.Minimum,chart4.BottomAxis.Maximum);
chart2.BottomAxis.SetMinMax(chart4.BottomAxis.Minimum,chart4.BottomAxis.Maximum);

end;

procedure TForm1.Chart2UndoZoom(Sender: TObject);
begin

chart1.BottomAxis.SetMinMax(chart2.BottomAxis.Minimum,chart2.BottomAxis.Maximum);
chart4.BottomAxis.SetMinMax(chart2.BottomAxis.Minimum,chart2.BottomAxis.Maximum);

end;

procedure TForm1.Chart1UndoZoom(Sender: TObject);
begin

chart2.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum);
chart4.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum);

end;

procedure TForm1.Chart4UndoZoom(Sender: TObject);
begin

chart1.BottomAxis.SetMinMax(chart4.BottomAxis.Minimum,chart4.BottomAxis.Maximum);
chart2.BottomAxis.SetMinMax(chart4.BottomAxis.Minimum,chart4.BottomAxis.Maximum);

end;

procedure TForm1.Chart2Scroll(Sender: TObject);
begin
chart1.BottomAxis.SetMinMax(chart2.BottomAxis.Minimum,chart2.BottomAxis.Maximum);
chart4.BottomAxis.SetMinMax(chart2.BottomAxis.Minimum,chart2.BottomAxis.Maximum);

end;

procedure TForm1.Chart1Scroll(Sender: TObject);
begin
chart2.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum);
chart4.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum);

end;

procedure TForm1.Chart4Scroll(Sender: TObject);
begin
chart1.BottomAxis.SetMinMax(chart4.BottomAxis.Minimum,chart4.BottomAxis.Maximum);
chart2.BottomAxis.SetMinMax(chart4.BottomAxis.Minimum,chart4.BottomAxis.Maximum);

end;

procedure TForm1.Button8Click(Sender: TObject);
var
file_name : string;
begin

file_name := form2.label7.Caption;
if form2.CheckBox1.Checked then file_name := file_name + '_MAP';
if form2.CheckBox2.Checked then file_name := file_name + '_Contraction';
if form2.CheckBox3.Checked then file_name := file_name + '_Stimulus';
file_name := file_name + '.bmp';


form2.chart1.SaveToBitmapFile(file_name);
//form2.memo1.Lines.SaveToFile(form2.label7.Caption+'_MAP.xls');
//form2.memo2.Lines.SaveToFile(form2.label7.Caption+'_Contraction.xls');

c := 0;
max_count2 := listbox2.Items.Count - 1;
max_count5 := listbox5.Items.Count - 1;
max_count8 := listbox8.Items.Count - 1;
max_count := max_count2;
if max_count5 > max_count then max_count := max_count5;
if max_count8 > max_count then max_count := max_count8;
memo1.Lines.Clear;
memo1.Lines.Add('Periods Steps(ms)'+chr(9)+'Counts of MAP'+chr(9)+'Counts of Contraction'+chr(9)+'Counts of Stimulus');
period_check := 0;

repeat
  
s := floattostr(period_check)+chr(9);
period_check := period_check + period_step;
if c <= max_count2 then s := s + listbox2.Items[c]+chr(9)
else s := s + '0'+chr(9);

if c <= max_count5 then s := s + listbox5.Items[c]+chr(9)
else s := s + '0'+chr(9);

if c <= max_count8 then s := s + listbox8.Items[c]
else s := s + '0';

memo1.Lines.Add(s);
c := c + 1;
until (c > max_count);

memo1.Lines.Add(form2.Label1.Caption);
memo1.Lines.Add(form2.Label2.Caption);
memo1.Lines.Add(form2.Label3.Caption);
memo1.Lines.Add(form2.Label4.Caption);
memo1.Lines.Add(form2.Label5.Caption);
memo1.Lines.Add(form2.Label6.Caption);
memo1.Lines.Add(Label8.Caption);
memo1.Lines.add('MAP Y >= :'+edit6.Text);
memo1.Lines.add('MAP Y <= :'+edit7.Text);
memo1.Lines.add('MAP X >= :'+edit8.Text);
memo1.Lines.add('MAP X <= :'+edit9.Text);

memo1.Lines.add('Contraction Y >= :'+edit10.Text);
memo1.Lines.add('Contraction Y <= :'+edit11.Text);
memo1.Lines.add('Contraction X >= :'+edit12.Text);
memo1.Lines.add('Contraction X <= :'+edit13.Text);

max_count := form2.Desired_area_memo.Lines.Count - 1;

for c := 0 to max_count do
  memo1.Lines.Add(form2.Desired_area_memo.Lines[c]);


memo1.Lines.SaveToFile(form2.Label7.Caption+'.xls');

form2.Chart1.SaveToBitmapFile(form2.Label7.Caption+'.bmp');

upload_memo.Lines.Add('Save File:');
upload_memo.Lines.add(form2.Label7.Caption+'.xls');
upload_btn.Click;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
multi_chart_show.Show;

end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
upper_limit_MAP := strtofloat(edit6.Text);
chart2.Series[3].Clear;
chart2.Series[3].AddXY(time_array[1],upper_limit_MAp);
chart2.Series[3].AddXY(time_array[max_array],upper_limit_MAP);
click_index := '---';

end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
lower_limit_MAP := strtofloat(edit7.Text);
chart2.Series[4].Clear;
chart2.Series[4].AddXY(time_array[1],lower_limit_MAP);
chart2.Series[4].AddXY(time_array[max_array],lower_limit_MAP);
click_index := '---';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
listbox2.Items.Clear;
listbox3.Items.Clear;
form2.memo1.lines.clear;
form2.Memo1.Lines.Add('MAP Periods (ms)'+chr(9)+'Count');
max_count := listbox1.Items.Count - 1;
period_step := strtofloat(edit1.Text);

c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox1.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := 0;

form2.chart1.Series[0].Clear;
  sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;


  listbox2.Items.Add(inttostr(amp));
  sum_amp := sum_amp + amp;

  listbox3.Items.Add(floattostr(amp*period_check));
  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

 // form2.Chart1.Series[0].AddXY(period_check,amp);
  period_check := period_check + period_step;
  form2.Memo1.Lines.Add(floattostr(period_check)+chr(9) +inttostr(amp));


until (period_check > max_period);


//Normilize ba tavajoh be maximum
max_amp := -1000;
max_count := listbox2.Items.Count - 1;
  for c1 := 1 to max_count do
  begin
    if (strtoint(listbox2.Items[c1]) > max_amp) then max_amp := strtoint(listbox2.Items[c1]);
  end;

period_check := 0;
c1 := 0;
repeat

  form2.Chart1.Series[0].AddXY(period_check,(strtoint(listbox2.Items[c1])/max_amp) * 100);
  period_check := period_check + period_step;
  c1 := c1 + 1;
until (period_check > max_period);
 Form2.Chart1.Title.Text.Text := 'Priods Distribution (Percent)';
 form2.Chart1.LeftAxis.Title.Caption := 'Percent of Period Duration (Normalized to Maximum)';
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;

 form2.show;
 form2.label1.caption := 'Sum of all Spectrum (MAP): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (MAP): ' + floattostr(trunc(sum_amp_by_period*100)/100);
  form2.label2.caption := 'Dominant Period (MAP): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (MAP): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
 form2.Memo1.Lines.add(form2.label1.caption);
 form2.Memo1.Lines.Add(form2.label2.caption);

 if contraction_flag = true then button14.click;
end;

procedure TForm1.Chart4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 XVal :=Chart4.BottomAxis.CalcPosPoint(X);
  YVal :=Chart4.LeftAxis.CalcPosPoint(Y);

 if dt <> 0 then
 begin
  xval_index := trunc((xval - t0) / dt);
  label27.Caption := inttostr(xval_index);
 end;

 if mouse_index_map = 'down' then
  begin

 // chart2.Canvas.Rectangle(xval,yval,xval+100,yval+100);


  end;


end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
upper_limit_contraction := strtofloat(edit10.Text);
chart4.Series[3].Clear;
chart4.Series[3].AddXY(time_array[1],upper_limit_contraction);
chart4.Series[3].AddXY(time_array[max_array],upper_limit_contraction);
click_index := '---';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
listbox5.Items.Clear;
listbox6.Items.Clear;
form2.memo2.lines.clear;
form2.Memo2.Lines.Add('Contraction Periods (ms)'+chr(9)+'Count');
max_count := listbox4.Items.Count - 1;
period_step := strtofloat(edit1.Text);

c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox4.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := 0;

form2.chart1.Series[1].Clear;
  sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;


  listbox5.Items.Add(inttostr(amp));
  sum_amp := sum_amp + amp;

  listbox6.Items.Add(floattostr(amp*period_check));
  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

  form2.Chart1.Series[1].AddXY(period_check,amp);
  period_check := period_check + period_step;
  form2.Memo2.Lines.Add(floattostr(period_check)+chr(9) +inttostr(amp));


until (period_check > max_period);
 form2.Chart1.LeftAxis.Title.Caption := 'Counts of Period Duration (No)';
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 //form2.Series4.AddXY(dominant_period,form2.Series1.MaxYValue);
 form2.show;
 form2.label3.caption := 'Sum of all Spectrum (Contraction): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (Contraction): ' + floattostr(trunc(sum_amp_by_period*100)/100);
  form2.label4.caption := 'Dominant Period (Contraction): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (Contraction): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
 form2.Memo2.Lines.add(form2.label3.caption);
 form2.Memo2.Lines.Add(form2.label4.caption);

end;

procedure TForm1.Button15Click(Sender: TObject);
begin
listbox1.Items.SaveToFile(opendialog1.FileName+'_score_result_Contrction.xls');
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
listbox5.Items.Clear;
listbox6.Items.Clear;

form2.memo2.lines.clear;
form2.Memo2.Lines.Add('Contraction Periods (ms)'+chr(9)+'Count');
max_count := listbox4.Items.Count - 1;
period_step := strtofloat(edit1.Text);

c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox4.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := 0;

form2.chart1.Series[1].Clear;
  sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;


  listbox5.Items.Add(inttostr(amp));
  sum_amp := sum_amp + amp;

  listbox6.Items.Add(floattostr(amp*period_check));
  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

 // form2.Chart1.Series[0].AddXY(period_check,amp);
  period_check := period_check + period_step;
  form2.Memo2.Lines.Add(floattostr(period_check)+chr(9) +inttostr(amp));


until (period_check > max_period);


//Normilize ba tavajoh be maximum
max_amp := -1000;
max_count := listbox5.Items.Count - 1;
  for c1 := 1 to max_count do
  begin
    if (strtoint(listbox5.Items[c1]) > max_amp) then max_amp := strtoint(listbox5.Items[c1]);
  end;

period_check := 0;
c1 := 0;
repeat

  form2.Chart1.Series[1].AddXY(period_check,(strtoint(listbox5.Items[c1])/max_amp) * 100);
  period_check := period_check + period_step;
  c1 := c1 + 1;
until (period_check > max_period);
 Form2.Chart1.Title.Text.Text := 'Priods Distribution (Percent)';
 form2.Chart1.LeftAxis.Title.Caption := 'Percent of Period Duration (Normalized to Maximum)';
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 //form2.Series4.AddXY(dominant_period,form2.Series1.MaxYValue);
 form2.show;
 form2.label3.caption := 'Sum of all Spectrum (Contraction): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (Contraction): ' + floattostr(trunc(sum_amp_by_period*100)/100);
  form2.label4.caption := 'Dominant Period (Contraction): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (Contraction): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
 form2.Memo2.Lines.add(form2.label3.caption);
 form2.Memo2.Lines.Add(form2.label4.caption);

end;

procedure TForm1.Button17Click(Sender: TObject);
begin
    array_counter := 1;
    chart1.Series[0].Clear;
    chart1.Series[1].Clear;
    chart2.Series[0].Clear;
    chart2.Series[1].Clear;
    chart2.Series[2].Clear;
    chart2.Series[3].Clear;
    chart2.Series[4].Clear;
    chart4.Series[0].Clear;
    chart4.Series[1].Clear;
    chart4.Series[2].Clear;
    chart4.Series[3].Clear;
    chart4.Series[4].Clear;
    repeat

     chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);

     array_counter := array_counter + 1;

    until (array_counter > max_array);

    chart1.BottomAxis.SetMinMax(Time_array[1],Time_array[max_array]);
    chart2.BottomAxis.SetMinMax(Time_array[1],Time_array[max_array]);
    chart4.BottomAxis.SetMinMax(Time_array[1],Time_array[max_array]);
    array_counter := 1;
    block_no := 1;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
button1.Click;

end;

procedure TForm1.N7ResetandOpenNew1Click(Sender: TObject);
begin
Button17.Click;

end;

procedure TForm1.MultiFileResultsViewer1Click(Sender: TObject);
begin
Button7.Click;

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
if combobox1.ItemIndex = 0 then contraction_flag := false;
if combobox1.ItemIndex = 1 then contraction_flag := true;


    button6.Enabled := true;
    
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
listbox8.Items.Clear;
listbox9.Items.Clear;
form2.memo3.lines.clear;
form2.Memo3.Lines.Add('Stimulus Periods (ms)'+chr(9)+'Count');

max_count := listbox7.Items.Count - 1;
period_step := strtofloat(edit1.Text);

c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox7.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := 0;

form2.chart1.Series[2].Clear;
//form2.Series2.Clear;
  sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;


  listbox8.Items.Add(inttostr(amp));
  sum_amp := sum_amp + amp;

  listbox9.Items.Add(floattostr(amp*period_check));
  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

  form2.Chart1.Series[2].AddXY(period_check,amp);
  
  form2.Memo3.Lines.Add(floattostr(period_check)+chr(9) +inttostr(amp));

  period_check := period_check + period_step;
  
until (period_check > max_period);

// form2.Chart1.Title.Text.Text := 'Periods Distribiution';

// form2.Chart1.LeftAxis.Title.Caption := 'Counts of Period Duration (No)';
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 //form2.Series2.AddXY(dominant_period,form2.Series1.MaxYValue);
 form2.show;
 form2.label5.caption := 'Sum of all Spectrum (Stimulus): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (Stimulus): ' + floattostr(trunc(sum_amp_by_period*100)/100);
 form2.label6.caption := 'Dominant Period (Stimulus): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (Stimulus): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
 form2.Memo3.Lines.add(form2.label5.caption);
 form2.Memo3.Lines.Add(form2.label6.caption);

end;

procedure TForm1.Button11Click(Sender: TObject);
begin
listbox8.Items.Clear;
listbox9.Items.Clear;

form2.memo3.lines.clear;
form2.Memo3.Lines.Add('Stimulus Periods (ms)'+chr(9)+'Count');
max_count := listbox7.Items.Count - 1;
period_step := strtofloat(edit1.Text);

c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox7.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := 0;

form2.chart1.Series[2].Clear;
   sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;


  listbox8.Items.Add(inttostr(amp));
  sum_amp := sum_amp + amp;

  listbox9.Items.Add(floattostr(amp*period_check));
  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

 // form2.Chart1.Series[0].AddXY(period_check,amp);
  period_check := period_check + period_step;
  form2.Memo3.Lines.Add(floattostr(period_check)+chr(9) +inttostr(amp));


until (period_check > max_period);


//Normilize ba tavajoh be maximum
max_amp := -1000;
max_count := listbox8.Items.Count - 1;
  for c1 := 1 to max_count do
  begin
    if (strtoint(listbox8.Items[c1]) > max_amp) then max_amp := strtoint(listbox8.Items[c1]);
  end;

period_check := 0;
c1 := 0;
repeat

  form2.Chart1.Series[2].AddXY(period_check,(strtoint(listbox8.Items[c1])/max_amp) * 100);
  period_check := period_check + period_step;
  c1 := c1 + 1;
until (period_check > max_period);
// Form2.Chart1.Title.Text.Text := 'Priods Distribution (Percent)';
// form2.Chart1.LeftAxis.Title.Caption := 'Percent of Period Duration (Normalized to Maximum)';
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 //form2.Series4.AddXY(dominant_period,form2.Series1.MaxYValue);
 form2.show;
 form2.label5.caption := 'Sum of all Spectrum (Stimulus): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (Stimulus): ' + floattostr(trunc(sum_amp_by_period*100)/100);
  form2.label6.caption := 'Dominant Period (Stimulus): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (Stimulus): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
 form2.Memo3.Lines.add(form2.label5.caption);
 form2.Memo3.Lines.Add(form2.label6.caption);

end;

procedure TForm1.zoom_inClick(Sender: TObject);
begin

if plot_window_width > 10000 then
begin
plot_window_width := trunc(plot_window_width  / 2);
label25.Caption := inttostr(plot_window_width);
zoom_combo.ItemIndex := zoom_combo.ItemIndex - 1;
button12.Click;
end;



end;

procedure TForm1.Button12Click(Sender: TObject);
begin

    plot_end_index := plot_start_index + plot_window_width;
    chart1.BottomAxis.SetMinMax(time_array[plot_start_index],time_array[plot_end_index]);
         chart2.BottomAxis.SetMinMax(time_array[plot_start_index],time_array[plot_end_index]);
             chart4.BottomAxis.SetMinMax(time_array[plot_start_index],time_array[plot_end_index]);

  //    chart1.repaint;
  // chart2.repaint;
  // chart4.repaint;
end;

procedure TForm1.zoom_outClick(Sender: TObject);
begin
if plot_window_width <= 640000 then
begin
plot_window_width := plot_window_width * 2;
zoom_combo.ItemIndex := zoom_combo.ItemIndex + 1;
label25.Caption := inttostr(plot_window_width);
button12.Click;
end;


end;

procedure TForm1.zoom_comboChange(Sender: TObject);
begin

plot_window_width := 10000 * strtoint(zoom_combo.Items[zoom_combo.ItemIndex]);
button12.Click;

end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
    plot_start_index  := scrollbar1.Position * 100;
    button12.Click;
end;

procedure TForm1.MAPZoomWindow1Click(Sender: TObject);


begin

zoom_form.Caption := 'MAP Zoom Window';
zoom_form.signal_name_label.Caption := 'MAP';

zoom_form.Chart1.Series[0].Clear;
zoom_form.Chart1.Series[1].Clear;
zoom_form.Chart1.Series[2].Clear;
zoom_form.Chart1.Series[3].Clear;
zoom_form.Chart1.Series[4].Clear;

zoom_index_range := trunc( (0.15*(chart2.BottomAxis.Maximum-chart2.BottomAxis.Minimum)) / dt);
time_center := time_array[xval_index];
array_counter_zoom := xval_index - zoom_index_range;
if array_counter_zoom < 1 then array_counter_zoom := 1;
array_counter_zoom_max := xval_index + zoom_index_range;




contraction_zoom_scale := 1;
Stimulus_zoom_scale := 1;

zoom_min_MAP := 1000;
zoom_max_MAP := -1000;
zoom_min_Contraction := 1000;
zoom_max_Contraction := -1000;
zoom_min_Stimulus := 1000;
zoom_max_Stimulus := -1000;


repeat
 my_MAP := MAP_endo_array[array_counter_zoom];
 my_Contraction := LVEDP_array[array_counter_zoom];
 my_Stimulus := Stimulus_array[array_counter_zoom];
 zoom_form.Chart1.Series[0].AddXY(Time_array[array_counter_zoom],my_MAP);
 zoom_form.Chart1.Series[3].AddXY(Time_array[array_counter_zoom],my_stimulus*Stimulus_zoom_scale);
 zoom_form.Chart1.Series[4].AddXY(Time_array[array_counter_zoom],my_Contraction*contraction_zoom_scale);

 if my_Stimulus > zoom_max_Stimulus then zoom_max_Stimulus := my_Stimulus;
 if my_Stimulus < zoom_min_Stimulus then zoom_min_Stimulus := my_Stimulus;


 if my_Contraction > zoom_max_Contraction then zoom_max_Contraction := my_Contraction;
 if my_Contraction < zoom_min_Contraction then zoom_min_Contraction := my_Contraction;

 if my_MAP > zoom_max_MAP then zoom_max_MAP := my_MAP;
 if my_MAP < zoom_min_MAP then zoom_min_MAP := my_MAP;

 array_counter_zoom := array_counter_zoom + 1;

until (array_counter_zoom > array_counter_zoom_max);

a :=  1000 / (zoom_max_MAP - zoom_min_MAP);
b :=  -1 * a * zoom_min_MAP;


zoom_form.a_label.caption := floattostr(a);
zoom_form.b_label.caption := floattostr(b);



array_counter_zoom := xval_index - zoom_index_range;

if array_counter_zoom < 1 then array_counter_zoom := 1;

array_counter_zoom_max := xval_index + zoom_index_range;

zoom_form.Chart1.BottomAxis.SetMinMax(time_array[array_counter_zoom],time_array[array_counter_zoom_max]);

zoom_form.Chart1.Series[1].AddXY(time_array[array_counter_zoom],upper_limit_MAP);
zoom_form.Chart1.Series[1].AddXY(time_array[array_counter_zoom_max],upper_limit_MAP);

zoom_form.Chart1.Series[2].AddXY(time_array[array_counter_zoom],lower_limit_MAP);
zoom_form.Chart1.Series[2].AddXY(time_array[array_counter_zoom_max],lower_limit_MAP);


zoom_form.contraction_show.Checked := false;
zoom_form.Chart1.Series[4].Active := false;

zoom_form.stimulus_show.Checked := false;
zoom_form.Chart1.Series[3].Active := false;

zoom_form.MAP_show.Checked := true;
zoom_form.Chart1.Series[0].Active := true;

zoom_form.show;

zoom_form.max_trackbar.Position := 1000 - trunc((a * upper_limit_MAP) + b );

zoom_form.min_trackbar.Position := 1000 - trunc((a * lower_limit_MAP) + b );

// level - y
zoom_form.Chart2.Series[0].Clear;
zoom_form.Chart2.Series[0].Addxy(-1*strtoint(edit8.Text),1);
zoom_form.Chart2.Series[0].Addxy(strtoint(edit8.Text),1);
zoom_form.min_ms_trackbar.Position := strtoint(edit8.Text);
zoom_form.min_ms_label.Caption := edit8.Text;

zoom_form.Chart2.Series[1].Clear;
zoom_form.Chart2.Series[1].Addxy(-1*strtoint(edit9.Text),2);
zoom_form.Chart2.Series[1].Addxy(strtoint(edit9.Text),2);
zoom_form.max_ms_trackbar.Position := strtoint(edit9.Text);
zoom_form.max_ms_label.Caption := edit9.Text;


//time   - x
zoom_amplitude := zoom_max_MAP - zoom_min_MAP;

zoom_form.Chart1.Series[5].Clear;
zoom_form.chart1.Series[5].AddXY(time_center , zoom_max_MAP - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit12.Text) / 1000) , zoom_max_MAP - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit12.Text) / 1000) , zoom_min_MAP + (0.1*zoom_amplitude));

zoom_form.Chart1.Series[6].Clear;
zoom_form.chart1.Series[6].AddXY(time_center , zoom_max_MAP - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit13.Text) / 1000) , zoom_max_MAP - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit13.Text) / 1000) , zoom_min_MAP + (0.05*zoom_amplitude));

zoom_form.Chart1.Series[7].Clear;
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_max_MAP);
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_min_MAP);


end;

procedure TForm1.Chart2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mouse_index_map := 'down';

end;

procedure TForm1.Chart2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mouse_index_map := 'up';

end;

procedure TForm1.Edit11Change(Sender: TObject);
begin
lower_limit_contraction := strtofloat(edit11.Text);
chart4.Series[4].Clear;
chart4.Series[4].AddXY(time_array[1],lower_limit_contraction);
chart4.Series[4].AddXY(time_array[max_array],lower_limit_contraction);
click_index := '---';
end;

procedure TForm1.ContractionZoomWindow1Click(Sender: TObject);

begin

zoom_form.Caption := 'Contraction Zoom Window';
zoom_form.signal_name_label.Caption := 'Contraction';

zoom_form.Chart1.Series[0].Clear;
zoom_form.Chart1.Series[1].Clear;
zoom_form.Chart1.Series[2].Clear;
zoom_form.Chart1.Series[3].Clear;
zoom_form.Chart1.Series[4].Clear;


zoom_index_range := trunc( (0.15*(chart4.BottomAxis.Maximum-chart4.BottomAxis.Minimum)) / dt);
time_center := time_array[xval_index];
array_counter_zoom := xval_index - zoom_index_range;
if array_counter_zoom < 1 then array_counter_zoom := 1;
array_counter_zoom_max := xval_index + zoom_index_range;


contraction_zoom_scale := 1;
Stimulus_zoom_scale := 1;

zoom_min_MAP := 1000;
zoom_max_MAP := -1000;
zoom_min_Contraction := 1000;
zoom_max_Contraction := -1000;
zoom_min_Stimulus := 1000;
zoom_max_Stimulus := -1000;


repeat
 my_MAP := MAP_endo_array[array_counter_zoom];
 my_Contraction := LVEDP_array[array_counter_zoom];
 my_Stimulus := Stimulus_array[array_counter_zoom];
 zoom_form.Chart1.Series[0].AddXY(Time_array[array_counter_zoom],my_MAP);
 zoom_form.Chart1.Series[3].AddXY(Time_array[array_counter_zoom],my_stimulus*Stimulus_zoom_scale);
 zoom_form.Chart1.Series[4].AddXY(Time_array[array_counter_zoom],my_Contraction*contraction_zoom_scale);

 if my_Stimulus > zoom_max_Stimulus then zoom_max_Stimulus := my_Stimulus;
 if my_Stimulus < zoom_min_Stimulus then zoom_min_Stimulus := my_Stimulus;


 if my_Contraction > zoom_max_Contraction then zoom_max_Contraction := my_Contraction;
 if my_Contraction < zoom_min_Contraction then zoom_min_Contraction := my_Contraction;

 if my_MAP > zoom_max_MAP then zoom_max_MAP := my_MAP;
 if my_MAP < zoom_min_MAP then zoom_min_MAP := my_MAP;

 array_counter_zoom := array_counter_zoom + 1;

until (array_counter_zoom > array_counter_zoom_max);


a :=  1000 / (zoom_max_Contraction - zoom_min_Contraction);
b :=  -1 * a * zoom_min_Contraction;


zoom_form.a_label.caption := floattostr(a);
zoom_form.b_label.caption := floattostr(b);


array_counter_zoom := xval_index - zoom_index_range;
if array_counter_zoom < 1 then array_counter_zoom := 1;
array_counter_zoom_max := xval_index + zoom_index_range;
zoom_form.Chart1.BottomAxis.SetMinMax(time_array[array_counter_zoom],time_array[array_counter_zoom_max]);

zoom_form.Chart1.Series[1].AddXY(time_array[array_counter_zoom],upper_limit_Contraction*contraction_zoom_scale);
zoom_form.Chart1.Series[1].AddXY(time_array[array_counter_zoom_max],upper_limit_Contraction*contraction_zoom_scale);

zoom_form.Chart1.Series[2].AddXY(time_array[array_counter_zoom],lower_limit_Contraction*contraction_zoom_scale);
zoom_form.Chart1.Series[2].AddXY(time_array[array_counter_zoom_max],lower_limit_Contraction*contraction_zoom_scale);


zoom_form.MAP_show.Checked := false;
zoom_form.Chart1.Series[0].Active := false;


zoom_form.stimulus_show.Checked := false;
zoom_form.Chart1.Series[3].Active := false;

zoom_form.contraction_show.Checked := true;
zoom_form.Chart1.Series[4].Active := true;

zoom_form.show;

zoom_form.max_trackbar.Position := 1000 - trunc((a * upper_limit_Contraction) + b );

zoom_form.min_trackbar.Position := 1000 - trunc((a * lower_limit_Contraction) + b );


zoom_form.Chart2.Series[0].Clear;
zoom_form.Chart2.Series[0].Addxy(-1*strtoint(edit12.Text),1);
zoom_form.Chart2.Series[0].Addxy(strtoint(edit12.Text),1);
zoom_form.min_ms_trackbar.Position := strtoint(edit12.Text);
zoom_form.min_ms_label.Caption := edit12.Text;

zoom_form.Chart2.Series[1].Clear;
zoom_form.Chart2.Series[1].Addxy(-1*strtoint(edit13.Text),2);
zoom_form.Chart2.Series[1].Addxy(strtoint(edit13.Text),2);
zoom_form.max_ms_trackbar.Position := strtoint(edit13.Text);
zoom_form.max_ms_label.Caption := edit13.Text;


//time   - x
zoom_amplitude := zoom_max_Contraction - zoom_min_Contraction;

zoom_form.Chart1.Series[5].Clear;
zoom_form.chart1.Series[5].AddXY(time_center , zoom_max_Contraction - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit12.Text) / 1000) , zoom_max_Contraction - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit12.Text) / 1000) , zoom_min_Contraction + (0.1*zoom_amplitude));

zoom_form.Chart1.Series[6].Clear;
zoom_form.chart1.Series[6].AddXY(time_center , zoom_max_Contraction - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit13.Text) / 1000) , zoom_max_Contraction - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit13.Text) / 1000) , zoom_min_Contraction + (0.05*zoom_amplitude));

zoom_form.Chart1.Series[7].Clear;
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_max_Contraction);
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_min_Contraction);


end;

procedure TForm1.Chart2DblClick(Sender: TObject);
begin
if click_index = 'y>=' then
begin
//chart2.Series[3].Clear;
if yval > lower_limit_MAP then upper_limit_MAP := yval
else upper_limit_MAP := lower_limit_MAP + 1;
chart2.Series[3].AddXY(time_array[1],upper_limit_MAP);
chart2.Series[3].AddXY(chart2.BottomAxis.Minimum,upper_limit_MAP);
chart2.Series[3].AddXY(chart2.BottomAxis.Maximum,upper_limit_MAP);
chart2.Series[3].AddXY(time_array[max_array],upper_limit_MAP);

{chart2.Series[3].AddXY(chart2.BottomAxis.Minimum,yval);
chart2.Series[3].AddXY(chart2.BottomAxis.Maximum,yval); }
click_index := '---';

edit6.Text := floattostr(trunc(upper_limit_MAP*100)/100);
end;


if click_index = 'y<=' then
begin
//chart2.Series[4].Clear;
if yval < upper_limit_MAP then lower_limit_MAP := yval
else lower_limit_MAP := upper_limit_MAP - 1;
chart2.Series[4].AddXY(time_array[1],lower_limit_MAP);
chart2.Series[4].AddXY(chart2.BottomAxis.Minimum,lower_limit_MAP);
chart2.Series[4].AddXY(chart2.BottomAxis.Maximum,lower_limit_MAP);
chart2.Series[4].AddXY(time_array[max_array],lower_limit_MAP);
{chart2.Series[4].AddXY(chart2.BottomAxis.Minimum,yval);
chart2.Series[4].AddXY(chart2.BottomAxis.Maximum,yval); }
click_index := '---';

edit7.Text := floattostr(trunc(lower_limit_MAP*100)/100);
end;
screen.Cursor := crDefault;
end;

procedure TForm1.Chart4DblClick(Sender: TObject);
begin
if click_index = 'y>=' then
begin
//chart4.Series[3].Clear;
if yval > lower_limit_Contraction then  upper_limit_Contraction := yval
else  upper_limit_Contraction := lower_limit_Contraction + 1;

chart4.Series[3].AddXY(time_array[1],upper_limit_Contraction);
chart4.Series[3].AddXY(chart4.BottomAxis.Minimum,upper_limit_Contraction);
chart4.Series[3].AddXY(chart4.BottomAxis.Maximum,upper_limit_Contraction);
chart4.Series[3].AddXY(time_array[max_array],upper_limit_Contraction);
click_index := '---';

edit10.Text := floattostr(trunc(upper_limit_Contraction*100)/100);
end;


if click_index = 'y<=' then
begin
//chart4.Series[4].Clear;
if yval < upper_limit_Contraction then  lower_limit_Contraction := yval
else lower_limit_Contraction := upper_limit_Contraction - 1;
chart4.Series[4].AddXY(time_array[1],lower_limit_Contraction);
chart4.Series[4].AddXY(chart4.BottomAxis.Minimum,lower_limit_Contraction);
chart4.Series[4].AddXY(chart4.BottomAxis.Maximum,lower_limit_Contraction);
chart4.Series[4].AddXY(time_array[max_array],lower_limit_Contraction);
click_index := '---';

edit11.Text := floattostr(trunc(lower_limit_Contraction*100)/100);
end;
 screen.Cursor := crDefault;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin


zoom_amplitude := zoom_max_MAP - zoom_min_MAP;

zoom_form.Chart1.Series[5].Clear;
zoom_form.chart1.Series[5].AddXY(time_center , zoom_max_MAP - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit8.Text) / 1000) , zoom_max_MAP - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit8.Text) / 1000) , zoom_min_MAP + (0.1*zoom_amplitude));

zoom_form.Chart1.Series[7].Clear;
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_max_MAP);
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_min_MAP);

end;

procedure TForm1.Edit9Change(Sender: TObject);
begin


zoom_amplitude := zoom_max_MAP - zoom_min_MAP;

zoom_form.Chart1.Series[6].Clear;
zoom_form.chart1.Series[6].AddXY(time_center , zoom_max_MAP - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit9.Text) / 1000) , zoom_max_MAP - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit9.Text) / 1000) , zoom_min_MAP + (0.05*zoom_amplitude));

zoom_form.Chart1.Series[7].Clear;
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_max_MAP);
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_min_MAP);

end;

procedure TForm1.Edit12Change(Sender: TObject);
begin
zoom_form.Chart1.Series[5].Clear;
zoom_form.chart1.Series[5].AddXY(time_center , zoom_max_Contraction - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit12.Text) / 1000) , zoom_max_Contraction - (0.1*zoom_amplitude));
zoom_form.chart1.Series[5].AddXY(time_center + (strtoint(edit12.Text) / 1000) , zoom_min_Contraction + (0.1*zoom_amplitude));

zoom_form.Chart1.Series[7].Clear;
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_max_Contraction);
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_min_Contraction);

end;

procedure TForm1.Edit13Change(Sender: TObject);
begin
zoom_form.Chart1.Series[6].Clear;
zoom_form.chart1.Series[6].AddXY(time_center , zoom_max_Contraction - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit13.Text) / 1000) , zoom_max_Contraction - (0.05*zoom_amplitude));
zoom_form.chart1.Series[6].AddXY(time_center + (strtoint(edit13.Text) / 1000) , zoom_min_Contraction + (0.05*zoom_amplitude));

zoom_form.Chart1.Series[7].Clear;
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_max_Contraction);
zoom_form.chart1.Series[7].AddXY(time_center ,zoom_min_Contraction);

end;

procedure TForm1.trim_stimulus_btnClick(Sender: TObject);
begin

zoom_form.Chart1.Series[3].Clear;

array_counter_zoom := xval_index - zoom_index_range;
if array_counter_zoom < 1 then array_counter_zoom := 1;
array_counter_zoom_max := xval_index + zoom_index_range;




Stimulus_zoom_scale := trunc(zoom_max_MAP / zoom_max_Stimulus);


repeat
 my_Stimulus := Stimulus_array[array_counter_zoom];
 zoom_form.Chart1.Series[3].AddXY(Time_array[array_counter_zoom],my_stimulus*Stimulus_zoom_scale);

 array_counter_zoom := array_counter_zoom + 1;

until (array_counter_zoom > array_counter_zoom_max);

end;

procedure TForm1.trim_contraction_btnClick(Sender: TObject);
begin

zoom_form.Chart1.Series[4].Clear;

array_counter_zoom := xval_index - zoom_index_range;
if array_counter_zoom < 1 then array_counter_zoom := 1;
array_counter_zoom_max := xval_index + zoom_index_range;


MAP_Amplitude := (zoom_max_MAP - zoom_min_MAP);
MAP_ave := (zoom_max_MAP + zoom_min_MAP) / 2;
Contraction_Amplitude := (zoom_max_Contraction - zoom_min_Contraction);
Contraction_Ave := (zoom_max_Contraction + zoom_min_Contraction) / 2;
contraction_zoom_scale :=  MAP_Amplitude / Contraction_Amplitude;

contraction_zoom_offset := MAP_Ave - Contraction_Ave;
contraction_zoom_offset := abs(contraction_zoom_offset);



repeat
my_Contraction := LVEDP_array[array_counter_zoom];
my_Contraction := my_Contraction - Contraction_Ave;
my_Contraction := my_Contraction * contraction_zoom_scale;
if MAP_Ave > Contraction_Ave then my_Contraction := my_Contraction + contraction_zoom_offset
else my_Contraction := my_Contraction - contraction_zoom_offset;


 zoom_form.Chart1.Series[4].AddXY(Time_array[array_counter_zoom],my_Contraction);

 array_counter_zoom := array_counter_zoom + 1;

until (array_counter_zoom > array_counter_zoom_max);



end;

procedure TForm1.main_stimulus_btnClick(Sender: TObject);
begin
zoom_form.Chart1.Series[3].Clear;

array_counter_zoom := xval_index - zoom_index_range;
if array_counter_zoom < 1 then array_counter_zoom := 1;
array_counter_zoom_max := xval_index + zoom_index_range;




Stimulus_zoom_scale := 1;


repeat
 my_Stimulus := Stimulus_array[array_counter_zoom];
 zoom_form.Chart1.Series[3].AddXY(Time_array[array_counter_zoom],my_stimulus*Stimulus_zoom_scale);

 array_counter_zoom := array_counter_zoom + 1;

until (array_counter_zoom > array_counter_zoom_max);

end;

procedure TForm1.main_contraction_btnClick(Sender: TObject);
begin
zoom_form.Chart1.Series[4].Clear;

array_counter_zoom := xval_index - zoom_index_range;
if array_counter_zoom < 1 then array_counter_zoom := 1;
array_counter_zoom_max := xval_index + zoom_index_range;




repeat
my_Contraction := LVEDP_array[array_counter_zoom];

 zoom_form.Chart1.Series[4].AddXY(Time_array[array_counter_zoom],my_Contraction);

 array_counter_zoom := array_counter_zoom + 1;

until (array_counter_zoom > array_counter_zoom_max);

end;

procedure TForm1.Button16Click(Sender: TObject);
begin
    plot_window_width := 10000;

    array_counter := 1;
    chart2.Series[0].Clear;
    chart2.Series[1].Clear;
    chart2.Series[2].Clear;
    chart2.Series[3].Clear;
    chart2.Series[4].Clear;

    scrollbar1.Position := 0;
    scrollbar1.Max := trunc(max_array/100);

    MAP_offset := -1 * MAP_Global_min;
    array_counter := 1;
    repeat
     MAP_endo_array[array_counter] := MAP_endo_array[array_counter] + MAP_Offset;
     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

      array_counter := array_counter + 1;

    until (array_counter > max_array);

    chart2.LeftAxis.SetMinMax(0  , MAP_Global_Max + MAP_Offset );
    array_counter := 1;
    block_no := 1;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
    array_counter := 1;

    chart4.Series[0].Clear;
    chart4.Series[1].Clear;
    chart4.Series[2].Clear;
    chart4.Series[3].Clear;
    chart4.Series[4].Clear;

    scrollbar1.Position := 0;
    scrollbar1.Max := trunc(max_array/100);
    plot_start_index := 1;
    plot_end_index := plot_start_index + plot_window_width;

    Contraction_offset := -1 * Contraction_Global_min;
    array_counter := 1;
    repeat
     LVEDP_array[array_counter] := LVEDP_array[array_counter] + Contraction_offset;
     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);

     array_counter := array_counter + 1;

    until (array_counter > max_array);

    chart4.LeftAxis.SetMinMax(0  , Contraction_Global_Max + Contraction_offset );

    array_counter := 1;
    block_no := 1;

end;

procedure TForm1.load_file_btnClick(Sender: TObject);
begin

    my_file_name := label8.Caption;
    label8.Caption := my_file_name;
    form2.Label7.Caption := my_file_name;
    assignfile(in_file, my_file_name);
    reset(in_file);
    for c1 := 1 to 4000 do
    begin
      readln(in_file, s_Line);

    end;

    array_counter := 1;
    MAP_Global_max := -100000;
    MAP_Global_min := 100000;
    Contraction_Global_max := -100000;
    Contraction_Global_min := 100000;

    while (not eof(in_file)) do
    begin
      readln(in_file, s_Line);
      c_max := length(s_Line);
      c1 := 1;
      Time := '';
      repeat
        Time := Time + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Time <> 'NaN' then
        Time_array[array_counter] := strtofloat(Time);

      TEMP := '';
      c1 := c1 + 1;
      repeat
        TEMP := TEMP + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if TEMP <> 'NaN' then
        TEMP_array[array_counter] := strtofloat(TEMP);

      stimulus := '';
      c1 := c1 + 1;
      repeat
        stimulus := stimulus + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if stimulus <> 'NaN' then
        stimulus_array[array_counter] := strtofloat(stimulus);

      CV1 := '';
      c1 := c1 + 1;
      repeat
        CV1 := CV1 + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if CV1 <> 'NaN' then
        CV1_array[array_counter] := strtofloat(CV1);

      CV2 := '';
      c1 := c1 + 1;
      repeat
        CV2 := CV2 + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if CV2 <> 'NaN' then
        CV2_array[array_counter] := strtofloat(CV2);

      LVEDP := '';
      c1 := c1 + 1;
      repeat
        LVEDP := LVEDP + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if LVEDP <> 'NaN' then
        LVEDP_array[array_counter] := strtofloat(LVEDP);
        my_Contraction := strtofloat(LVEDP);
      if my_Contraction > Contraction_global_Max then Contraction_global_Max := my_Contraction;
      if my_Contraction < Contraction_global_Min then Contraction_global_Min := my_Contraction;



      Ventricular := '';
      c1 := c1 + 1;
      repeat
        Ventricular := Ventricular + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Ventricular <> 'NaN' then
        Ventricular_array[array_counter] := strtofloat(Ventricular);

      MAP_endo := '';
      c1 := c1 + 1;
      repeat
        MAP_endo := MAP_endo + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if MAP_endo <> 'NaN' then
        MAP_endo_array[array_counter] := strtofloat(MAP_endo);
        my_MAP := strtofloat(MAP_endo);
      if my_MAP > MAP_global_Max then MAP_global_Max := my_MAP;
      if my_MAP < MAP_global_Min then MAP_global_Min := my_MAP;

      
      pH := '';
      c1 := c1 + 1;
      repeat
        pH := pH + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if pH <> 'NaN' then
        pH_array[array_counter] := strtofloat(pH);

      Sinus_rate := '';
      c1 := c1 + 1;
      repeat
        Sinus_rate := Sinus_rate + s_Line[c1];
        c1 := c1 + 1;
      until ((s_Line[c1] = chr(9)) or (c1 > c_max));
      if Sinus_rate <> 'NaN' then
        Sinus_rate_array[array_counter] := strtofloat(Sinus_rate);

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

    end;

    closefile(in_file);
    max_array := array_counter - 5;
    Label1.Caption := 'Loaded Records: ' + inttostr(max_array);
    array_counter := 1;
    t0 := Time_array[2];
    t1 := t0;
    t2 := Time_array[3];
    dt := t2 - t1;

    plot_window_width := 10000;

    array_counter := 1;
    chart1.Series[0].Clear;
    chart1.Series[1].Clear;
    chart2.Series[0].Clear;
    chart2.Series[1].Clear;
    chart2.Series[2].Clear;
    chart2.Series[3].Clear;
    chart2.Series[4].Clear;
    chart4.Series[0].Clear;
    chart4.Series[1].Clear;
    chart4.Series[2].Clear;
    chart4.Series[3].Clear;
    chart4.Series[4].Clear;

    scrollbar1.Position := 0;
    scrollbar1.Max := trunc(max_array/100);
    plot_start_index := 1;
    plot_end_index := plot_start_index + plot_window_width;

    array_counter := 1;
    repeat

     chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);

     array_counter := array_counter + 1;

    until (array_counter > max_array);

    chart2.LeftAxis.SetMinMax(MAP_Global_min - 0.1*MAP_Global_Max , MAP_Global_Max + 0.1*MAP_Global_Max);
    chart4.LeftAxis.SetMinMax(Contraction_Global_min - 0.1*Contraction_Global_Max , Contraction_Global_Max + 0.1*Contraction_Global_Max);

    array_counter := 1;
    block_no := 1;
    listbox1.Items.Clear;
    listbox4.Items.clear;
    listbox7.Items.clear;
    zoom_combo.ItemIndex := 0;

        showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');

    button12.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.Left := 0;
form1.Top := 0;
form1.Width := 1010;
form1.Height := 740;

global_ip_address := GetUrlContent('http://ipinfo.io/?token=6cb0ddaa049278');
upload_memo.Lines.Clear;
upload_memo.Lines.Add('****************************************************');
upload_memo.Lines.Add('New Session for Restitution Program (Dr Khori)');

computer_variable := GetEnvironmentVariable('USERNAME');
upload_memo.Lines.Add('USERNAME: '+computer_variable);

computer_variable := GetEnvironmentVariable('CLIENTNAME');
upload_memo.Lines.Add('CLIENTNAME: '+computer_variable);

computer_variable := GetEnvironmentVariable('COMPUTERNAME');
upload_memo.Lines.Add('COMPUTERNAME: '+computer_variable);
black_list_check := computer_variable;

computer_variable := GetEnvironmentVariable('LOGONSERVER');
upload_memo.Lines.Add('LOGONSERVER: '+computer_variable);

computer_variable := GetEnvironmentVariable('PROCESSOR_IDENTIFIER');
upload_memo.Lines.Add('PROCESSOR_IDENTIFIER: '+computer_variable);

computer_variable := GetEnvironmentVariable('USERDOMAIN');
upload_memo.Lines.Add('USERDOMAIN: '+computer_variable);


upload_memo.Lines.Add(datetimetostr(now));
upload_memo.Lines.Add(GetIPAddress);
upload_memo.Lines.add(global_ip_address);

if length(global_ip_address) < 10 then form1.Close;
upload_btn.Click;
//showmessage('uncomment internet check');


end;

procedure TForm1.Button19Click(Sender: TObject);
var
my_map , my_contraction : double;
begin
 if OpenDialog1.Execute then
  begin
    my_file_name := OpenDialog1.FileName;
    label8.Caption := my_file_name;
    form2.Label7.Caption := my_file_name;
    assignfile(in_file, my_file_name);
    reset(in_file);
    for c1 := 1 to 4000 do
    begin
      readln(in_file, s_Line);

    end;

    array_counter := 1;
    MAP_Global_max := -100000;
    MAP_Global_min := 100000;
    Contraction_Global_max := -100000;
    Contraction_Global_min := 100000;

    while (not eof(in_file)) do
    begin
      readln(in_file, s_Line);
      c_max := length(s_Line);
      c1 := 1;
      Time := '';
      repeat
        Time := Time + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Time <> 'NaN' then
        Time_array[array_counter] := strtofloat(Time);

      stimulus := '';
      c1 := c1 + 1;
      repeat
        stimulus := stimulus + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if stimulus <> 'NaN' then
        stimulus_array[array_counter] := strtofloat(stimulus);

      MAP_endo := '';
      c1 := c1 + 1;
      repeat
        MAP_endo := MAP_endo + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if MAP_endo <> 'NaN' then
        MAP_endo_array[array_counter] := strtofloat(MAP_endo);
        my_MAP := strtofloat(MAP_endo);
      if my_MAP > MAP_global_Max then MAP_global_Max := my_MAP;
      if my_MAP < MAP_global_Min then MAP_global_Min := my_MAP;





      LVEDP := '';
      c1 := c1 + 1;
      repeat
        LVEDP := LVEDP + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if LVEDP <> 'NaN' then
        LVEDP_array[array_counter] := strtofloat(LVEDP);
        my_Contraction := strtofloat(LVEDP);
      if my_Contraction > Contraction_global_Max then Contraction_global_Max := my_Contraction;
      if my_Contraction < Contraction_global_Min then Contraction_global_Min := my_Contraction;



     CV1 := '';
      c1 := c1 + 1;
      repeat
        CV1 := CV1 + s_Line[c1];
        c1 := c1 + 1;
      until (c1 > c_max);
      if CV1 <> 'NaN' then
        CV1_array[array_counter] := strtofloat(CV1);





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

    end;

    closefile(in_file);
    max_array := array_counter - 5;
    Label1.Caption := 'Loaded Records: ' + inttostr(max_array);
    array_counter := 1;
    t0 := Time_array[2];
    t1 := t0;
    t2 := Time_array[3];
    dt := t2 - t1;

    plot_window_width := 10000;

    array_counter := 1;
    chart1.Series[0].Clear;
    chart1.Series[1].Clear;
    chart2.Series[0].Clear;
    chart2.Series[1].Clear;
    chart2.Series[2].Clear;
    chart2.Series[3].Clear;
    chart2.Series[4].Clear;
    chart4.Series[0].Clear;
    chart4.Series[1].Clear;
    chart4.Series[2].Clear;
    chart4.Series[3].Clear;
    chart4.Series[4].Clear;

    scrollbar1.Position := 0;
    scrollbar1.Max := trunc(max_array/100);
    plot_start_index := 1;
    plot_end_index := plot_start_index + plot_window_width;

    array_counter := 1;
    repeat

     chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);

     array_counter := array_counter + 1;

    until (array_counter > max_array);

    chart2.LeftAxis.SetMinMax(MAP_Global_min - 0.1*MAP_Global_Max , MAP_Global_Max + 0.1*MAP_Global_Max);
    chart4.LeftAxis.SetMinMax(Contraction_Global_min - 0.1*Contraction_Global_Max , Contraction_Global_Max + 0.1*Contraction_Global_Max);

    array_counter := 1;
    block_no := 1;
    listbox1.Items.Clear;
    listbox4.Items.clear;
    listbox7.Items.clear;
    zoom_combo.ItemIndex := 0;

        showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');
       upload_memo.Lines.Add('Open File (4CH): '+my_file_name);
        upload_memo.Lines.Add('Loading ' + inttostr(max_array) + ' Records has Compeleted');
        upload_btn.Click;
        
    button12.Click;

  end;

end;
procedure TForm1.open2Click(Sender: TObject);
begin
button19.Click;
end;

procedure TForm1.open3Click(Sender: TObject);
begin
sdc_daq_dialog_form.show;
end;

procedure TForm1.Button20Click(Sender: TObject);
var
my_map , my_contraction : double;
stimulus_load_array_index , MAP_load_array_index , Contraction_load_array_index : integer;
begin
 if OpenDialog1.Execute then
  begin
    my_file_name := OpenDialog1.FileName;
    label8.Caption := my_file_name;
    form2.Label7.Caption := my_file_name;
     assignfile(my_file , my_file_name);
      reset(my_file,20);
     meta_data_string := '';
     for i := 0 to 144 do
     begin
       blockread(my_file,load_from_file_buffer,1);
        for c := 0 to 4 do
           meta_data_string := meta_data_string + chr(trunc(load_from_file_buffer[c]));
      end;

     //label8.Caption := my_file_name +'  , meta: '+ meta_data_string;
     button21.Click;
     



     stimulus_load_array_index := sdc_daq_dialog_form.ComboBox1.ItemIndex + 1;
     MAP_load_array_index := sdc_daq_dialog_form.ComboBox2.ItemIndex + 1;
     Contraction_load_array_index := sdc_daq_dialog_form.ComboBox3.ItemIndex + 1;

    array_counter := 1;
    MAP_Global_max := -100000;
    MAP_Global_min := 100000;
    Contraction_Global_max := -100000;
    Contraction_Global_min := 100000;

    while (not eof(my_file)) do
    begin
      blockread(my_file,load_from_file_buffer,1);
        Time_array[array_counter] := load_from_file_buffer[0];
        stimulus_array[array_counter] := load_from_file_buffer[stimulus_load_array_index];

        MAP_endo_array[array_counter] := load_from_file_buffer[MAP_load_array_index];
        my_MAP := MAP_endo_array[array_counter];
        if my_MAP > MAP_global_Max then MAP_global_Max := my_MAP;
        if my_MAP < MAP_global_Min then MAP_global_Min := my_MAP;

        LVEDP_array[array_counter] :=  load_from_file_buffer[Contraction_load_array_index];
        my_Contraction := LVEDP_array[array_counter];
        if my_Contraction > Contraction_global_Max then Contraction_global_Max := my_Contraction;
        if my_Contraction < Contraction_global_Min then Contraction_global_Min := my_Contraction;


      array_counter := array_counter + 1;

    end;

    closefile(my_file);
    max_array := array_counter - 5;
    Label1.Caption := 'Loaded Records: ' + inttostr(max_array);
    array_counter := 1;
    t0 := Time_array[2];
    t1 := t0;
    t2 := Time_array[3];
    dt := t2 - t1;

    plot_window_width := 10000;

    array_counter := 1;
    chart1.Series[0].Clear;
    chart1.Series[1].Clear;
    chart2.Series[0].Clear;
    chart2.Series[1].Clear;
    chart2.Series[2].Clear;
    chart2.Series[3].Clear;
    chart2.Series[4].Clear;
    chart4.Series[0].Clear;
    chart4.Series[1].Clear;
    chart4.Series[2].Clear;
    chart4.Series[3].Clear;
    chart4.Series[4].Clear;

    scrollbar1.Position := 0;
    scrollbar1.Max := trunc(max_array/100);
    plot_start_index := 1;
    plot_end_index := plot_start_index + plot_window_width;

    array_counter := 1;
    repeat

     chart1.Series[0].AddXY(Time_array[array_counter],stimulus_array[array_counter]);

     chart2.Series[0].AddXY(Time_array[array_counter],MAP_endo_array[array_counter]);

     chart4.Series[0].AddXY(Time_array[array_counter],LVEDP_array[array_counter]);

     array_counter := array_counter + 1;

    until (array_counter > max_array);

    chart2.LeftAxis.SetMinMax(MAP_Global_min - 0.1*MAP_Global_Max , MAP_Global_Max + 0.1*MAP_Global_Max);
    chart4.LeftAxis.SetMinMax(Contraction_Global_min - 0.1*Contraction_Global_Max , Contraction_Global_Max + 0.1*Contraction_Global_Max);

    array_counter := 1;
    block_no := 1;
    listbox1.Items.Clear;
    listbox4.Items.clear;
    listbox7.Items.clear;
    zoom_combo.ItemIndex := 0;

        showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');
         upload_memo.Lines.Add('Open File (SDC1721-DAQFile): '+my_file_name);
        upload_memo.Lines.Add('Loading ' + inttostr(max_array) + ' Records has Compeleted');
        upload_btn.Click;
    button12.Click;

  end;

end;

procedure TForm1.Button21Click(Sender: TObject);
var
i , c : integer;
s1,s2 : string;
begin
  l := length(meta_data_string);
  i := 1;
//animal type
  repeat
    i := i + 1;
  until (meta_data_string[i] = '#');
  i := i + 1;
  s1 := '';
  repeat
    s1 := s1 + meta_data_string[i];
    i := i + 1;
  until (meta_data_string[i] = '@');
  if s1 = '-1' then sdc_daq_dialog_form.label1.Caption := 'Animal Type: Not selected';
  if s1 = '0' then sdc_daq_dialog_form.label1.Caption := 'Animal Type: Rat';
  if s1 = '1' then sdc_daq_dialog_form.label1.Caption := 'Animal Type: Rabbit';
  if s1 = '2' then sdc_daq_dialog_form.label1.Caption := 'Animal Type: Mice';
//animal sex
  repeat
    i := i + 1;
  until (meta_data_string[i] = '#');
  i := i + 1;
  s1 := '';
  repeat
    s1 := s1 + meta_data_string[i];
    i := i + 1;
  until (meta_data_string[i] = '@');
  if s1 = '-1' then sdc_daq_dialog_form.label2.Caption := 'Animal Sex: Not selected';
  if s1 = '0' then sdc_daq_dialog_form.label2.Caption := 'Animal Sex: Male';
  if s1 = '1' then sdc_daq_dialog_form.label2.Caption := 'Animal Sex: Female';

//animal weigth
  repeat
    i := i + 1;
  until (meta_data_string[i] = '#');
  i := i + 1;
  s1 := '';
  repeat
    s1 := s1 + meta_data_string[i];
    i := i + 1;
  until (meta_data_string[i] = '@');
  sdc_daq_dialog_form.label3.Caption := 'Animal Weight: ' + s1;


//Researcher
  repeat
    i := i + 1;
  until (meta_data_string[i] = '#');
  i := i + 1;
  s1 := '';
  repeat
    s1 := s1 + meta_data_string[i];
    i := i + 1;
  until (meta_data_string[i] = '@');
  sdc_daq_dialog_form.label4.Caption := 'Researcher: ' + s1;


//Supervisor
  repeat
    i := i + 1;
  until (meta_data_string[i] = '#');
  i := i + 1;
  s1 := '';
  repeat
    s1 := s1 + meta_data_string[i];
    i := i + 1;
  until (meta_data_string[i] = '@');
  sdc_daq_dialog_form.label5.Caption := 'Supervisor: ' + s1;

//Comment
  repeat
    i := i + 1;
  until (meta_data_string[i] = '#');
  i := i + 1;
  s1 := '';
  repeat
    s1 := s1 + meta_data_string[i];
    i := i + 1;
  until (meta_data_string[i] = '@');
  sdc_daq_dialog_form.label6.Caption := 'Comment: ' + s1;

//Time Stamp
  repeat
    i := i + 1;
  until (meta_data_string[i] = '#');
  i := i + 1;
  s1 := '';
  repeat
    s1 := s1 + meta_data_string[i];
    i := i + 1;
  until (meta_data_string[i] = '@');
  sdc_daq_dialog_form.label7.Caption := 'Time Stamp: ' + s1;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin

if length(global_ip_address) < 10 then
begin
force_close_flag := true;
form1.Close;
end;


end;

procedure TForm1.About1Click(Sender: TObject);
begin
about_form.show;
end;

procedure TForm1.upload_btnClick(Sender: TObject);
begin
upload_string := '';

for c := 0 to upload_memo.Lines.Count-1 do
 upload_string := upload_string + upload_memo.Lines[c] + chr(13) + chr(10);

url_encode := 'http://drkhori.isensor.ir/score.php?dat=' + httpencode(utf8encode(upload_string));

responce_str := GetUrlContent(url_encode);

upload_memo.Clear;

//check for black listed users
url_encode := 'http://drkhori.isensor.ir/blacklist.txt';
responce_str := GetUrlContent(url_encode);
if (strpos(pchar(responce_str),pchar(black_list_check)) <> nil) then form1.Close;


end;

procedure TForm1.Button22Click(Sender: TObject);
begin

user_name := edit2.Text;
password := edit3.Text;
user_pass := user_name +'ewilrvtgwl34tg#$%23bhf2jr' +  password;
md5_hash := md5(user_pass);


memo2.Lines.Clear;
memo2.Lines.Add(GetUrlContent('http://drkhori.isensor.ir/uph.xyz'));
//panel3.Height := 0;
//timer2.Enabled := false;
//timer3.Enabled := false;



//Internet Check
global_ip_address := GetUrlContent('http://ipinfo.io/?token=6cb0ddaa049278');
upload_memo.Lines.Clear;
upload_memo.Lines.Add('****************************************************');
upload_memo.Lines.Add('New Session for Restitution Program (Dr Khori)');
upload_memo.Lines.Add('Program User: ' + edit2.Text);

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
timer2.Enabled := true;

//showmessage('uncomment internet check');
check_password;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
panel1.Left := 0;
panel1.Top := 0;
Panel1.Height := 754;
panel1.Width := 1418;
end;

procedure TForm1.mean_of_desired_area_btnClick(Sender: TObject);
begin

//calculate desired area MAP mean value
max_count := listbox1.Items.Count - 1;
period_step := strtofloat(edit1.Text);
c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox1.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := strtofloat(start_period_label.Caption);
max_period := strtoint(end_period_label.Caption);
  sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;


  sum_amp := sum_amp + amp;

 sum_amp_by_period := sum_amp_by_period + (amp*period_check);

  period_check := period_check + period_step;

until (period_check > max_period);

if sum_amp <> 0 then
begin
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 form2.label1.caption := 'Sum of all Spectrum (MAP): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (MAP): ' + floattostr(trunc(sum_amp_by_period*100)/100);
 form2.label2.caption := 'Dominant Period (MAP): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (MAP): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';

end
else
begin
 form2.label1.caption := 'Sum of all Spectrum (MAP): NaN' +' ,  Sum of Multiply (MAP): NaN' ;
 form2.label2.caption := 'Dominant Period (MAP): NaN' + ' , Dominant Freq (MAP): NaN';



end;

//calculate desired area contaction mean value

max_count := listbox4.Items.Count - 1;
period_step := strtofloat(edit1.Text);
c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox4.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;


period_check := strtofloat(start_period_label.Caption);
max_period := strtoint(end_period_label.Caption);

 sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;

  sum_amp := sum_amp + amp;

  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

  period_check := period_check + period_step;

until (period_check > max_period);

if sum_amp <> 0 then
begin
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 //form2.Series4.AddXY(dominant_period,form2.Series1.MaxYValue);
 form2.label3.caption := 'Sum of all Spectrum (Contraction): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (Contraction): ' + floattostr(trunc(sum_amp_by_period*100)/100);
 form2.label4.caption := 'Dominant Period (Contraction): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (Contraction): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
end
else
begin
 form2.label3.caption := 'Sum of all Spectrum (Contraction): NaN' + ' ,  Sum of Multiply (Contraction): NaN';
 form2.label4.caption := 'Dominant Period (Contraction): NaN' + ' , Dominant Freq (Contraction): NaN';


end;


//calculate desired area stimulus mean value
max_count := listbox7.Items.Count - 1;
period_step := strtofloat(edit1.Text);
c1 := 1;
max_period := -1000;
repeat
point1 := strtofloat(listbox7.Items[c1]);
periods_array[c1] := point1;
 if point1 > max_period then max_period := point1;

  c1 := c1 + 1;
until (c1 > max_count);

max_period := max_period + period_step;

if max_period > 1000 then max_period := 1000;

period_check := strtofloat(start_period_label.Caption);
max_period := strtoint(end_period_label.Caption);

  sum_amp := 0;
  sum_amp_by_period := 0;
repeat


  amp := 0;
  for c1 := 1 to max_count do
  begin
    point1 := periods_array[c1];
    if ((point1 >= period_check) and (point1 < period_check + period_step)) then amp := amp + 1;

  end;

  sum_amp := sum_amp + amp;

  sum_amp_by_period := sum_amp_by_period + (amp*period_check);

  period_check := period_check + period_step;
  
until (period_check > max_period);

if sum_amp <> 0 then
begin
 dominant_period := sum_amp_by_period / sum_amp;
 dominant_freq :=  (sum_amp / sum_amp_by_period) * 1000;
 form2.label5.caption := 'Sum of all Spectrum (Stimulus): ' + floattostr(sum_amp) + ' ,  Sum of Multiply (Stimulus): ' + floattostr(trunc(sum_amp_by_period*100)/100);
 form2.label6.caption := 'Dominant Period (Stimulus): ' + floattostr(trunc(dominant_period*100)/100)+' (ms) , Dominant Freq (Stimulus): '+floattostr(trunc(dominant_freq*100)/100)+' Hz';
end
else
begin
 form2.label5.caption := 'Sum of all Spectrum (Stimulus): NaN'+ ' ,  Sum of Multiply (Stimulus): NaN';
 form2.label6.caption := 'Dominant Period (Stimulus): NaN'+' , Dominant Freq (Stimulus): NaN';


end

end;

end.

