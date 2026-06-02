unit Unit1;

interface
                      
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Gauges,
  Menus, Grids, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP , winsock , wininet , HTTPApp, ComCtrls, Buttons, jpeg, IdHashMessageDigest, idHash;

type
  float_array = array [0 .. 3000000] of real;
  float_array_small = array [0 .. 1000] of real;
  int64_array = array [0 .. 100000] of int64;
  int64_array_small = array [0 .. 1000] of int64;


  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    OpenDialog1: TOpenDialog;
    apd_di_chart: TChart;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series2: TPointSeries;
    Groupbox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Calculate_button: TButton;
    Edit2: TEdit;
    max_min_button: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    open_button: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    s1s2_odd_even_chart: TChart;
    Timer1: TTimer;
    Gauge1: TGauge;
    Series7: TLineSeries;
    Auto: TGroupBox;
    Auto_button: TButton;
    Edit5: TEdit;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Series9: TLineSeries;
    PopupMenu1: TPopupMenu;
    Start_Selection_Here: TMenuItem;
    Setuprizingslopehere1: TMenuItem;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    Label13: TLabel;
    small_load_checkbox: TCheckBox;
    Button1: TButton;
    CheckBox3: TCheckBox;
    apd_odd_even_chart: TChart;
    Label8: TLabel;
    Label15: TLabel;
    Series10: TLineSeries;
    CheckBox2: TCheckBox;
    apd_s1s2_chart: TChart;
    Series11: TPointSeries;
    Series12: TPointSeries;
    Series6: TPointSeries;
    Button6: TButton;
    di_odd_even_chart: TChart;
    Series13: TPointSeries;
    Panel1: TPanel;
    CheckBox4: TCheckBox;
    Label14: TLabel;
    apd_v1v2_chart: TChart;
    Series14: TPointSeries;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Series15: TLineSeries;
    Edit4: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Button2: TButton;
    Label20: TLabel;
    GroupBox3: TGroupBox;
    s1s2_label: TLabel;
    apdx_label: TLabel;
    di_label: TLabel;
    v1v2_label: TLabel;
    s1s2_index_label: TLabel;
    Series16: TLineSeries;
    Series17: TLineSeries;
    StringGrid1: TStringGrid;
    s2v2_label: TLabel;
    Series18: TLineSeries;
    apa_label: TLabel;
    SaveDialog1: TSaveDialog;
    Button4: TButton;
    CheckBox10: TCheckBox;
    Button5: TButton;
    Memo1: TMemo;
    Edit11: TEdit;
    Button8: TButton;
    Timer3: TTimer;
    click_on_chart_btn: TButton;
    click_on_chart_label: TLabel;
    Button10: TButton;
    Label21: TLabel;
    TrackBar1: TTrackBar;
    Label23: TLabel;
    Label22: TLabel;
    whole_channel_radio_button: TRadioButton;
    selection_radio_button: TRadioButton;
    Button3: TButton;
    End_Selection_Here: TMenuItem;
    Series8: TBarSeries;
    Series19: TBarSeries;
    zoom_in: TBitBtn;
    zoom_out: TBitBtn;
    ComboBox1: TComboBox;
    auto_base_checkbox: TCheckBox;
    Label24: TLabel;
    Auto_base_edit: TEdit;
    ListBox1: TListBox;
    apdx_combobox: TComboBox;
    Label10: TLabel;
    Edit3: TEdit;
    labchart_checkbox: TCheckBox;
    Label11: TLabel;
    Label25: TLabel;
    Button9: TButton;
    Panel2: TPanel;
    Label26: TLabel;
    ScrollBar1: TScrollBar;
    Panel3: TPanel;
    Image1: TImage;
    Edit6: TEdit;
    Edit7: TEdit;
    Button7: TButton;
    Memo2: TMemo;
    Timer2: TTimer;
    Button11: TButton;
    plot_on_zoom_form_btn: TButton;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    Series20: TLineSeries;
    area_label: TLabel;
    ProcessHereSingleS1S21: TMenuItem;
    scroll_left_btn: TButton;
    scroll_right_btn: TButton;
    zoom_chart: TChart;
    Label27: TLabel;
    Label28: TLabel;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    LineSeries7: TLineSeries;
    LineSeries8: TLineSeries;
    LineSeries9: TLineSeries;
    LineSeries10: TLineSeries;
    LineSeries11: TLineSeries;
    LineSeries12: TLineSeries;
    PopupMenu2: TPopupMenu;
    PlaceAPDDILineHere1: TMenuItem;
    PlaceV2Here1: TMenuItem;
    PlaceRMPMinimumHere1: TMenuItem;
    PlaceV1Here1: TMenuItem;
    Button14: TButton;
    replot_btn: TButton;
    Series21: TLineSeries;
    Label29: TLabel;
    GroupBox4: TGroupBox;
    s1s2_local_label: TLabel;
    procedure open_buttonClick(Sender: TObject);
    procedure Calculate_buttonClick(Sender: TObject);
    procedure max_min_buttonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Auto_buttonClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Setuprizingslopehere1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure apd_s1s2_chartMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure apd_v1v2_chartMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure click_on_chart_btnClick(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Start_Selection_HereClick(Sender: TObject);
    procedure End_Selection_HereClick(Sender: TObject);
    procedure whole_channel_radio_buttonClick(Sender: TObject);
    procedure zoom_inClick(Sender: TObject);
    procedure zoom_outClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure selection_radio_buttonClick(Sender: TObject);
    procedure apdx_comboboxChange(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure plot_on_zoom_form_btnClick(Sender: TObject);
    procedure ProcessHereSingleS1S21Click(Sender: TObject);
    procedure scroll_left_btnClick(Sender: TObject);
    procedure scroll_right_btnClick(Sender: TObject);
    procedure zoom_chartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PlaceV2Here1Click(Sender: TObject);
    procedure PlaceV1Here1Click(Sender: TObject);
    procedure PlaceRMPMinimumHere1Click(Sender: TObject);
    procedure PlaceAPDDILineHere1Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure replot_btnClick(Sender: TObject);
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
  stimulus_threshold: real;
  check_window_width: word;
  point1, point2, point3: real;
  time2: real;
  time2_s: string;
  s_Line: string;
  s1, s2, s3, s4: string;
  my_file_name: string;
  c1, c2, c3, c_max: Integer;
  array_counter, max_array: int64;
  stimulus_ar, Time_ar: float_array_small;
  stimulus_counter: Integer;
  stimulus1, stimulus2, dif, mean: real;
  Map_Endo_Max1, Map_Endo_Max2, Map_Endo_Max3, Map_Endo_Max4,
    Map_Endo_Max5: real;
  Map_Endo_Min1, Map_Endo_Min2, Map_Endo_Min3, Map_Endo_Min4: real;
  sampling_rate, Stop_Array: Integer;
  v1apd90_amplitude, crossing_line: real;
  v1apd90_1, v1apd90_2, v1apd90_3, v1apd90_mean: real;
  t1_index, t2_index: int64;
  start_counter, stop_counter: int64;
  s1v1_first_min, s1v1_global_min, s1v1_second_max, s1v1_first_max,
    s1v1_global_max: real;
  s1v1_start, s1v1_stop: real;
  max_index: int64;
  s1v1: real;

  s2v2_global_max, s2v2_second_min, s2v2_first_min: real;
  s2v2_start, s2v2_stop: real;

  s2v2: real;
  plot_min_array, plot_max_array, current_array: int64;

  t0: real;
  stimulus1_index, stimulus2_index: int64;

  s1v1_first_min_index, s1v1_second_max_index: int64;

  zoom_start_index, zoom_end_index: int64;

  s1v1_start_time, s1v1_stop_time, s1v1_start_value, s1v1_stop_value: real;
  s2v2_start_time, s2v2_stop_time, s2v2_start_value, s2v2_stop_value: real;
  stimulus1_pointer_time, stimulus1_pointer_value, stimulus2_pointer_time,
    stimulus2_pointer_value: real;

  s1_index, s_block1_index, s_block2_index: int64;

  tangent: real;
  map_endo_max1_index, map_endo_max2_index, map_endo_max3_index,
    map_endo_max4_index, map_endo_max5_index: int64;
  map_endo_min1_index, map_endo_min2_index, map_endo_min3_index,
    map_endo_min4_index: int64;

  map_endo_global_max, map_endo_global_min, mean_map_endo, my_mean: real;

  mean_max, mean_min: real;
  v2apd90_amplitude, V2APD90_1, DI: real;
  max1_apd90_v1: int64;
  s1s2: real;
  auto_flag, re_flag, compelet_flag: string;
  auto_counter: Integer;
  redraw_array_s2v2, redraw_array_apdx: int64_array_small;

  di_round, dif_round: real;

  zoomRectangle, scroll_rectangle: TRect;

  max1, min1, my_threshold, scale_stimulus: real;

  x1, y1, x2, y2, xc, yc: Integer;

  valueIndex, x_left_index, x_right_index: int64;
  start_data_index, stop_data_index, chart_max_index, click_data_index: int64;

  mean_index_length, first_array_counter, dif_index: int64;
  max_array_counter: int64;
  mean_block, max_block, min_block, block_index: real;
  higher_counter, lower_counter: word;
  m, y0, Y: real;

  Map_Endo_Min0: real;
  map_endo_min0_index: int64;
  data_count_lenght : int64;
  final_counter , data_counter : int64;

  min_MAP , max_MAP, mean_MAP , my_MAP : real;

  start_index , final_index : int64;
  uprizing_slope_threshold , slope : real;

  max_slope1_index : int64;

  MAP_Threshold : real;

  APDx_start, APDx_end , DI_Start, DI_end , ERP : real;
  APDx_start_index, APDx_end_index , DI_Start_index, DI_end_index : int64;
  apdx : real;
  APDx_Value : real;
      max_MAP_Segment , min_MAP_Segment : real;

      apdx_scale : real;

        min_time ,  max_time , time_window : real;

        max_global_array : int64;
        s_save_res : string;
        dt : double;
        final_counter_local : int64;

        di_threshold  , apdx_threshold : real;

        Di_Min , Di_Max : real;

         XVal , YVal : double;
         xval_index : int64;
         time_center : double;

         t1 ,t2 ,MAP1 , MAP2, delta_MAP , delta_t : double;

                 APDx_Start_MAP : double;
        APDx_start_MAP_index : int64;

            stimulus_scale , min_Stimulus , Max_Stimulus , my_Stimulus : double;

            Mean_Stimulus : double;
            s2_index : int64;
            s1s2_odd , s1s2_even : double;
            apdx_odd , apdx_even : double;
            di_odd , di_even : double;

      current_MAP_endo_Max_index , Last_MAP_endo_Max_index : int64;
      V1_index , V2_index : int64;
      V1V2 : double;
      t_end : double;
         APA : real;
         pre_APDx_start : real;
         pre_APDx_start_index : int64;
         pre_APDx : real;
         Tr ,Tf : real;
         
  //Base no calc
  S1S2_Array : float_array;
  S1S2_index : int64;
  show_base_flag , show_value_flag : boolean;
  max_difference : double;
  c : word;
  debug_flag : boolean;
  //table
  max_local_counter_table , local_counter_table : integer;
    string_grid_file : textfile;
    start_processing_index : int64;
    processed_no : word;
    x_cursor , y_cursor : integer;
    clicked_index : integer;
    forecast_window_width : integer;
    last_s1s2 : real;
    ave : real;
    auto_base_value : real;
     correction_to_labchart_factor : real;
     apdx_select : integer;
     min_s2v2 : real;
     RMP : real;
     rmp_index : int64;
     DI_calc : real;
     S1_time : real;
     table_click_index : boolean;


    //preprocess
    up_down_flag : boolean;
    same_count : integer;
    dif_s1s2 : real;
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


    //selection and zoom
    start_selection_index , end_selection_index : int64;
    delta_t_zoom : real;
    zoom_plot_array_counter , zoom_plot_array_counter_max : int64;

    //scroll
    time_div : real;
    file_delta_t : real;
    t_start_scroll , t_end_scroll : real;
     min_y , max_y : real;

    //area
    rmp_next_index : int64;
    rmp_next : real;
    sum , d_area , area_under_map : real;
    min_rmp , my_map1,my_map2 : real;
    Tr_pre : real;

    base_line_tangent , MAP_current_base : real;
        my_y1 , my_t1 : real;

    // Manual Calculation
    manual_apd_di_line_flag , manual_v2_flag , manual_v1_flag , manual_minimum_flag : boolean;
    manual_index : int64;
     XVal_zoom , YVal_zoom : real;

  xval_index_zoom : int64;


  //RePlot
  V2_index_array , rmp_index_array , APDx_end_index_array : int64_array;
  APDx_start_index_array , DI_start_index_array , S2_index_array : int64_array;
  S1_index_array , V1_index_array , rmp_next_index_array : int64_array;



  //local real time processor
  array_counter_local , s1_index_local , s2_index_local : int64;
  array_counter_local_min , array_counter_local_max : int64;
  s1s2_local : real;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit11;

{$R *.dfm}


procedure check_password;
begin
login_ok := false;
for c := 0 to form1.memo2.Lines.Count-1 do
  if md5_hash = form1.memo2.Lines[c] then login_ok := true;

if login_ok = true then
begin
form1.panel3.Height := 0;
form1.Panel3.Width := 0;
form1.timer2.Enabled := false;
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

procedure TForm1.open_buttonClick(Sender: TObject);
begin
timer3.Enabled := true;

  if OpenDialog1.Execute then
  begin
    my_file_name := OpenDialog1.FileName;
    label15.Caption := my_file_name;

    chart1.Series[0].Clear;
    chart1.Series[1].Clear;
    chart1.Series[2].Clear;
    chart1.Series[3].Clear;
    chart1.Series[4].Clear;
    chart1.Series[5].Clear;
    chart1.Series[7].Clear;
    chart1.Series[8].Clear;
    chart1.Series[9].Clear;
    chart1.Series[10].Clear;
    chart1.Series[11].Clear;
    chart1.Series[12].Clear;
    chart1.Series[13].Clear;
    chart1.Series[14].Clear;


    apd_di_chart.Series[0].Clear;
    //apd_di_chart.Series[1].Clear;
    apd_s1s2_chart.Series[0].Clear;
    apd_v1v2_chart.Series[0].Clear;
    s1s2_odd_even_chart.Series[0].Clear;
    apd_odd_even_chart.Series[0].Clear;
    //v1v2_odd_even_chart.Series[0].Clear;



    
    assignfile(in_file, my_file_name);
    reset(in_file);
    for c1 := 1 to 10 do
      readln(in_file, s_Line);

    array_counter := 1;



   s_save_res := my_file_name;

   if not small_load_checkbox.Checked then
   begin
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
    end //   if not small_load_checkbox then
    else
    begin
    while (array_counter < 50000) do
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
    
    end;  //   if not small_load_checkbox then

    closefile(in_file);
    max_array := array_counter;
    showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');
    Label1.Caption := 'Loaded Records: ' + inttostr(max_array);
    edit1.Text := inttostr(max_array);
    max_global_array := max_array - 4000;
    gauge1.MaxValue := trunc(max_global_array / 1000);
    gauge1.Progress := 0;
    array_counter := 1;
    processed_No := 1;
    
    t0 := Time_array[2];
    dt := Time_array[3] - Time_array[2];
    t_end := Time_array[max_global_array];
    //delta_t_zoom := 0.1 * (t_end-t0);
    delta_t_zoom := 3;
    time_div := delta_t_zoom;
    file_delta_t := t_end - t0;
    
    t_start_scroll := t0 + (scrollbar1.position / 100) * file_delta_t;
    t_end_scroll := t_start_scroll + delta_t_zoom;
    chart1.BottomAxis.SetMinMax(t_start_scroll , t_end_scroll);

    //Plot
    //    current_array := 10000;
    array_counter := 3;
    data_count_lenght := strtoint(edit1.Text);
    plot_max_array := array_counter + data_count_lenght;
    Chart1.Series[0].Clear;
   // Chart1.Series[5].Clear;

    repeat
      Chart1.Series[0].Addxy(Time_array[array_counter] ,MAP_endo_array[array_counter]);
    //  Chart1.Series[5].Addxy(Time_array[array_counter], Stimulus_array[array_counter]*100);

      array_counter := array_counter + 1;
    until (array_counter > plot_max_array);

  end;
end;

procedure TForm1.Calculate_buttonClick(Sender: TObject);
begin


  uprizing_slope_threshold := strtofloat(edit2.Text);

  apdx_select := strtoint(apdx_combobox.Items[apdx_combobox.ItemIndex]);
  stringgrid1.Cells[2,0] := 'APD' + inttostr(apdx_select);
  apdx_scale := apdx_select / 100;
  auto_base_value := strtofloat(auto_base_edit.Text) / 1000;

  start_processing_index := array_counter;
  //zoom_plot_array_counter := start_processing_index - 1500;
  //zoom_form.Label1.Caption := inttostr(zoom_plot_array_counter);
  correction_to_labchart_factor := 1;
  //
  {
  if labchart_checkbox.Checked then
  begin
   if apdx_select = 90 then correction_to_labchart_factor := 1.026;
   if apdx_select = 80 then correction_to_labchart_factor := 1.078;
   if apdx_select = 70 then correction_to_labchart_factor := 1.125;
   if apdx_select = 60 then correction_to_labchart_factor := 1.181;
   if apdx_select = 50 then correction_to_labchart_factor := 1.244;
   if apdx_select = 40 then correction_to_labchart_factor := 1.333;
   if apdx_select = 30 then correction_to_labchart_factor := 1.456;
   if apdx_select = 20 then correction_to_labchart_factor := 1.666;
   if apdx_select = 10 then correction_to_labchart_factor := 2.176;
  end;
  }


     //Calculate new local max and min
     // current_array := array_counter - trunc(time_window / dt);
      start_counter := array_counter;
      final_counter_local := start_counter + forecast_window_width; //search window in front of this signal for next signal processing
      array_counter := start_counter;
      min_MAP := 1000;
      max_MAP := -1000;

        repeat

             my_MAP:= MAP_endo_array[array_counter];

             if my_MAP > max_MAP then Max_MAP := my_MAP;

             if my_MAP < min_MAP then min_MAP := my_MAP;

            array_counter := array_counter + 1;
         until (array_counter > final_counter_local);

          mean_MAP := (max_MAP + min_MAP ) / 2;
          max_MAP_Segment := max_MAP;
          min_MAP_Segment := min_MAP;

         chart1.Series[4].Clear;
         chart1.Series[4].AddXY(Time_array[start_counter],mean_MAP);
         chart1.Series[4].AddXY(Time_array[final_counter_local],mean_MAP);


//Find This APD MAX
  array_counter := start_processing_index;
//find first rising and falling edge on MAP and mean MAP

    MAP_Threshold := mean_MAP;
    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] <= MAP_Threshold) and (MAP_endo_array[array_counter+1] > MAP_Threshold)) or (array_counter > start_processing_index + 4000));

    start_index := array_counter;
 //  chart1.Series[1].Clear;
 //  chart1.Series[1].AddXY(time_array[array_counter],MAP_endo_array[array_counter]);

    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] >= MAP_Threshold) and (MAP_endo_array[array_counter+1] < MAP_Threshold)) or (array_counter > start_processing_index + 4000));

    final_index := array_counter;
 //  chart1.Series[1].AddXY(time_array[array_counter],MAP_endo_array[array_counter]);

  // find Maximun in upper MAP
    max_MAP := -1000;
    array_counter := start_index;
    repeat

       my_MAP:= MAP_endo_array[array_counter];

       if my_MAP > max_MAP then
       begin
        Max_MAP := my_MAP;
        MAP_endo_Max2 := Max_MAP;
        MAP_endo_Max2_index := array_counter;
       end;

      array_counter := array_counter + 1;
    until (array_counter > final_index);

   label5.Caption := 'Max of MAP : ' + floattostr(MAP_endo_Max2);

    //current_MAP_endo_Max_index := MAP_endo_Max1_index;
    V2_index := MAP_endo_Max2_index;


    if manual_v2_flag then
    begin
     MAP_endo_Max2_index := manual_index;
     my_MAP:= MAP_endo_array[MAP_endo_Max2_index];
     Max_MAP := my_MAP;
     MAP_endo_Max2 := Max_MAP;
     V2_index := MAP_endo_Max2_index;

    end;

    V2_index_array[processed_No] := v2_index;

//Find this APD Min
//Find new Search backward to this apd max search window
    array_counter := start_index - 5;
    final_index := start_index; //new final index is past start index
    MAP_Threshold := mean_MAP;

    repeat
     array_counter := array_counter - 1;
    until ( ((MAP_endo_array[array_counter] <= MAP_Threshold) and (MAP_endo_array[array_counter-1] > MAP_Threshold)) or (array_counter < (start_index - 4000)));

    start_index := array_counter;


  // find Minimum in Lower MAP
    min_MAP := 1000;
    array_counter := start_index;
    repeat

       my_MAP:= MAP_endo_array[array_counter];

       if my_MAP < min_MAP then
       begin
        min_MAP := my_MAP;
        MAP_endo_Min1 := min_MAP;
        MAP_endo_Min1_index := array_counter;
       end;

      array_counter := array_counter + 1;
    until (array_counter > final_index);


    if manual_minimum_flag then
    begin
     MAP_endo_Min1_index := manual_index;
     my_MAP:= MAP_endo_array[MAP_endo_Min1_index];
     Max_MAP := my_MAP;
     MAP_endo_Min1 := Max_MAP;

    end;

     label6.Caption := 'Min of MAP : ' + floattostr(MAP_endo_Min1);


 //************************************************************************************************************************
    APDx_Value := MAP_endo_Max2 - (apdx_scale * (MAP_endo_Max2 - MAP_endo_Min1));
    if manual_apd_di_line_flag then
    begin
     APDx_Value := MAP_endo_array[manual_index];

    end;

    RMP := MAP_endo_Min1;
    rmp_index := MAP_endo_Min1_index;
    rmp_index_array[processed_no] := rmp_index;

    chart1.Series[8].Clear;
    chart1.Series[8].AddXY(time_array[MAP_endo_Min1_index],MAP_endo_array[MAP_endo_Min1_index]);
    chart1.Series[8].AddXY(time_array[V2_index],MAP_endo_array[v2_index]);

    APA := MAP_endo_array[V2_index] - MAP_endo_array[MAP_endo_Min1_index];

    label4.Caption := 'APDx : ' + floattostr(trunc(APDx_Value*100) / 100);
    MAP_Threshold := mean_MAP;

    //find APDx
    array_counter := V2_index;
    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] >= APDx_Value) and (MAP_endo_array[array_counter+1] < APDx_Value))  or (array_counter > start_processing_index + 4000));



    APDx_end_index := array_counter;
    


    if  APDx_end_index < 5 then APDx_end_index := 5;
    APDx_end := time_array[APDx_end_index];

    APDx_end_index_array[processed_no] := APDx_end_index;
//Bargast be aghab baraye apdx start
    array_counter := V2_index;

    repeat
     array_counter := array_counter - 1;
    until ( ((MAP_endo_array[array_counter] <= APDx_Value) and (MAP_endo_array[array_counter+1] > APDx_Value))  or (array_counter < (MAP_endo_Max1_index - 5000)));



    APDx_start_index := array_counter;
    if APDx_start_index < 5 then APDx_start_index := 5;
    APDx_start := time_array[APDx_start_index];

    APDx_start_index_array[processed_no] := APDx_start_index;

    DI_end_index := APDx_start_index;
    DI_end := APDx_Start;


    //Find DI Start
    repeat
     array_counter := array_counter - 1;
    until ( ((MAP_endo_array[array_counter] >= APDx_Value) and (MAP_endo_array[array_counter+1] < APDx_Value))  or (array_counter < (MAP_endo_Max1_index - 5000)));


    DI_start_index := array_counter;
    if DI_start_index < 5 then DI_start_index := 5;
    DI_start := time_array[DI_start_index];

    DI_start_index_array[processed_no] := DI_start_index;

    //Pre APDx Start
    array_counter := array_counter - 10;
    repeat
     array_counter := array_counter - 1;
    until ( ((MAP_endo_array[array_counter] <= APDx_Value) and (MAP_endo_array[array_counter+1] > APDx_Value))  or (array_counter < (MAP_endo_Max1_index - 5000)));


    pre_APDx_start_index := array_counter;

        
    if pre_APDx_start_index < 5 then pre_APDx_start_index := 5;
    pre_APDx_start := time_array[pre_APDx_start_index];

    pre_APDx := DI_start - pre_APDx_start;

    chart1.Series[2].Clear;
    chart1.Series[2].AddXY(time_array[pre_APDx_start_index],MAP_endo_array[pre_APDx_start_index]);
    chart1.Series[2].AddXY(time_array[DI_start_index],MAP_endo_array[DI_start_index]);
    chart1.Series[2].AddXY(time_array[APDx_start_index],MAP_endo_array[APDx_start_index]);
    chart1.Series[2].AddXY(time_array[APDx_end_index],MAP_endo_array[APDx_end_index]);

    chart1.Series[3].Clear;
    chart1.Series[3].AddXY(time_array[DI_start_index],MAP_endo_array[DI_start_index]);
    chart1.Series[3].AddXY(time_array[DI_end_index],MAP_endo_array[DI_end_index]);




    //Find S1-S2
    array_counter := V2_index;
    repeat
     array_counter := array_counter - 1;
     point1 := stimulus_array[array_counter];
     point2 := stimulus_array[array_counter-1];
    until ((point1 <= Mean_Stimulus) and (point2 > Mean_Stimulus) or (array_counter < 5));
    S2_index := array_counter;
     S2_index_array[processed_no] := S2_index;

    array_counter := array_counter - 5;
    max_MAP := -1000;
    repeat
     array_counter := array_counter - 1;
     point1 := stimulus_array[array_counter];
     point2 := stimulus_array[array_counter-1];



       my_MAP:= MAP_endo_array[array_counter];
       if my_MAP > max_MAP then
       begin
        Max_MAP := my_MAP;
        MAP_endo_Max1 := Max_MAP;
        MAP_endo_Max1_index := array_counter;
       end;

    until ((point1 <= Mean_Stimulus) and (point2 > Mean_Stimulus) or (array_counter < 5));
    S1_index := array_counter;
    S1_index_array[processed_no] := S1_index;
    S1_time := time_array[array_counter];

    V1_index := MAP_endo_Max1_index;
    if v1_index < 5 then v1_index := 5;
    V1_index_array[processed_no] := V1_index;

    if manual_v1_flag then
    begin
     MAP_endo_Max1_index := manual_index;
     my_MAP:= MAP_endo_array[MAP_endo_Max1_index];
     Max_MAP := my_MAP;
     MAP_endo_Max1 := Max_MAP;
     V1_index := MAP_endo_Max1_index;
    end;

    V1_index_array[processed_no] := V1_index;


    s1s2 := (time_array[S2_index] - time_array[S1_index]);
    s1s2_array[s1s2_index] := s1s2;
    if processed_No+1 >= stringgrid1.RowCount then s1s2_index := s1s2_index + 1;
    label20.Caption := inttostr(s1s2_index);

    //check for show values on charts and tables
    if debug_flag then
    begin
    debug_flag := checkbox10.Checked;

    end;

    show_value_flag := true;
    show_base_flag := checkbox2.Checked;

    if (show_base_flag = false) then
    begin
     show_value_flag := false;
     if ((abs(s1s2-last_s1s2)*1000 >= 1) and (abs(s1s2-auto_base_value)*1000 >= 1)) then show_value_flag := true;
     last_s1s2 := s1s2;
    end;
    // this routine show only one new s1s2 rather than its place
    {
    if show_base_flag = false then
    begin
     show_value_flag := false;
     c := 0;
     repeat
      max_difference := abs(s1s2 - s1s2_array[c]) * 1000;
      c := c + 1;
     until ((max_difference < 1) or (c > s1s2_index-2));
     if (c > s1s2_index-2) then show_value_flag := true;

    end;
    }

    if ((s1s2_odd = 0) and (s1s2_even = 0 )) then s1s2_odd := s1s2 * 1000
    else if ((s1s2_odd <> 0) and (s1s2_even = 0 )) then s1s2_even := s1s2 * 1000;

    if ((s1s2_odd <> 0) and (s1s2_even <> 0 )) then
    begin
    //if show_value_flag then s1s2_odd_even_chart.Series[0].AddXY(s1s2_odd,s1s2_even);
    s1s2_odd := 0;
    s1s2_even := 0;
    end;


    
    chart1.Series[6].Clear;
    chart1.Series[6].AddXY(time_array[S1_index] , Max_stimulus * stimulus_scale );
    chart1.Series[6].AddXY(time_array[S2_index] , Max_stimulus * stimulus_scale );


    DI := DI_end - DI_Start;
    APDx := APDx_end - APDx_start;
   // ERP := (DI + APDx) * 1000;
     ERP := (APDx) * 1000;

    Tr := time_array[MAP_endo_Max2_index] - APDx_start;
    Tf := APDx_end - time_array[MAP_endo_Max2_index];

    Tr_pre := time_array[V1_index] - pre_APDx_start;

   // Tr := Tr / APDx;
   // Tf := Tf / APDx;

   // Tr := trunc(tr * 1000)/10;
   // Tf := Trunc(tf * 1000)/10;

 //V1 V2 Recurssive
 //V1_index := Last_MAP_endo_Max_index;
 //V2_index := Current_MAP_endo_Max_index;
 chart1.Series[7].Clear;
 chart1.Series[7].AddXY(time_array[V1_index],MAP_endo_array[V1_index]);
 chart1.Series[7].AddXY(time_array[V2_index],MAP_endo_array[V2_index]);
 Last_MAP_endo_Max_index := Current_MAP_endo_Max_index;
 V1V2 := time_array[V2_index] - time_array[V1_index];

 //if not real_di_rbtn.Checked then DI := V1V2 - APDx;
 DI_calc := V1V2 - pre_APDx + (Tr_pre - Tr);

    // di_threshold := strtofloat(edit5.Text) / 1000;
     apdx_threshold := strtofloat(edit5.Text) / 1000;

     di_min := 10;
     di_max := 1000;


    if ((apdx_odd = 0) and (apdx_even = 0 )) then apdx_odd := apdx * 1000
    else if ((apdx_odd <> 0) and (apdx_even = 0 )) then apdx_even := apdx * 1000;
    if ((apdx_odd <> 0) and (apdx_even <> 0 )) then
    begin
    //if show_value_flag then apd_odd_even_chart.Series[0].AddXY(apdx_odd,apdx_even);
    apdx_odd := 0;
    apdx_even := 0;
    end;

    if ((di_odd = 0) and (di_even = 0 )) then di_odd := di * 1000
    else if ((di_odd <> 0) and (di_even = 0 )) then di_even := di * 1000;
    if ((di_odd <> 0) and (di_even <> 0 )) then
    begin
    //if show_value_flag then di_odd_even_chart.Series[0].AddXY(di_odd,di_even);
    di_odd := 0;
    di_even := 0;
    end;


    // if show_value_flag then
    // begin

     //if APDx > apdx_threshold then apd_di_chart.Series[0].AddXY(DI*1000,APDx*1000)
     //else apd_di_chart.Series[1].AddXY(DI*1000,APDx*1000);
    // apd_di_chart.Series[0].AddXY(DI*1000,APDx*1000);
    // end;



    // if show_value_flag then apd_s1s2_chart.Series[0].AddXY(S1S2*1000,APDx*1000);

    // if (V1V2*1000 < 1000)then apd_v1v2_chart.Series[0].AddXY(V1V2*1000,APDx*1000);
   {
    if erp < 1000 then
    begin

      chart3.Series[0].AddXY(time_array[DI_start_index],ERP);
      chart3.Series[0].AddXY(time_array[APDx_end_index],ERP);

    end;
   }

    label7.Caption := 'Array Counter : ' + inttostr(array_counter);
    gauge1.Progress := trunc(array_counter / 1000);


    //Area under MAP
    array_counter := APDx_end_index;
    rmp_next := 1000;
    repeat

       my_MAP:= MAP_endo_array[array_counter];

       if my_MAP < rmp_next then
       begin
        rmp_next := my_MAP;
        rmp_next_index := array_counter;
       end;

      array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] <= MAP_Threshold) and (MAP_endo_array[array_counter+1] > MAP_Threshold)) or (array_counter > start_processing_index + 4000));

    min_rmp := rmp;
    if rmp_next < min_rmp then min_rmp := rmp_next;

    rmp_next_index_array[processed_no] := rmp_next_index;

    chart1.Series[13].Clear;
    chart1.Series[13].AddXY(time_array[rmp_index],rmp);
    chart1.Series[13].AddXY(time_array[rmp_next_index],rmp_next);

    
    sum := 0;
    array_counter := rmp_index;
    final_index := rmp_next_index;
    base_line_tangent := (rmp_next - rmp) / (time_array[rmp_next_index] - time_array[rmp_index]);
    my_y1 := rmp;
    my_t1 := time_array[rmp_index];
    
    repeat

     MAP_current_base := base_line_tangent*( time_array[array_counter] - my_t1) + my_y1;
     my_MAP1 := MAP_endo_array[array_counter] - MAP_current_base;

     MAP_current_base := base_line_tangent*( time_array[array_counter+1] - my_t1) + my_y1;
     my_MAP2 := MAP_endo_array[array_counter+1] - MAP_current_base;


     d_area := dt * ((my_MAP1 + my_MAP2)/2);
     sum := sum + d_area;

    array_counter := array_counter + 1;
    until (array_counter > final_index);

    area_under_map := trunc(sum*100)/100;


      S2V2 := Time_Array[V2_index] - Time_Array[S2_index];
      chart1.Series[10].Clear;
      chart1.Series[10].AddXY(time_array[S2_index] , Max_stimulus * stimulus_scale);
      chart1.Series[10].AddXY(time_array[v2_index] , MAP_Endo_Array[v2_index]);

      s1s2_label.Caption := 'S1S2: '+floattostr(trunc(s1s2*10000)/10);
      s1s2_local_label.Caption := 'S1S2: '+floattostr(trunc(s1s2*10000)/10);

      apdx_label.Caption := 'APDx: '+floattostr(trunc(apdx*10000)/10);
      di_label.Caption := 'DI: '+floattostr(trunc(di*10000)/10);
      v1v2_label.Caption := 'V1V2: '+floattostr(trunc(v1v2*10000)/10);
      s2v2_label.Caption := 'S2V2: '+floattostr(trunc(s2v2*10000)/10);
      apa_label.Caption := 'APA: '+ floattostr(trunc(apa*10)/10);
      s1s2_index_label.Caption := 'Pulse: '+inttostr(s1s2_index);
      area_label.Caption := 'Area: ' + floattostr(area_under_map);


      //add to table and show on chart (test or base)
      //correction factor
      APDx := APDx * correction_to_labchart_factor;
      DI := DI * correction_to_labchart_factor;


      min_s2v2 := strtofloat(edit3.Text);
      if show_value_flag then
      begin
      if ((s2v2*1000 > min_s2v2) and (v1v2*1000 < 1000)) then
      begin

     apd_s1s2_chart.Series[0].AddXY(S1S2*1000,APDx*1000);

     apd_v1v2_chart.Series[0].AddXY(V1V2*1000,APDx*1000);

     apd_di_chart.Series[0].AddXY(DI*1000,APDx*1000);

     di_odd_even_chart.Series[0].AddXY(di_odd,di_even);

     apd_odd_even_chart.Series[0].AddXY(apdx_odd,apdx_even);

     s1s2_odd_even_chart.Series[0].AddXY(s1s2_odd,s1s2_even);

     stringgrid1.Cells[0,processed_No] := inttostr(s1s2_index);
     if (manual_v1_flag or manual_v2_flag or manual_minimum_flag or manual_apd_di_line_flag) then stringgrid1.Cells[14,processed_No] := 'M'
     else stringgrid1.Cells[14,processed_No] := 'A';
     stringgrid1.Cells[1,processed_No] := formatfloat('#.###',APA);
     stringgrid1.Cells[2,processed_No] := formatfloat('#.##',APDx*1000);
     stringgrid1.Cells[3,processed_No] := formatfloat('#.##',pre_APDx*1000);

     stringgrid1.Cells[4,processed_No] := formatfloat('#.##',DI*1000);

     stringgrid1.Cells[5,processed_No] := formatfloat('#.##',DI_calc*1000);

     stringgrid1.Cells[6,processed_No] := formatfloat('#.##',S2V2*1000);
     stringgrid1.Cells[7,processed_No] := formatfloat('#.##',S1S2*1000);
     stringgrid1.Cells[8,processed_No] := formatfloat('#.##',V1V2*1000);

     stringgrid1.Cells[9,processed_No] := formatfloat('#.##',RMP);

     stringgrid1.Cells[10,processed_No] := formatfloat('#.##',area_under_map);

     stringgrid1.Cells[11,processed_No] := formatfloat('#.##',Tr*1000);
     stringgrid1.Cells[12,processed_No] := formatfloat('#.##',Tf*1000);

     stringgrid1.Cells[13,processed_No] := inttostr(rmp_index);
     stringgrid1.Cells[15,processed_No] := floattostr(s1_time);

     clicked_index := processed_No;
     min_S2V2 := strtofloat(edit3.Text);
     if ((s2v2*1000)<min_S2V2) then stringgrid1.Cells[0,processed_No] := '**'+inttostr(s1s2_index) + '**';
     if processed_No+1 >= stringgrid1.RowCount then
     begin
     stringgrid1.RowCount := processed_No + 1;
     processed_No := processed_No + 1;
     end;
     StringGrid1.SetFocus;
      StringGrid1.Row := StringGrid1.FixedRows;
      StringGrid1.Col := StringGrid1.FixedCols;

     

     end;
     
       plot_on_zoom_form_btn.Click;
     end; //  if show_value_flag then



     
   //scale charts for better see

   // chart1.LeftAxis.Automatic := true;
   // max_y := chart1.LeftAxis.Maximum;
   // min_y := chart1.LeftAxis.Minimum;
   //chart1.LeftAxis.SetMinMax(min_y-(0.1*(max_y-min_y)) , max_y+(0.1*(max_y-min_y)) );


    max_y := Max_Stimulus * stimulus_scale;
    if MAP_endo_array[v1_index] > max_y then max_y := MAP_endo_array[v1_index];
    if MAP_endo_array[v2_index] > max_y then max_y := MAP_endo_array[v2_index];

    min_y := min_rmp;

     Chart1.LeftAxis.SetMinMax(min_y-(0.1*(max_y-min_y)) , max_y+(0.1*(max_y-min_y)) );

     Chart1.BottomAxis.SetMinMax(Time_array[s1_index]-0.45*delta_t_zoom, Time_array[rmp_next_index]+0.45*delta_t_zoom);

 //set value for recursive function
 //array_counter := APDx_end_index + 10;
  manual_apd_di_line_flag := false;
  manual_v1_flag := false;
  manual_v2_flag := false;
  manual_minimum_flag := false;
  

end;

procedure TForm1.max_min_buttonClick(Sender: TObject);
begin

check_password;

 // find max and min in Whole search area
 s1s2_index := 0;
 s1s2_odd := 0;
 s1s2_even := 0;

 apdx_odd := 0;
 apdx_even := 0;

 di_odd := 0;
 di_even := 0;

  final_counter := max_global_array - 1000;
  array_counter := 1000;
  min_MAP := 1000;
  max_MAP := -1000;
  min_Stimulus := 1000;
  max_Stimulus := -1000;
    repeat

       my_MAP:= MAP_endo_array[array_counter];

       if my_MAP > max_MAP then Max_MAP := my_MAP;

       if my_MAP < min_MAP then min_MAP := my_MAP;

       my_Stimulus:= Stimulus_array[array_counter];

       if my_Stimulus > max_Stimulus then Max_Stimulus := my_Stimulus;

       if my_Stimulus < min_Stimulus then Min_Stimulus := my_Stimulus;

      array_counter := array_counter + 1;
    until (array_counter > final_counter);

    mean_MAP := (max_MAP + min_MAP ) / 2;
    max_MAP_Segment := max_MAP;
    min_MAP_Segment := min_MAP;

    Mean_Stimulus := (Max_Stimulus + Min_Stimulus) / 2;

    chart1.Series[4].Clear;
  chart1.Series[4].AddXY(Time_array[1000],mean_MAP);
  chart1.Series[4].AddXY(Time_array[array_counter],mean_MAP);



//Plot Stimulus scaled
    array_counter := 1;
    data_count_lenght := strtoint(edit1.Text);
    plot_max_array := array_counter + data_count_lenght;
    Chart1.Series[5].Clear;
    stimulus_scale := Max_MAP / Max_Stimulus;
    up_down_flag := false;
    repeat
      Chart1.Series[5].Addxy(Time_array[array_counter], Stimulus_array[array_counter]*stimulus_scale);
      array_counter := array_counter + 1;
    until (array_counter > plot_max_array);

// reset Counters for next step Calculation
  uprizing_slope_threshold := strtofloat(edit2.Text);
  array_counter := 2000;

   max_local_counter_table := (StringGrid1.ColCount - 1);
for local_counter_table := 0 to max_local_counter_table do
begin
    StringGrid1.Cols[local_counter_table].Clear;
end;
  StringGrid1.RowCount := 2;


   stringgrid1.Cells[0,0] := 'S No';
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
   stringgrid1.Cells[15,0] := 'S1Time';

    apd_di_chart.Series[0].Clear;
    apd_s1s2_chart.Series[0].Clear;
    apd_v1v2_chart.Series[0].Clear;
    s1s2_odd_even_chart.Series[0].Clear;
    apd_odd_even_chart.Series[0].Clear;



   
   max_global_array := max_array - 4000;
    gauge1.MaxValue := trunc(max_global_array / 1000);
    gauge1.Progress := 0;
    array_counter := 1;
    processed_No := 1;
    
    t0 := Time_array[2];
    dt := Time_array[3] - Time_array[2];
    t_end := Time_array[max_global_array];
    delta_t_zoom := 3;

   forecast_window_width := 5000;

   chart1.BottomAxis.SetMinMax(t0 , t0 + delta_t_zoom);
   combobox1.ItemIndex := 1;
     manual_apd_di_line_flag := false;
  manual_v2_flag := false;
  manual_v1_flag := false;
  manual_minimum_flag := false;

// auto base detector
if auto_base_checkbox.checked then
begin
    //Find S1-S2
    array_counter := 2000;
    listbox1.Items.Clear;
    repeat
    repeat
     array_counter := array_counter + 1;
     point1 := stimulus_array[array_counter];
     point2 := stimulus_array[array_counter+1];
    until ((point1 >= Mean_Stimulus) and (point2 < Mean_Stimulus) or (array_counter >40000));
    S1_index := array_counter;

    array_counter := array_counter + 20;
    repeat
     array_counter := array_counter + 1;
     point1 := stimulus_array[array_counter];
     point2 := stimulus_array[array_counter+1];
    until ((point1 >= Mean_Stimulus) and (point2 < Mean_Stimulus) or (array_counter >40000));
    S2_index := array_counter;


    s1s2 := (time_array[S2_index] - time_array[S1_index]);
    if (s1s2 * 1000 < 1000) then listbox1.Items.Add(floattostr(s1s2));

    until (array_counter >40000);

    ave := 0;
    same_count := 0;
    for c := 1 to listbox1.Items.Count-2 do
    begin
      dif_s1s2 := abs(strtofloat(listbox1.Items[c]) - strtofloat(listbox1.Items[c+1])) * 1000;
       if dif_s1s2 < 2 then
       begin
       ave := ave + strtofloat(listbox1.Items[c]);
       same_count := same_count +1;
       end;
    end;
    ave := ave / same_count;

    auto_base_value := ave;
    auto_base_edit.Text := floattostr(trunc(ave*10000)/10);


end;


 // reset Counters for next step Calculation
  uprizing_slope_threshold := strtofloat(edit2.Text);
  array_counter := 2000;

  //
  //memo1.Lines.Add('File Processed:');
  //memo1.Lines.Add(datetimetostr(now));
  //memo1.Lines.Add(label15.Caption);
  //button5.Click;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
label21.Caption := floattostr(Time_Array[Array_Counter]) + ' , ' + floattostr(T_End);
if  Time_Array[Array_Counter] < (T_End - 1) then Calculate_button.Click
else timer1.Enabled := false;

end;

procedure TForm1.Auto_buttonClick(Sender: TObject);
begin
if selection_radio_button.Checked then
begin
array_counter := start_selection_index;
final_counter := end_selection_index;
t_end := Time_array[final_counter]+0.8;
end;

   timer1.Enabled := true;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
x , y : integer;
resti_file_name : string;

begin
if savedialog1.Execute then
begin
  resti_file_name := savedialog1.filename + '_Restitution_'+formatdatetime('dd_mm_yy__hh_mm_ss', now)+'.RESdat';

  AssignFile(string_grid_file, resti_file_name);
  Rewrite(string_grid_file);
  Writeln(string_grid_file, StringGrid1.ColCount);
  Writeln(string_grid_file, StringGrid1.RowCount);
  for x:=0 to StringGrid1.ColCount-1 do
    for y:=0 to StringGrid1.RowCount-1 do
      Writeln(string_grid_file, StringGrid1.Cells[x,y]);
  CloseFile(string_grid_file);
end;

end;

procedure TForm1.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 XVal :=Chart1.BottomAxis.CalcPosPoint(X);
  YVal :=Chart1.LeftAxis.CalcPosPoint(Y);

 if dt <> 0 then xval_index := trunc((xval - t0) / dt) + 1;

 if xval_index > 10 then
 begin
  

  chart1.Series[9].Clear;
  chart1.Series[9].AddXY(Time_Array[xval_index], MAP_Endo_Array[xval_index]);
  label11.Caption := 'Time: '+floattostr(Time_Array[xval_index]);
   label12.Caption := 'MAP: '+floattostr(MAP_Endo_Array[xval_index]);
   Label25.Caption := inttostr(xval_index);

  //calculate S1S2 real time
    array_counter_local := xval_index;
    array_counter_local_min := array_counter_local - 4000;
    array_counter_local_max := array_counter_local + 4000;
    repeat
     array_counter_local := array_counter_local - 1;
     point1 := stimulus_array[array_counter_local];
     point2 := stimulus_array[array_counter_local-1];
    until ((point1 <= Mean_Stimulus) and (point2 > Mean_Stimulus) or (array_counter_local < array_counter_local_min) or (array_counter_local < 5));
    S1_index_local := array_counter_local;

    array_counter_local := xval_index;
    repeat
     array_counter_local := array_counter_local + 1;
     point1 := stimulus_array[array_counter_local];
     point2 := stimulus_array[array_counter_local-1];


    until ((point1 <= Mean_Stimulus) and (point2 > Mean_Stimulus) or (array_counter_local > array_counter_local_max));
    S2_index_local := array_counter_local;

    chart1.Series[14].Clear;
    chart1.Series[14].AddXY(time_array[S1_index_local] , Max_stimulus * stimulus_scale );
    chart1.Series[14].AddXY(time_array[S2_index_local] , Max_stimulus * stimulus_scale );

    s1s2_local := time_array[S2_index_local] - time_array[S1_index_local];
    s1s2_local := s1s2_local *1000;

    s1s2_local_label.Caption := 'S1S2: '+ floattostr(trunc(s1s2_local*10)/10) + ' mS';
    label29.Caption := 'S1S2: '+ floattostr(trunc(s1s2_local*10)/10) + ' mS';


 end;


 if (XVal < chart1.BottomAxis.Minimum + 0.1*delta_t_zoom) then scroll_left_btn.Click;
 if (XVal > chart1.BottomAxis.Maximum - 0.1*delta_t_zoom) then scroll_right_btn.Click;


end;

procedure TForm1.Setuprizingslopehere1Click(Sender: TObject);
begin


//  uprizing_slope_threshold := strtofloat(edit2.Text);
//  apdx_scale := strtofloat(edit3.Text) / 100;
t1 := Time_Array[xval_index-10];
t2 := Time_Array[xval_index+10];
MAP1 := MAP_endo_Array[xval_index-10];
MAP2 := MAP_endo_Array[xval_index+10];
delta_MAP := MAP2 - MAP1;
delta_t := t2 - t1;
uprizing_slope_threshold := delta_MAP / delta_t;
uprizing_slope_threshold := uprizing_slope_threshold / 100;
edit2.Text := floattostr(uprizing_slope_threshold);
chart1.Series[6].Clear;
chart1.Series[6].AddXY(Time_Array[xval_index-10],MAP_endo_Array[xval_index-10]);
chart1.Series[6].AddXY(Time_Array[xval_index+10],MAP_endo_Array[xval_index+10]);
chart1.Refresh;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
chart1.Series[5].Active := checkbox1.Checked;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
//********************************************************************************************
//Trace Signal to Max Slope Threshold

    repeat

       slope := (MAP_endo_array[array_counter + 10] - MAP_endo_array[array_counter]) / (time_array[array_counter+10] - time_array[array_counter]);

      array_counter := array_counter + 1;
    until ((slope > uprizing_slope_threshold) or (array_counter > final_counter));


   max_slope1_index := array_counter;

 //   chart1.Series[7].Clear;
  //  chart1.Series[7].AddXY(time_array[APDx_start_index],MAP_endo_array[APDx_start_index]);
  //  chart1.Series[7].AddXY(time_array[APDx_end_index],MAP_endo_array[APDx_end_index]);

  //  chart1.Series[1].Clear;
  ///  chart1.Series[2].Clear;
  //  chart1.Series[3].Clear;

  //  chart1.Series[1].AddXY(time_array[DI_start_index],MAP_endo_array[DI_start_index]);
    //chart1.Series[1].AddXY(time_array[DI_end_index],MAP_endo_array[DI_end_index]);
  //  chart1.Series[1].AddXY(time_array[DI_end_index],MAP_endo_array[APDx_end_index]);


   // chart1.Series[2].AddXY(time_array[APDx_start_index],MAP_endo_array[APDx_start_index]);
 //   chart1.Series[2].AddXY(time_array[APDx_start_index],MAP_endo_array[APDx_end_index]);
 //   chart1.Series[2].AddXY(time_array[APDx_end_index],MAP_endo_array[APDx_end_index]);

 //   chart1.Series[3].AddXY(time_array[DI_start_index],MAP_endo_Max1);
 //   chart1.Series[3].AddXY(time_array[DI_start_index],MAP_endo_Min1);
 //   chart1.Series[3].AddXY(time_array[DI_end_index],MAP_endo_Min1);
 //   chart1.Series[3].AddXY(time_array[DI_end_index],MAP_endo_Max1);
 //   chart1.Series[3].AddXY(time_array[APDx_start_index],MAP_endo_Min1);
 //   chart1.Series[3].AddXY(time_array[APDx_end_index],MAP_endo_Min1);
 //   chart1.Series[3].AddXY(time_array[APDx_end_index],MAP_endo_Max1);

  {
    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] <= MAP_endo_array[APDx_start_index]) or (array_counter > final_counter));
   }
//********************************************************************************************
 //   DI_end := APDx_start;
 //   DI_end_index := APDx_start_index;

//    DI_end := (time_array[APDx_start_MAP_index]);
//    DI_end_index := APDx_start_MAP_index;

//    APDx_Start := DI_end;
//    APDx_start_index := DI_end_index;
//********************************************************************************************



 {
//find first rising and falling edge on MAP and mean MAP

    MAP_Threshold := mean_MAP * 1.5;
    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] <= MAP_Threshold) and (MAP_endo_array[array_counter+2] > MAP_Threshold)) or (array_counter > final_counter));

    start_index := array_counter;
 //  chart1.Series[1].Clear;
 //  chart1.Series[1].AddXY(time_array[array_counter],MAP_endo_array[array_counter]);
   
    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] >= MAP_Threshold) and (MAP_endo_array[array_counter+2] < MAP_Threshold)) or (array_counter > final_counter));

    final_index := array_counter;
 //  chart1.Series[1].AddXY(time_array[array_counter],MAP_endo_array[array_counter]);

  // find Maximun in upper MAP
    max_MAP := -1000;
    array_counter := start_index;
    repeat

       my_MAP:= MAP_endo_array[array_counter];

       if my_MAP > max_MAP then
       begin
        Max_MAP := my_MAP;
        MAP_endo_Max1 := Max_MAP;
        MAP_endo_Max1_index := array_counter;
       end;

      array_counter := array_counter + 1;
    until (array_counter > final_index);

 // chart1.Series[2].Clear;
 //  chart1.Series[2].AddXY(time_array[max_slope1_index],MAP_endo_array[max_slope1_index]);
 //  chart1.Series[2].AddXY(time_array[MAP_endo_Max1_index],MAP_endo_array[MAP_endo_Max1_index]);


  //find first falling and rising edge on MAP and mean MAP

    MAP_Threshold := mean_MAP * 0.5;
    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] >= MAP_Threshold) and (MAP_endo_array[array_counter+2] < MAP_Threshold)) or (array_counter > final_counter));

    start_index := array_counter;
 //  chart1.Series[1].Clear;
 //  chart1.Series[1].AddXY(time_array[array_counter],MAP_endo_array[array_counter]);
   
    repeat
     array_counter := array_counter + 1;
    until ( ((MAP_endo_array[array_counter] <= MAP_Threshold) and (MAP_endo_array[array_counter+2] > MAP_Threshold)) or (array_counter > final_counter));

    final_index := array_counter;
 //chart1.Series[1].AddXY(time_array[array_counter],MAP_endo_array[array_counter]);

  // find Minimum in Lower MAP
    min_MAP := 1000;
    array_counter := start_index;
    repeat

       my_MAP:= MAP_endo_array[array_counter];

       if my_MAP < min_MAP then
       begin
        min_MAP := my_MAP;
        MAP_endo_Min1 := min_MAP;
        MAP_endo_Min1_index := array_counter;
       end;

      array_counter := array_counter + 1;
    until (array_counter > final_index);

 //  chart1.Series[2].Clear;
 //  chart1.Series[2].AddXY(time_array[MAP_endo_Max1_index],MAP_endo_array[MAP_endo_Max1_index]);
 //  chart1.Series[2].AddXY(time_array[MAP_endo_Min1_index],MAP_endo_array[MAP_endo_Min1_index]);


//********************************************************************************************
//Find First of DI


   APDx_Value := MAP_endo_array[MAP_endo_Max1_index] - apdx * (MAP_endo_array[MAP_endo_Max1_index] - MAP_endo_array[MAP_endo_Min1_index]);

    array_counter := MAP_endo_Max1_index;
    repeat
     array_counter := array_counter + 1;
    until ( (MAP_endo_array[array_counter] < APDx_Value) or (array_counter > final_counter));

    DI_Start := time_array[array_counter];
    DI_Start_index := array_counter;


       }

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

panel3.Left := 0;
form1.Left := 0;
form1.Top := 0;
panel1.Height := 350;


//showmessage('uncomment internet check');

end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
if checkbox4.Checked then
begin
 di_odd_even_chart.Parent := di_point_care_form;
 di_point_care_form.Parent := panel1;
 di_odd_even_chart.Visible := true;
 di_point_care_form.Show;
 di_odd_even_chart.Left := 0;
 di_odd_even_chart.Top := 0;
 di_point_care_form.Width := di_odd_even_chart.Width + 10;
 di_point_care_form.Height := di_odd_even_chart.Height + 10;
end
else
begin
 di_point_care_form.Close;
end;

end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
if checkbox5.Checked then
begin
 apd_s1s2_chart.Parent := apdx_s1s2_form;
 apdx_s1s2_form.Parent := panel1;
 apd_s1s2_chart.Visible := true;
 apdx_s1s2_form.Show;
 apd_s1s2_chart.Left := 0;
 apd_s1s2_chart.Top := 0;
 apdx_s1s2_form.Width := apd_s1s2_chart.Width + 10;
 apdx_s1s2_form.Height := apd_s1s2_chart.Height + 30;
end
else
begin
 apdx_s1s2_form.Close;
end;

end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
if checkbox6.Checked then
begin
 apd_di_chart.Parent := apdx_di_form;
 apdx_di_form.Parent := panel1;
 apd_di_chart.Visible := true;
 apdx_di_form.Show;
 apd_di_chart.Left := 0;
 apd_di_chart.Top := 0;
 apdx_di_form.Width := apd_di_chart.Width + 10;
 apdx_di_form.Height := apd_di_chart.Height + 30;
end
else
begin
 apdx_di_form.Close;
end;

end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
if checkbox7.Checked then
begin
 apd_v1v2_chart.Parent := apdx_v1v2_form;
 apdx_v1v2_form.Parent := panel1;
 apd_v1v2_chart.Visible := true;
 apdx_v1v2_form.Show;
 apd_v1v2_chart.Left := 0;
 apd_v1v2_chart.Top := 0;
 apdx_v1v2_form.Width := apd_v1v2_chart.Width + 10;
 apdx_v1v2_form.Height := apd_v1v2_chart.Height + 30;
end
else
begin
 apdx_v1v2_form.Close;
end;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
if checkbox8.Checked then
begin
 s1s2_odd_even_chart.Parent := s1s2_point_care_form;
 s1s2_point_care_form.Parent := panel1;
 s1s2_odd_even_chart.Visible := true;
 s1s2_point_care_form.Show;
 s1s2_odd_even_chart.Left := 0;
 s1s2_odd_even_chart.Top := 0;
 s1s2_point_care_form.Width := s1s2_odd_even_chart.Width + 10;
 s1s2_point_care_form.Height := s1s2_odd_even_chart.Height + 30;
end
else
begin
 s1s2_point_care_form.Close;
end;
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
if checkbox9.Checked then
begin
 apd_odd_even_chart.Parent := apdx_point_care_form;
 apdx_point_care_form.Parent := panel1;
 apd_odd_even_chart.Visible := true;
 apdx_point_care_form.Show;
 apd_odd_even_chart.Left := 0;
 apd_odd_even_chart.Top := 0;
 apdx_point_care_form.Width := apd_odd_even_chart.Width + 10;
 apdx_point_care_form.Height := apd_odd_even_chart.Height + 30;
end
else
begin
 apdx_point_care_form.Close;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
min_x , max_x , min_y , max_y : real;

begin
min_x := strtofloat(edit9.Text);
max_x := strtofloat(edit4.Text);
min_y := strtofloat(edit10.Text);
max_y := strtofloat(edit8.Text);
apd_di_chart.BottomAxis.SetMinMax(min_x,max_x);
apd_di_chart.LeftAxis.SetMinMax(min_y,max_y);

s1s2_odd_even_chart.BottomAxis.SetMinMax(min_x,max_x);
s1s2_odd_even_chart.LeftAxis.SetMinMax(min_y,max_y);

apd_odd_even_chart.BottomAxis.SetMinMax(min_x,max_x);
apd_odd_even_chart.LeftAxis.SetMinMax(min_y,max_y);

apd_s1s2_chart.BottomAxis.SetMinMax(min_x,max_x);
apd_s1s2_chart.LeftAxis.SetMinMax(min_y,max_y);

di_odd_even_chart.BottomAxis.SetMinMax(min_x,max_x);
di_odd_even_chart.LeftAxis.SetMinMax(min_y,max_y);

apd_v1v2_chart.BottomAxis.SetMinMax(min_x,max_x);
apd_v1v2_chart.LeftAxis.SetMinMax(min_y,max_y);





end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
show_base_flag := checkbox2.checked;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
apd_s1s2_chart.BottomAxis.SetMinMax(strtofloat(edit9.Text),strtofloat(edit4.Text));
apd_s1s2_chart.LeftAxis.SetMinMax(strtofloat(edit10.Text),strtofloat(edit8.Text));

apd_di_chart.BottomAxis.SetMinMax(strtofloat(edit9.Text),strtofloat(edit4.Text));
apd_di_chart.LeftAxis.SetMinMax(strtofloat(edit10.Text),strtofloat(edit8.Text));

apd_v1v2_chart.BottomAxis.SetMinMax(strtofloat(edit9.Text),strtofloat(edit4.Text));
apd_v1v2_chart.LeftAxis.SetMinMax(strtofloat(edit10.Text),strtofloat(edit8.Text));

apd_odd_even_chart.BottomAxis.SetMinMax(strtofloat(edit9.Text),strtofloat(edit4.Text));
apd_odd_even_chart.LeftAxis.SetMinMax(strtofloat(edit10.Text),strtofloat(edit8.Text));

di_odd_even_chart.BottomAxis.SetMinMax(strtofloat(edit9.Text),strtofloat(edit4.Text));
di_odd_even_chart.LeftAxis.SetMinMax(strtofloat(edit10.Text),strtofloat(edit8.Text));

s1s2_odd_even_chart.BottomAxis.SetMinMax(strtofloat(edit9.Text),strtofloat(edit4.Text));
s1s2_odd_even_chart.LeftAxis.SetMinMax(strtofloat(edit10.Text),strtofloat(edit8.Text));


end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
debug_flag := checkbox10.checked;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

upload_string := '';

for c := 0 to memo1.Lines.Count-1 do
 upload_string := upload_string + memo1.Lines[c] + chr(13) + chr(10);

url_encode := 'http://drkhori.isensor.ir/index.php?dat=' + httpencode(utf8encode(upload_string));

edit11.Text := url_encode;
responce_str := GetUrlContent(url_encode);

memo1.Lines.Clear;

//check for black listed users
url_encode := 'http://drkhori.isensor.ir/blacklist.txt';
responce_str := GetUrlContent(url_encode);
if (strpos(pchar(responce_str),pchar(black_list_check)) <> nil) then form1.Close;

                                       



end;

procedure TForm1.Button8Click(Sender: TObject);
begin
check_password;

charts_form.show;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin

if length(global_ip_address) < 10 then
begin
force_close_flag := true;
form1.Close;
end;


end;

procedure TForm1.apd_s1s2_chartMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
x_cursor := x;
y_cursor := y;

end;

procedure TForm1.apd_v1v2_chartMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
x_cursor := x;
y_cursor := y;
end;

procedure TForm1.click_on_chart_btnClick(Sender: TObject);
begin
clicked_index := strtoint(click_on_chart_label.Caption);
if clicked_index <> -1 then
begin
processed_No := clicked_index;
array_counter  := strtoint(stringgrid1.Cells[13,clicked_index]);
s1s2_index := strtoint(stringgrid1.Cells[0,clicked_index]);
stringgrid1.Selection := TGridRect(Rect(1, clicked_index, 12, clicked_index));

replot_btn.Click;

//charts_form.Close;
chart1.Focused;

end;

end;

procedure TForm1.StringGrid1DblClick(Sender: TObject);
begin
table_click_index := true;

clicked_index := stringgrid1.Row;
processed_No := clicked_index;
array_counter  := strtoint(stringgrid1.Cells[13,clicked_index]);
s1s2_index := strtoint(stringgrid1.Cells[0,clicked_index]);
stringgrid1.Selection := TGridRect(Rect(1, clicked_index, 12, clicked_index));
replot_btn.Click;
table_click_index := false;

end;

procedure TForm1.Button10Click(Sender: TObject);
var
x , y : integer;
resti_file_name : string;

begin
if savedialog1.Execute then
begin
  resti_file_name := savedialog1.filename + '_Restitution_'+formatdatetime('dd_mm_yy__hh_mm_ss', now)+'.xls';

  AssignFile(string_grid_file, resti_file_name);
  Rewrite(string_grid_file);

  for y:=0 to StringGrid1.RowCount-1 do
  begin
  for x:=0 to StringGrid1.ColCount-2 do
      Write(string_grid_file, StringGrid1.Cells[x,y] + chr(9));
  Writeln(string_grid_file, StringGrid1.Cells[StringGrid1.ColCount-1,y]);
  end;
  CloseFile(string_grid_file);

   // memo1.Lines.Add('File Exported:');
   // memo1.Lines.Add(datetimetostr(now));
   // memo1.Lines.Add(resti_file_name);
   // button5.Click;
    
end;

end;

procedure TForm1.TrackBar1Change(Sender: TObject);
var
array_counter2 : integer;

begin
forecast_window_width := trackbar1.position * 100;
label23.Caption := inttostr(trunc(forecast_window_width * dt * 1000)) + ' mS';


      start_counter := array_counter;
      final_counter_local := start_counter + forecast_window_width; //search window in front of this signal for next signal processing
         chart1.Series[4].Clear;
         chart1.Series[4].AddXY(Time_array[start_counter],mean_MAP);
         chart1.Series[4].AddXY(Time_array[final_counter_local],mean_MAP);


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
timer1.Enabled := false;
end;

procedure TForm1.Start_Selection_HereClick(Sender: TObject);
begin
 start_selection_index := xval_index;
 chart1.Series[11].Clear;
 chart1.Series[11].AddXY(time_array[start_selection_index],max_MAP);

end;

procedure TForm1.End_Selection_HereClick(Sender: TObject);
begin
 end_selection_index := xval_index;
 chart1.Series[12].Clear;
 chart1.Series[12].AddXY(time_array[end_selection_index],max_MAP);
end;

procedure TForm1.whole_channel_radio_buttonClick(Sender: TObject);
begin
if whole_channel_radio_button.Checked then
begin
 chart1.Series[11].Active := false;
 chart1.Series[12].Active := false;



end;
end;

procedure TForm1.zoom_inClick(Sender: TObject);
begin
//chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum - 5);

if combobox1.ItemIndex > 0 then combobox1.ItemIndex := combobox1.ItemIndex - 1;
delta_t_zoom := strtoint(combobox1.Items[combobox1.ItemIndex]);
chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Minimum + delta_t_zoom);


end;

procedure TForm1.zoom_outClick(Sender: TObject);
begin
//chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Maximum + 5);
if combobox1.ItemIndex < 14 then combobox1.ItemIndex := combobox1.ItemIndex + 1;
delta_t_zoom := strtoint(combobox1.Items[combobox1.ItemIndex]);
chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Minimum + delta_t_zoom);

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
delta_t_zoom := strtoint(combobox1.Items[combobox1.ItemIndex]);
chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum,chart1.BottomAxis.Minimum + delta_t_zoom);

end;

procedure TForm1.selection_radio_buttonClick(Sender: TObject);
begin
if selection_radio_button.Checked then
begin
 chart1.Series[11].Active := true;
 chart1.Series[12].Active := true;



end;
end;

procedure TForm1.apdx_comboboxChange(Sender: TObject);
begin

calculate_button.Enabled := true;

scrollbar1.Enabled := true;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
about_form.show;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
t_start_scroll := t0 + (scrollbar1.position / 1000) * file_delta_t;
t_end_scroll := t_start_scroll + delta_t_zoom;
chart1.BottomAxis.SetMinMax(t_start_scroll , t_end_scroll);

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
//if ((edit6.Text= 'Username') and (edit7.Text = 'Password')) then panel3.Height := 0;

user_name := edit6.Text;
password := edit7.Text;
user_pass := user_name +'ewilrvtgwl34tg#$%23bhf2jr' +  password;
md5_hash := md5(user_pass);


memo2.Lines.Clear;
memo2.Lines.Add(GetUrlContent('http://drkhori.isensor.ir/uph.xyz'));
//panel3.Height := 0;
//timer2.Enabled := false;
//timer3.Enabled := false;


//Internet Check
global_ip_address := GetUrlContent('http://ipinfo.io/?token=6cb0ddaa049278');
memo1.Lines.Clear;
memo1.Lines.Add('****************************************************');
memo1.Lines.Add('New Session for Restitution Program (Dr Khori)');
memo1.Lines.Add('Program User: ' + edit6.Text);

computer_variable := GetEnvironmentVariable('USERNAME');
memo1.Lines.Add('PC USERNAME: '+computer_variable);

computer_variable := GetEnvironmentVariable('CLIENTNAME');
memo1.Lines.Add('PC CLIENTNAME: '+computer_variable);

computer_variable := GetEnvironmentVariable('COMPUTERNAME');
memo1.Lines.Add('PC COMPUTERNAME: '+computer_variable);

black_list_check := computer_variable;

computer_variable := GetEnvironmentVariable('LOGONSERVER');
memo1.Lines.Add('PC LOGONSERVER: '+computer_variable);

computer_variable := GetEnvironmentVariable('PROCESSOR_IDENTIFIER');
memo1.Lines.Add('PC PROCESSOR_IDENTIFIER: '+computer_variable);

computer_variable := GetEnvironmentVariable('USERDOMAIN');
memo1.Lines.Add('PC USERDOMAIN: '+computer_variable);


memo1.Lines.Add(datetimetostr(now));
memo1.Lines.Add(GetIPAddress);
memo1.Lines.add(global_ip_address);

if length(global_ip_address) < 10 then form1.Close;



button5.Click;
timer3.Enabled := true;

check_password;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
panel3.Left := 0;
panel3.Top := 0;
Panel3.Height := 790;
panel3.Width := 1430;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
zoom_chart.Parent := zoom_form;
zoom_chart.Visible := true;
zoom_chart.Left := 0;
zoom_chart.Top := 0;
zoom_form.show;
end;

procedure TForm1.plot_on_zoom_form_btnClick(Sender: TObject);
begin
    zoom_plot_array_counter_max := APDx_end_index + 1000;
    zoom_form.label2.caption := inttostr(zoom_plot_array_counter_max);
    zoom_plot_array_counter := s1_index - 100;

Zoom_Chart.Series[0].Clear;
 Zoom_Chart.Series[1].Clear;
  Zoom_Chart.Series[2].Clear;
   Zoom_Chart.Series[3].Clear;
    Zoom_Chart.Series[4].Clear;
     Zoom_Chart.Series[5].Clear;
      Zoom_Chart.Series[6].Clear;
       Zoom_Chart.Series[7].Clear;
        Zoom_Chart.Series[8].Clear;
         Zoom_Chart.Series[9].Clear;
          Zoom_Chart.Series[10].Clear;
           Zoom_Chart.Series[11].Clear;
    repeat
      Zoom_Chart.Series[0].Addxy(Time_array[zoom_plot_array_counter] ,MAP_endo_array[zoom_plot_array_counter]);
       Zoom_Chart.Series[5].Addxy(Time_array[zoom_plot_array_counter], Stimulus_array[zoom_plot_array_counter]*stimulus_scale);

      zoom_plot_array_counter := zoom_plot_array_counter + 1;
    until (zoom_plot_array_counter > zoom_plot_array_counter_max);


    Zoom_Chart.Series[8].AddXY(time_array[MAP_endo_Min1_index],MAP_endo_array[MAP_endo_Min1_index]);
    Zoom_Chart.Series[8].AddXY(time_array[V2_index],MAP_endo_array[v2_index]);

    Zoom_Chart.Series[2].AddXY(time_array[pre_APDx_start_index],MAP_endo_array[pre_APDx_start_index]);
    Zoom_Chart.Series[2].AddXY(time_array[DI_start_index],MAP_endo_array[DI_start_index]);
    Zoom_Chart.Series[2].AddXY(time_array[APDx_start_index],MAP_endo_array[APDx_start_index]);
    Zoom_Chart.Series[2].AddXY(time_array[APDx_end_index],MAP_endo_array[APDx_end_index]);

    Zoom_Chart.Series[3].AddXY(time_array[DI_start_index],MAP_endo_array[DI_start_index]);
    Zoom_Chart.Series[3].AddXY(time_array[DI_end_index],MAP_endo_array[DI_end_index]);


    Zoom_Chart.Series[6].AddXY(time_array[S1_index] , Max_stimulus * stimulus_scale );
    Zoom_Chart.Series[6].AddXY(time_array[S2_index] , Max_stimulus * stimulus_scale );

 Zoom_Chart.Series[7].AddXY(time_array[V1_index],MAP_endo_array[V1_index]);
 Zoom_Chart.Series[7].AddXY(time_array[V2_index],MAP_endo_array[V2_index]);


 Zoom_Chart.Series[10].AddXY(time_array[S2_index] , Max_stimulus * stimulus_scale);
 Zoom_Chart.Series[10].AddXY(time_array[v2_index] , MAP_Endo_Array[v2_index]);


    Zoom_Chart.Series[11].AddXY(time_array[rmp_index],rmp);
    Zoom_Chart.Series[11].AddXY(time_array[rmp_next_index],rmp_next);


end;

procedure TForm1.ProcessHereSingleS1S21Click(Sender: TObject);
begin
    array_counter := xval_index;
    repeat
     array_counter := array_counter + 1;
     point1 := stimulus_array[array_counter];
     point2 := stimulus_array[array_counter+1];
    until ((point1 >= Mean_Stimulus) and (point2 < Mean_Stimulus) or (array_counter > max_array));

    calculate_button.Click;

end;

procedure TForm1.scroll_left_btnClick(Sender: TObject);
begin
chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum-(delta_t_zoom/50),chart1.BottomAxis.Maximum-(delta_t_zoom/50));

end;

procedure TForm1.scroll_right_btnClick(Sender: TObject);
begin
chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum+(delta_t_zoom/50),chart1.BottomAxis.Maximum+(delta_t_zoom/50));

end;

procedure TForm1.zoom_chartMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin


 XVal_zoom :=zoom_chart.BottomAxis.CalcPosPoint(X);
  YVal_zoom :=zoom_chart.LeftAxis.CalcPosPoint(Y);

 if dt <> 0 then xval_index_zoom := trunc((xval_zoom - t0) / dt) + 1;

 if xval_index > 10 then
 begin
  

  zoom_chart.Series[9].Clear;
  zoom_chart.Series[9].AddXY(Time_Array[xval_index_zoom], MAP_Endo_Array[xval_index_zoom]);
  label27.Caption := 'Time: '+floattostr(Time_Array[xval_index_zoom]);
  label28.Caption := 'MAP: '+floattostr(MAP_Endo_Array[xval_index_zoom]);
  zoom_form.Label1.Caption := inttostr(xval_index_zoom);

 end;

 

end;

procedure TForm1.PlaceV2Here1Click(Sender: TObject);
begin
manual_index := xval_index_zoom;
manual_v2_flag := true;
processed_No := clicked_index;
array_counter := strtoint(stringgrid1.Cells[13,clicked_index]);
s1s2_index := strtoint(stringgrid1.Cells[0,clicked_index]);
stringgrid1.Selection := TGridRect(Rect(1, clicked_index, 12, clicked_index));
calculate_button.Click;

end;

procedure TForm1.PlaceV1Here1Click(Sender: TObject);
begin
manual_index := xval_index_zoom;
manual_v1_flag := true;
processed_No := clicked_index;
array_counter := strtoint(stringgrid1.Cells[13,clicked_index]);
s1s2_index := strtoint(stringgrid1.Cells[0,clicked_index]);
stringgrid1.Selection := TGridRect(Rect(1, clicked_index, 12, clicked_index));
calculate_button.Click;
end;

procedure TForm1.PlaceRMPMinimumHere1Click(Sender: TObject);
begin
manual_index := xval_index_zoom;
manual_minimum_flag := true;
processed_No := clicked_index;
array_counter := strtoint(stringgrid1.Cells[13,clicked_index]);
s1s2_index := strtoint(stringgrid1.Cells[0,clicked_index]);
stringgrid1.Selection := TGridRect(Rect(1, clicked_index, 12, clicked_index));
calculate_button.Click;
end;

procedure TForm1.PlaceAPDDILineHere1Click(Sender: TObject);
begin
manual_index := xval_index_zoom;
manual_apd_di_line_flag := true;
processed_No := clicked_index;
array_counter := strtoint(stringgrid1.Cells[13,clicked_index]);
s1s2_index := strtoint(stringgrid1.Cells[0,clicked_index]);
stringgrid1.Selection := TGridRect(Rect(1, clicked_index, 12, clicked_index));
calculate_button.Click;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
def_form.show;

end;

procedure TForm1.replot_btnClick(Sender: TObject);
begin

//show tabel on labels
      s1s2_label.Caption := 'S1S2: '+stringgrid1.Cells[7,clicked_index];
      s1s2_local_label.Caption := 'S1S2: '+stringgrid1.Cells[7,clicked_index];

      apdx_label.Caption := 'APDx: '+stringgrid1.Cells[2,clicked_index];
      di_label.Caption := 'DI: '+stringgrid1.Cells[4,clicked_index];
      v1v2_label.Caption := 'V1V2: '+stringgrid1.Cells[8,clicked_index];
      s2v2_label.Caption := 'S2V2: '+stringgrid1.Cells[6,clicked_index];
      apa_label.Caption := 'APA: '+ stringgrid1.Cells[1,clicked_index];
      s1s2_index_label.Caption := 'Pulse: '+stringgrid1.Cells[0,clicked_index];
      area_label.Caption := 'Area: ' + stringgrid1.Cells[10,clicked_index];
   {
         stringgrid1.Cells[0,0] := 'S No';
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
   stringgrid1.Cells[15,0] := 'S1Time';
      }

// clear forecast window
chart1.Series[4].Clear;


//apd
    chart1.Series[2].Clear;
    chart1.Series[2].AddXY(time_array[APDx_start_index_array[processed_no]],MAP_endo_array[APDx_start_index_array[processed_no]]);
    chart1.Series[2].AddXY(time_array[APDx_end_index_array[processed_no]],MAP_endo_array[APDx_end_index_array[processed_no]]);

//DI
    chart1.Series[3].Clear;
    chart1.Series[3].AddXY(time_array[DI_start_index_array[processed_no]],MAP_endo_array[DI_start_index_array[processed_no]]);
    chart1.Series[3].AddXY(time_array[APDx_start_index_array[processed_no]],MAP_endo_array[APDx_start_index_array[processed_no]]);


//s1s2
    chart1.Series[6].Clear;
    chart1.Series[6].AddXY(time_array[S1_index_array[processed_no]] , Max_stimulus * stimulus_scale );
    chart1.Series[6].AddXY(time_array[S2_index_array[processed_no]] , Max_stimulus * stimulus_scale );

//v1v2
    chart1.Series[7].Clear;
    chart1.Series[7].AddXY(time_array[V1_index_array[processed_no]],MAP_endo_array[V1_index_array[processed_no]]);
    chart1.Series[7].AddXY(time_array[V2_index_array[processed_no]],MAP_endo_array[V2_index_array[processed_no]]);


//rmp to max
    chart1.Series[8].Clear;
    chart1.Series[8].AddXY(time_array[rmp_index_array[processed_no]],MAP_endo_array[rmp_index_array[processed_no]]);
    chart1.Series[8].AddXY(time_array[V2_index_array[processed_no]],MAP_endo_array[v2_index_array[processed_no]]);
//S2V2
      chart1.Series[10].Clear;
      chart1.Series[10].AddXY(time_array[S2_index_array[processed_no]] , Max_stimulus * stimulus_scale);
      chart1.Series[10].AddXY(time_array[v2_index_array[processed_no]] , MAP_Endo_Array[v2_index_array[processed_no]]);


//rmp to rmp_next
    chart1.Series[13].Clear;
    chart1.Series[13].AddXY(time_array[rmp_index_array[processed_no]],MAP_endo_array[rmp_index_array[processed_no]]);
    chart1.Series[13].AddXY(time_array[rmp_next_index_array[processed_no]],MAP_endo_array[rmp_next_index_array[processed_no]]);




// scale chart
    max_y := Max_Stimulus * stimulus_scale;
    if MAP_endo_array[v1_index_array[processed_no]] > max_y then max_y := MAP_endo_array[v1_index_array[processed_no]];
    if MAP_endo_array[v2_index_array[processed_no]] > max_y then max_y := MAP_endo_array[v2_index_array[processed_no]];

    min_rmp := MAP_endo_array[rmp_index_array[processed_no]];
    if MAP_endo_array[rmp_next_index_array[processed_no]] < min_rmp then min_rmp := MAP_endo_array[rmp_next_index_array[processed_no]];

    min_y := min_rmp;

     Chart1.LeftAxis.SetMinMax(min_y-(0.1*(max_y-min_y)) , max_y+(0.1*(max_y-min_y)) );
     Chart1.BottomAxis.SetMinMax(Time_array[s1_index_array[processed_no]]-0.45*delta_t_zoom, time_array[APDx_end_index_array[processed_no]]+0.45*delta_t_zoom);

//replot on zoom form
Zoom_Chart.Series[0].Clear;
 Zoom_Chart.Series[1].Clear;
  Zoom_Chart.Series[2].Clear;
   Zoom_Chart.Series[3].Clear;
    Zoom_Chart.Series[4].Clear;
     Zoom_Chart.Series[5].Clear;
      Zoom_Chart.Series[6].Clear;
       Zoom_Chart.Series[7].Clear;
        Zoom_Chart.Series[8].Clear;
         Zoom_Chart.Series[9].Clear;
          Zoom_Chart.Series[10].Clear;
           Zoom_Chart.Series[11].Clear;

 zoom_plot_array_counter := s1_index_array[processed_no] - 400;
 zoom_plot_array_counter_max := APDx_end_index_array[processed_no] + 400;

    repeat
      Zoom_Chart.Series[0].Addxy(Time_array[zoom_plot_array_counter] ,MAP_endo_array[zoom_plot_array_counter]);
      Zoom_Chart.Series[5].Addxy(Time_array[zoom_plot_array_counter], Stimulus_array[zoom_plot_array_counter]*stimulus_scale);
      zoom_plot_array_counter := zoom_plot_array_counter + 1;
    until (zoom_plot_array_counter > zoom_plot_array_counter_max);

    Zoom_Chart.Series[2].AddXY(time_array[APDx_start_index_array[processed_no]],MAP_endo_array[APDx_start_index_array[processed_no]]);
    Zoom_Chart.Series[2].AddXY(time_array[APDx_end_index_array[processed_no]],MAP_endo_array[APDx_end_index_array[processed_no]]);



    Zoom_Chart.Series[3].AddXY(time_array[DI_start_index_array[processed_no]],MAP_endo_array[DI_start_index_array[processed_no]]);
    Zoom_Chart.Series[3].AddXY(time_array[APDx_start_index_array[processed_no]],MAP_endo_array[APDx_start_index_array[processed_no]]);

    Zoom_Chart.Series[6].AddXY(time_array[S1_index_array[processed_no]] , Max_stimulus * stimulus_scale );
    Zoom_Chart.Series[6].AddXY(time_array[S2_index_array[processed_no]] , Max_stimulus * stimulus_scale );

    Zoom_Chart.Series[7].AddXY(time_array[V1_index_array[processed_no]],MAP_endo_array[V1_index_array[processed_no]]);
    Zoom_Chart.Series[7].AddXY(time_array[V2_index_array[processed_no]],MAP_endo_array[V2_index_array[processed_no]]);

    Zoom_Chart.Series[8].AddXY(time_array[rmp_index_array[processed_no]],MAP_endo_array[rmp_index_array[processed_no]]);
    Zoom_Chart.Series[8].AddXY(time_array[V2_index_array[processed_no]],MAP_endo_array[v2_index_array[processed_no]]);

    Zoom_Chart.Series[10].AddXY(time_array[S2_index_array[processed_no]] , Max_stimulus * stimulus_scale);
    Zoom_Chart.Series[10].AddXY(time_array[v2_index_array[processed_no]] , MAP_Endo_Array[v2_index_array[processed_no]]);




end;

end.


