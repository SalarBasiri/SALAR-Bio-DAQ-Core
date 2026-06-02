unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DaqUtils, ExtCtrls, StdCtrls, ComCtrls, OleCtrls, BDaqOcxLib_TLB, Math,
  TeeProcs, TeEngine, Chart, Series, Grids;

type
  TWMCopyData = packed record
  Msg: Cardinal;
  From: HWND;//Handle of the Window that passed the data
  CopyDataStruct: PCopyDataStruct; //data passed
  Result: Longint;//Use it to send a value back to the "Sender"
end;


type
   single_ch = array [0..50000000] of single;
       huge_real_array =  array[0..3,0..25000000] of single;
         real_array_small = array [0 .. 10000] of single;
         word_array_small = array[0..10000] of word;
         int64_array_small = array[0..10000] of int64;

  TMainForm = class(TForm)
    DataView: TPaintBox;
    Label1: TLabel;
    chanDataList: TListView;
    Label2: TLabel;
    divTrackBar: TTrackBar;
    BufferedAiCtrl1: TBufferedAiCtrl;
    divTimeLabel: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    xRLabel: TLabel;
    xLLabel: TLabel;
    yTLabel: TLabel;
    yMLabel: TLabel;
    yBLabel: TLabel;
    Label3: TLabel;
    Chart2: TChart;
    Series2: TLineSeries;
    Chart3: TChart;
    Series3: TLineSeries;
    Chart4: TChart;
    Series4: TLineSeries;
    SaveDialog1: TSaveDialog;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Edit1: TEdit;
    Label5: TLabel;
    Button3: TButton;
    Button4: TButton;
    Timer1: TTimer;
    InstantDoCtrl1: TInstantDoCtrl;
    Timer2: TTimer;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    TrackBar2: TTrackBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    InstantAoCtrl1: TInstantAoCtrl;
    txtboxValueA: TEdit;
    Button5: TButton;
    Label10: TLabel;
    Button6: TButton;
    txtboxValueB: TEdit;
    AI_AO_Handle: TTimer;
    Label11: TLabel;
    ch1_show: TCheckBox;
    ch2_show: TCheckBox;
    ch3_show: TCheckBox;
    ch4_show: TCheckBox;
    Label12: TLabel;
    Button7: TButton;
    Label13: TLabel;
    Button8: TButton;
    Edit2: TEdit;
    UpDown1: TUpDown;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    BtnStart: TButton;
    BtnPause: TButton;
    BtnStop: TButton;
    Button1: TButton;
    CheckBox1: TCheckBox;
    ch2_filter: TCheckBox;
    ch1_filter: TCheckBox;
    ch3_filter: TCheckBox;
    ch0_filter: TCheckBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    GroupBox7: TGroupBox;
    TrackBar1: TTrackBar;
    Label4: TLabel;
    ch1_period: TCheckBox;
    ch0_period: TCheckBox;
    ch2_period: TCheckBox;
    Series9: TLineSeries;
    Series11: TLineSeries;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Series12: TPointSeries;
    Series13: TPointSeries;
    Series14: TPointSeries;
    ch1_period_label: TLabel;
    ch0_period_label: TLabel;
    ch3_period: TCheckBox;
    Label25: TLabel;
    ch2_period_label: TLabel;
    ch3_period_label: TLabel;
    Series15: TLineSeries;
    Series16: TPointSeries;
    Series10: TLineSeries;
    Show_timer: TTimer;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    FIR_timer: TTimer;
    stimulus_on_ch1: TCheckBox;
    stimulus_on_ch2: TCheckBox;
    stimulus_on_ch3: TCheckBox;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    restitution_timer: TTimer;
    Chart8: TChart;
    Series23: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    ch0_trackbar: TTrackBar;
    ch1_trackbar: TTrackBar;
    ch2_trackbar: TTrackBar;
    ch3_trackbar: TTrackBar;
    ch0_amp_th_label: TLabel;
    ch1_amp_th_label: TLabel;
    ch2_amp_th_label: TLabel;
    ch3_amp_th_label: TLabel;
    Label23: TLabel;
    base_line_trackbar: TTrackBar;
    Label29: TLabel;
    Label30: TLabel;
    Series24: TLineSeries;
    Series25: TLineSeries;
    apdx_trackbar: TTrackBar;
    Label31: TLabel;
    Edit9: TEdit;
    Button26: TButton;
    ch0_fir_setting_panel: TPanel;
    Label14: TLabel;
    Edit3: TEdit;
    UpDown2: TUpDown;
    Button27: TButton;
    Button28: TButton;
    ch1_fir_setting_panel: TPanel;
    Label15: TLabel;
    Edit4: TEdit;
    UpDown3: TUpDown;
    Button29: TButton;
    Button30: TButton;
    ch2_fir_setting_panel: TPanel;
    Label16: TLabel;
    Edit5: TEdit;
    UpDown4: TUpDown;
    Button31: TButton;
    Button32: TButton;
    ch3_fir_setting_panel: TPanel;
    Label17: TLabel;
    Edit6: TEdit;
    UpDown5: TUpDown;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Label28: TLabel;
    Label24: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Panel1: TPanel;
    Chart7: TChart;
    Button25: TButton;
    Series18: TPointSeries;
    Panel2: TPanel;
    Stimulus_dependent: TRadioButton;
    Stimulus_independent: TRadioButton;
    Button24: TButton;
    StringGrid1: TStringGrid;
    on_click_resti_btn: TButton;
    Chart9: TChart;
    Series29: TPointSeries;
    normal_radio_button: TRadioButton;
    af_vf_radio_button: TRadioButton;
    Series30: TLineSeries;
    Series31: TLineSeries;
    Panel3: TPanel;
    Chart10: TChart;
    ch0_rr_radio_btn: TRadioButton;
    ch1_rr_radio_btn: TRadioButton;
    ch2_rr_radio_btn: TRadioButton;
    ch3_rr_radio_btn: TRadioButton;
    Series32: TBarSeries;
    Series33: TBarSeries;
    Series34: TBarSeries;
    Series35: TBarSeries;
    Resti_calc_btn: TButton;
    Button39: TButton;
    RR_calc_timer: TTimer;
    Button40: TButton;
    Button41: TButton;
    Label39: TLabel;
    Button42: TButton;
    Button43: TButton;
    Label40: TLabel;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Series36: TBarSeries;
    Series37: TBarSeries;
    Series38: TBarSeries;
    Series39: TBarSeries;
    RR_memo: TMemo;
    OpenDialog1: TOpenDialog;
    GroupBox9: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ListBox1: TListBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    GroupBox8: TGroupBox;
    Resti_global_calculation: TCheckBox;
    slow_motion: TCheckBox;
    RadioButton3: TRadioButton;
    only_test_process_radio_btn: TRadioButton;
    only_test_calc_btn: TButton;
    delta_T_label: TLabel;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Panel4: TPanel;
    ch1_restitution: TRadioButton;
    ch2_restitution: TRadioButton;
    ch3_restitution: TRadioButton;
    Series7: TPointSeries;
    Series8: TPointSeries;
    Label41: TLabel;
    Label42: TLabel;
    Series17: TLineSeries;
    Label43: TLabel;
    Reprocess_Btn: TButton;
    Label44: TLabel;
    reprocess_timer: TTimer;
    pre_resti_timer: TTimer;
    period_timer: TTimer;
    Label18: TLabel;
    Series5: TLineSeries;
    reprocess_resti_btn: TButton;
    Button17: TButton;
    Panel5: TPanel;
    Label19: TLabel;
    Label26: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    UpDown6: TUpDown;
    UpDown7: TUpDown;
    Button51: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    CheckBox2: TCheckBox;
    GroupBox6: TGroupBox;
    Memo1: TMemo;
    Memo2: TMemo;
    auto_base: TCheckBox;
    Series6: TPointSeries;
    Series22: TLineSeries;
    Panel6: TPanel;
    Label27: TLabel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Label45: TLabel;
    zoom_to_test_check_box: TCheckBox;
    min_as_base: TCheckBox;
    procedure BtnStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure divTrackBarChange(Sender: TObject);
    procedure chanDataListCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure BufferedAiCtrl1CacheOverflow(Sender: TObject;
      Offset: Integer; Count: Integer);
    procedure BufferedAiCtrl1DataReady(Sender: TObject;
      Offset: Integer; Count: Integer);
    procedure BufferedAiCtrl1Overrun(Sender: TObject;
      Offset: Integer; Count: Integer);
    procedure BtnStopClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AI_AO_HandleTimer(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure ch1_showClick(Sender: TObject);
    procedure ch2_showClick(Sender: TObject);
    procedure ch3_showClick(Sender: TObject);
    procedure ch4_showClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure ch0_filterClick(Sender: TObject);
    procedure ch1_filterClick(Sender: TObject);
    procedure ch2_filterClick(Sender: TObject);
    procedure ch3_filterClick(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure ch0_periodClick(Sender: TObject);
    procedure ch1_periodClick(Sender: TObject);
    procedure ch2_periodClick(Sender: TObject);
    procedure ch3_periodClick(Sender: TObject);
    procedure ch1_restitutionClick(Sender: TObject);
    procedure ch2_restitutionClick(Sender: TObject);
    procedure ch3_restitutionClick(Sender: TObject);
    procedure Show_timerTimer(Sender: TObject);
    procedure BtnPauseClick(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure FIR_timerTimer(Sender: TObject);
    procedure stimulus_on_ch1Click(Sender: TObject);
    procedure stimulus_on_ch2Click(Sender: TObject);
    procedure stimulus_on_ch3Click(Sender: TObject);
    procedure restitution_timerTimer(Sender: TObject);
    procedure slow_motionClick(Sender: TObject);
    procedure Stimulus_dependentClick(Sender: TObject);
    procedure Stimulus_independentClick(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Resti_global_calculationClick(Sender: TObject);
    procedure ch0_trackbarChange(Sender: TObject);
    procedure ch1_trackbarChange(Sender: TObject);
    procedure ch2_trackbarChange(Sender: TObject);
    procedure ch3_trackbarChange(Sender: TObject);
    procedure Resti_calc_btnClick(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure base_line_trackbarChange(Sender: TObject);
    procedure apdx_trackbarChange(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure on_click_resti_btnClick(Sender: TObject);
    procedure af_vf_radio_buttonClick(Sender: TObject);
    procedure normal_radio_buttonClick(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure RR_calc_timerTimer(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure only_test_process_radio_btnClick(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Reprocess_BtnClick(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure only_test_calc_btnClick(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure pre_resti_timerTimer(Sender: TObject);
    procedure period_timerTimer(Sender: TObject);
    procedure reprocess_timerTimer(Sender: TObject);
    procedure reprocess_resti_btnClick(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure auto_baseClick(Sender: TObject);
    procedure min_as_baseClick(Sender: TObject);

  //  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    { Private declarations } //AI
    m_graph : TSimpleGraph;
   // ch2_graph : TSimpleGraph;
    isFirstOverRun : Boolean;
    dataScaledArray : array of Double;
    ch_data_single_array : array [0..7,0..2048] of single;
    time_array : array [0..1024] of single;



        { Private declarations }   //DO
    m_portNum : array[0..3] of TEdit;
    m_portHex : array[0..3] of TEdit;
    m_image : array[0..3, 0..7] of TImage;
    portDatas : array[0..3] of Byte;
    m_bitmap : array[0..2] of TBitmap;

    dataScaled : OleVariant;



        { Private declarations }//  AO
    channelStart : Integer;
    channelCount : Integer;
    dataScaled_AO : OleVariant;
    m_wavePtIdx : array[0..1] of Integer;
    m_waveSeled : array[0..1] of Boolean;
    bitmap : TBitmap;
    procedure ConfigurePanel;


    procedure HandleError(err : ErrorCode);
    procedure InitializeGraph;
    procedure InitializePortState;
      procedure WMCopyData(var Msg : TWMCopyData) ; message WM_COPYDATA;

  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
     c, max_length : integer;
     dt : single;
     global_data_counter : int64;
     window_width : integer;
     daq_file , save_file , temp_file: file;
     save_file_labchart : text;

     ch0_data,ch1_data,ch2_data,ch3_data,ch4_data,ch5_data,ch6_data,ch7_data : single;
     t : single;
     s : string;
     save_flag : string;


     max_freq_count,freq_count  : integer;
     flag : string;
     show_on_screen : boolean;

     i_desired ,v_control : single;

     ai_ao_count : integer;
     chart_show_count , new_h: integer;
     z_freq : integer;
     z_calc_flag : boolean;

     sum_v1 , sum_v2 , my_z : single;

     max_chart_block : word;
     block_counter , global_block_counter: word;

          save_array : huge_real_array;
          show_array : huge_real_array;
          FIR_array : huge_real_array;

          f0,f1,f2,f3,f4,f5 : integer;
          n0 , n1 , n2 , n3, n4 , n5 : integer;

f_cutoff_0 ,f_cutoff_1 ,f_cutoff_2 ,f_cutoff_3 ,f_cutoff_4 ,f_cutoff_5  : single;

ch0_fir_window_width , ch1_fir_window_width , ch2_fir_window_width : integer;
ch3_fir_window_width , ch4_fir_window_width , ch5_fir_window_width : integer;


ch0_fir_flag , ch1_fir_flag , ch2_fir_flag : boolean;
ch3_fir_flag , ch4_fir_flag , ch5_fir_flag : boolean;

       start_counter , stop_counter ,data_counter : int64;
       ch0_sum , ch1_sum , ch2_sum : single;
       ch3_sum , ch4_sum , ch5_sum : single;

       ch0_period_flag , ch1_period_flag , ch2_period_flag : boolean;
       ch3_period_flag , ch4_period_flag , ch5_period_flag : boolean;

       ch0_amp , ch1_amp , ch2_amp : single;
       ch3_amp , ch4_amp , ch5_amp : single;

       min_amp , max_amp , amp : single;
       
       point1 , point2 , point3 : single;

       t1_ch0 , t2_ch0  ,dif_t_ch0 : single;
       t1_ch1 , t2_ch1  ,dif_t_ch1 : single;
       t1_ch2 , t2_ch2  ,dif_t_ch2 : single;
       t1_ch3 , t2_ch3  ,dif_t_ch3 : single;
       t1_ch4 , t2_ch4  ,dif_t_ch4 : single;
       t1_ch5 , t2_ch5  ,dif_t_ch5 : single;

       th : single;



       ch1_resti_flag , ch2_resti_flag , ch3_resti_flag : boolean;

       Mean_Stimulus  , MAP_Threshold: real;

       start_index , final_index : int64;


               Max_MAP , MAP_endo_Max1 : real;

               MAP_endo_Min_index : int64;
        MAP_endo_Max1_index : int64;
        my_MAP : real;

        min_MAP , MAP_endo_Min : real;
        MAP_endo_Min1_index : int64;

        APDx_Value , apdx_scale : real;
        slope : single;
        MAP_endo_Min1 : real;
        
  APDx_start, APDx_end , DI_Start, DI_end , ERP : real;
  APDx_start_index, APDx_end_index , DI_Start_index, DI_end_index : int64;

  DI , di_threshold  , apdx_threshold : real;

  Di_Min , Di_Max : real;
  apdx : real;


  t_max1 , t_min1 : real;


  
//FIR Filter Variables
filter_length , M , M_2 , n  : integer;
Sampling_frequency , f_cut_off_Hz: integer;
f_cut_off : real;
w_lpf , w_hamming , w_filter : real_array_small;
moving_counter : int64;
sum : single;
MAP_endo_array , stimulus_array : single_ch;
FIR_Scale : real;
w_filter_ch0 : real_array_small;
w_filter_ch1 : real_array_small;
w_filter_ch2 : real_array_small;
w_filter_ch3 : real_array_small;
w_filter_ch4 : real_array_small;
w_filter_ch5 : real_array_small;
w_filter_ch6 : real_array_small;
w_filter_ch7 : real_array_small;

signal_ave : single;


//FIR Filter Variables

local_counter , local_show_counter : int64;

   Block_time_length , block_show_max : real;
   
     i , j : int64;

      max_show_counter : int64;

      show_timer_interval : integer;

      virtual_data : single;

      array_counter : int64;


      show_stimulus_flag1 , show_stimulus_flag2 , show_stimulus_flag3 : boolean;
      array_counter_resti , stop_process_index : int64;

      mean_map : single;

      trace_counter  , offset_counter: int64;
      APA : single;
      Processed_No : int64;

      slow_motion_flag : boolean;

      stimulus_dependent_flag : boolean;
      resti_global_calculation_flag : boolean;

      local_counter_table  , max_local_counter_table : word;

      ch0_max_percent , ch1_max_percent , ch2_max_percent : real;
      ch3_max_percent , ch4_max_percent , ch5_max_percent : real;


   min_amp_ch0 , max_amp_ch0 : real;
   min_amp_ch1 , max_amp_ch1 : real;
   min_amp_ch2 , max_amp_ch2 : real;
   min_amp_ch3 , max_amp_ch3 : real;

 ch0_amp_th , ch1_amp_th : real;
 ch2_amp_th , ch3_amp_th : real;

  base_line : single;
  scale_amp : single;

  current_file_name : string;

     l  : integer;

    OldFile, NewFile: String;

   my_file : file;
   save_to_file_buffer , load_from_file_buffer : array [0..4] of single;
   meta_data_string : string;


  show_time_counter  : int64;
  show_time_value : single;


  offset_index : int64;

  on_click_resti_index : int64;

  array_counter_resti_2 : int64;
  stimulus_th : single;

  MAP_endo_max : Single;
      MAP_endo_max_index : int64;
       S1_index  , S2_index : int64;
       S1S2  , S2_V2 : single;
       Scale_Factor : single;
       New_Scaled_MAP : single;

 //AF VF Variables
 af_vf_calc_flag : boolean;
 ch0_rr_array , ch1_rr_array , ch2_rr_array , ch3_rr_array : real_array_small;
 ch0_rr_count , ch1_rr_count , ch2_rr_count , ch3_rr_count : word_array_small;
 ch0_period_index , ch1_period_index , ch2_period_index , ch3_period_index : word;
 calc_timer : integer;
 RR_calc_counter : integer;
   current_period : single;
  period_index : integer;
  max_chart : integer;
  rr_file_name : string;
  rr_file : textfile;


  //test pulse process vaariables
  all_pulse_process_flag : boolean;
  delta_t_pulse : single;
  t1_pulse , t2_pulse : single;
  difference_index : int64;
  noise_check : single;
  noise_flag : boolean;
  t1_index , t2_index : int64;
  pulse_index_array : int64_array_small;
  pulse_index_counter : integer;
  S1S2_array , RMS_array : real_array_small;
  ave : single;
  c1 : integer;
  difference_period : single;
  once_process_flag : boolean;

  start_process_index , final_process_index : int64;
  end_of_block_counter_limit : int64;
  edge_flag : boolean;
  array_counter_resti_lower_limit : int64;

  t1_ch0_resti , t2_ch0_resti , dif_t_ch0_resti : single;
  S1S2_ave : single;
  S1S2_Array_index : word;
  new_s1s2_flag : boolean;
  max_amp_stimulus ,min_amp_stimulus : Single;
  max_amp_MAP , min_amp_MAP : Single;
  scrol_percent : integer;
  APD_Slope , DI_Slope : single;

  MAP_V1_index , MAP_V2_index : int64;
  MAP_V1_Value , MAP_V2_Value : single;
  V1V2 : single;
  //some save variable
  string_grid_file : textfile;

  //Scaling Variables
   a_factor_ch0 : single;
 b_factor_ch0 :single;

 a_factor_ch1 :single;
 b_factor_ch1 :single;

 a_factor_ch2 :single;
 b_factor_ch2 :single;

 a_factor_ch3 :single;
 b_factor_ch3 :single;
 
 scale_equ_index : integer;

 //auto base variable
 base_sum , base_ave : single;
 base_count : int64;
 auto_base_flag : boolean;
 min_as_base_flag : boolean;
 
implementation

uses Unit1;

procedure TMainForm.WMCopyData(var Msg: TWMCopyData) ;
var
s : string;
begin
s := PChar(Msg.CopyDataStruct.lpData) ;
if ((s = 'start') and (normal_radio_button.Checked = true)) then
begin
resti_global_calculation.Checked := true;
t1_ch0 := 0;
end;
if ((s = 'stop') and (normal_radio_button.Checked = true)) then resti_global_calculation.Checked := false;

msg.Result := 2006;
end;


{$R *.dfm}

procedure resti_calc_procedure;
begin
//************************************************************************************************************************
  // label30.caption := floattostr(trunc(base_line*100)/100);
    APDx_Value := MAP_endo_Max1 - (apdx_scale * (MAP_endo_Max1 - base_line));

//*************************************************************************************************
//find falling edge for DI Start
    repeat
      array_counter_resti := array_counter_resti + 1;
    until ( ((MAP_endo_array[array_counter_resti] >= APDx_Value) and (MAP_endo_array[array_counter_resti+1] < APDx_Value))  or (array_counter_resti > offset_index - max_show_counter + stop_process_index));

    DI_start_index := array_counter_resti;
    DI_start := DI_start_index * dt;



//*************************************************************************************************
//find rising edge for DI end and APD Start
    repeat
      array_counter_resti := array_counter_resti + 1;
    until ( ((MAP_endo_array[array_counter_resti] <= APDx_Value) and (MAP_endo_array[array_counter_resti+1] > APDx_Value))  or (array_counter_resti > offset_index - max_show_counter + stop_process_index));

   APDx_start_index := array_counter_resti;
   APDx_start := array_counter_resti * dt;

   DI_end_index := APDx_start_index;
   DI_end := APDx_start;
//*************************************************************************************************

//*************************************************************************************************
//find falling edge for APD end
    MAP_Endo_Max := -1000;
    repeat
      array_counter_resti := array_counter_resti + 1;
      if MAP_endo_array[array_counter_resti] > MAP_endo_max then
      begin
      MAP_endo_max := MAP_endo_array[array_counter_resti];
      MAP_endo_max_index := array_counter_resti;

      end;
    until ( ((MAP_endo_array[array_counter_resti] >= APDx_Value) and (MAP_endo_array[array_counter_resti+1] < APDx_Value))  or (array_counter_resti > offset_index - max_show_counter + stop_process_index));

    APDx_end_index := array_counter_resti;
    APDx_end := APDx_end_index * dt;
//*************************************************************************************************


//******************************************************************************
//Find falling edge of stimulus
array_counter_resti_2 := DI_start_index;
repeat
array_counter_resti_2 := array_counter_resti_2 + 1;
until ((array_counter_resti_2 > apdx_end_index) or ((stimulus_array[array_counter_resti_2] >= stimulus_th) and (stimulus_array[array_counter_resti_2 + 5] < stimulus_th)));
S2_index := array_counter_resti_2;

S2_V2 := (Map_Endo_Max_index - S2_index) * dt;
S2_V2 := S2_V2 * 1000;

    DI := DI_end - DI_Start;
    APDx := APDx_end - APDx_start;
   // ERP := (DI + APDx) * 1000;
     ERP := (APDx) * 1000;

    DI :=  DI*1000;
    APDx := APDx*1000;
    APA := MAP_endo_Max1 - MAP_endo_Min1_index;


//set value for recursive function
//array_counter_resti setting for next process
array_counter_resti := array_counter_resti - 50;

end;





procedure TMainForm.BtnStartClick(Sender: TObject);
var
   err : ErrorCode;

begin

   err := Success;
   InitializeGraph;

   err := BufferedAiCtrl1.Start;
   if err <> Success then
   begin
      HandleError(err);
      exit;
   end;

   divTrackBar.Enabled := true;
   BtnStart.Enabled := false;
   BtnPause.Enabled := true;
   BtnStop.Enabled := true;

   current_file_name := 'daq_'+formatdatetime('dd_mm_yy__hh_mm_ss', now)+'.sdcdat';
   listbox1.Items.Add(current_file_name);
   assignfile(daq_file,'c:/data/'+current_file_name);


ReWrite(daq_file, 20); //9 * 4 byte = 9 * 1 single variable = 36 byte
//5 * 4 byte = 5 * 1 single variable = 20 byte

//meta data add to file
//file structure
//720 field(single=4byte) first for meta data = 720*4 byte = 2880 byte
meta_data_string := '@0#';
meta_data_string := meta_data_string + inttostr(combobox1.ItemIndex) + '@1#';
meta_data_string := meta_data_string + inttostr(combobox2.ItemIndex) + '@2#';
meta_data_string := meta_data_string + edit10.Text + '@3#';
meta_data_string := meta_data_string + edit11.Text + '@4#';
meta_data_string := meta_data_string + edit12.Text + '@5#';
meta_data_string := meta_data_string + edit13.Text + '@6#';
meta_data_string := meta_data_string + formatdatetime('dd_mm_yy__hh_mm_ss', now)+ '@7#';
l := length(meta_data_string);
for c := l to 719 do meta_data_string := meta_data_string + '_';
l := length(meta_data_string);


for l := 0 to 144 do
begin
c := 1;
   repeat
    save_to_file_buffer[c-1] := ord(meta_data_string[c+l*9]);
    c := c + 1;
   until (c > 5);

     BlockWrite(daq_file, save_to_file_buffer, 1);

end;


t := 0;

save_flag := 'true';
show_on_screen := checkbox1.Checked;

label11.Caption := 'Active';

max_chart_block := trackbar1.Position;
window_width := max_chart_block * 1024;
label4.Caption := inttostr(window_width);

   max_length := trunc(length(dataScaledArray) / 8)-1;
   dt := 1.0 / BufferedAiCtrl1.ConvertClock.Rate;
   //dt recheck
   dt := dt * 1.014;
   label43.Caption := 'Sampling Rate: '+floattostr(trunc(1 / dt))+' S/sec';


ch0_fir_flag := ch0_filter.checked;
ch1_fir_flag := ch1_filter.checked;
ch2_fir_flag := ch2_filter.checked;
ch3_fir_flag := ch3_filter.checked;




ch0_period_flag := ch0_period.checked;
ch1_period_flag := ch1_period.checked;
ch2_period_flag := ch2_period.checked;
ch3_period_flag := ch3_period.checked;

ch0_trackbar.position := 20;
ch1_trackbar.position := 20;
ch2_trackbar.position := 20;
ch3_trackbar.position := 20;

ch0_max_percent := 0.8;
ch1_max_percent := 0.8;
ch2_max_percent := 0.8;
ch3_max_percent := 0.8;
ch4_max_percent := 0.8;
ch5_max_percent := 0.8;



//*********************************************************
max_chart_block := trackbar1.Position;
window_width := max_chart_block * 1024;
label4.Caption := inttostr(window_width);
   chart1.BottomAxis.SetMinMax(0,window_width);
   chart2.BottomAxis.SetMinMax(0,window_width);
   chart3.BottomAxis.SetMinMax(0,window_width);
   chart4.BottomAxis.SetMinMax(0,window_width);
  // chart5.BottomAxis.SetMinMax(0,window_width);
 //  chart6.BottomAxis.SetMinMax(0,window_width);

   {
      Block_time_length := 1024 / 4;
   block_show_max := 1024 / 128;
   show_timer_interval := trunc(Block_time_length / block_show_max);
   show_timer_interval := trunc (show_timer_interval);
    }

    show_timer_interval := 20;
   show_timer.Interval := show_timer_interval;
   trace_counter := 0;

   stringgrid1.Cells[0,0] := 'S No';
   stringgrid1.Cells[1,0] := 'APA';
   stringgrid1.Cells[2,0] := 'APD'+edit9.Text;
   stringgrid1.Cells[3,0] := 'DI';
   stringgrid1.Cells[4,0] := 'S2V2';
   stringgrid1.Cells[5,0] := 'S1S2';
   stringgrid1.Cells[6,0] := 'V1V2';
   stringgrid1.Cells[7,0] := 'index';

   Processed_No := 1;
   show_time_counter := 1;
   local_show_counter := 0;
   block_counter := 0;
   global_data_counter := 0;
   global_block_counter := 0;
   

   button1.Enabled := false;
   button38.Enabled:= false;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
   i, j : Integer;
   item : TListItem;
   devNum : Longint;
   devDesc : WideString;
   devMode : AccessMode;
   modIndex : Longint;
   err : ErrorCode;
  Path    : String;
  SR      : TSearchRec;




begin
   //The default device of project is demo device, users can choose other devices according to their needs.
   if not BufferedAiCtrl1.Initialized then
   begin
      MessageBox(self.WindowHandle, 'Please select a device with DAQNavi wizard!', 'Advanced DAQ', MB_OK or MB_ICONERROR);
      Application.Terminate;
      exit;
   end;

   //set title of the form.
   BufferedAiCtrl1.getSelectedDevice(devNum, devDesc, devMode, modIndex);
   self.Caption := 'Advanced DAQ By Salar @ Golestan';

   //initialize the isFirstOverRun
   isFirstOverRun := true;

   BtnStart.Enabled := true;
   BtnPause.Enabled := false;
   BtnStop.Enabled := false;

   self.DoubleBuffered := true;

   BufferedAiCtrl1.Streaming := true;  //specify the running mode: streaming-buffered

   err := Success;
   err := BufferedAiCtrl1.Prepare;
   if err <> Success then
   begin
      HandleError(err);
      exit;
   end;

   //create the array of dataScaled
   dataScaled := VarArrayCreate([0, BufferedAiCtrl1.BufferCapacity - 1], varDouble);

   //initialize a graph with a paint box control to draw Ai data.
   m_graph := TSimpleGraph.Create(dataView);

  // ch2_graph := TSimpleGraph.Create(paintbox1);
   
   chanDataList.SmallImages := TImageList.Create(self);
   chanDataList.SmallImages.Height := 20;
   for i := 0 to 1 do
   begin
      item := chanDataList.Items.Add;
      for j := 0 to 8 do
         item.SubItems.Add('  ');
   end;

   divTrackBar.Enabled := false;
   
   InitializeGraph;


      InitializePortState;



//AO Config
   //initialize these variables
   channelStart := 0;
   channelCount := 0;


   dataScaled_AO := VarArrayCreate([0, 1], varDouble);


   //initialize a timer which drive the data acquisition.
   Timer2.Interval := 100;

   //The default device of project is demo device, users can choose other devices according to their needs.
   if not InstantAoCtrl1.Initialized then
   begin
      MessageBox(self.WindowHandle, 'Please select a device with DAQNavi wizard!', 'StaticAO', MB_OK or MB_ICONERROR);
      Application.Terminate;
      exit;
   end;

   //set title of the form.
   InstantAoCtrl1.getSelectedDevice(devNum, devDesc, devMode, modIndex);
   label10.Caption := 'Static AO(' + devDesc + ')';

   ConfigurePanel;
  // Timer2.Enabled := true;


               
{
   //Reset Pulse Maker AVR
   portdatas[0] := portdatas[0] or 8;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);

portdatas[0] := portdatas[0] and 247;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);


sleep(10);

portdatas[0] := portdatas[0] or 8;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);

}
mainform.Left := 0;
mainform.Width := 1450;
mainform.Top := 0;
mainform.Height := 1000;

chart_show_count := 6;
ch0_trackbar.position := 20;
ch1_trackbar.position := 20;
ch2_trackbar.position := 20;
ch3_trackbar.position := 20;

panel3.Height := 410;

stimulus_dependent_flag := false;
 max_chart := 500;

 all_pulse_process_flag := true;



 a_factor_ch0 := 1;
 b_factor_ch0 := 0;

 a_factor_ch1 := 1;
 b_factor_ch1 := 0;

 a_factor_ch2 := 1;
 b_factor_ch2 := 0;

 a_factor_ch3 := 1;
 b_factor_ch3 := 0;


//Load last files in c:/data directory
    Path:='c:/data/'; //Get the path of the selected file
           if FindFirst(Path + '*.*', faArchive, SR) = 0 then
          begin
            repeat
                listbox1.Items.Add(SR.Name); //Fill the list
            until FindNext(SR) <> 0;
            FindClose(SR);
          end;


end;

procedure TMainForm.ConfigurePanel;
begin
   if InstantAoCtrl1.ChannelCount = 1 then
   begin
      channelStart := 0;
      channelCount := 1;

   end
   else
   begin
      channelStart := 0;
      channelCount := 2;
   end;

end;



procedure TMainForm.InitializePortState;
var
   i, j, index : Integer;
   portData : Byte;
   portDir : Byte;
   err : ErrorCode;
   portDirs : array of IPortDirection;
begin
   i := 0;
   portData := 0;
   portDir := $FF;
   err := Success;

  while (i < 4) and ((i + 0) <  InstantDoCtrl1.Features.PortCount) do
   begin
      err := InstantDoCtrl1.ReadPort(i + 0, portData);
      if err <> Success then
      begin
         HandleError(err);
         exit;
      end;

      m_portNum[i].Text := IntToStr(i + 0);
      m_portHex[i].Text := Format('%.2X', [portData]);
      portDatas[i] := portData;

      //set the port direction
      if InstantDoCtrl1.Features.PortProgrammable then
      begin
         portDirs := InstantDoCtrl1.PortDirection;
         portDir := portDirs[i].Direction;
      end;

      //Set image state
      for j := 0 to 7 do
      if (portDir shr j) and 1 = 0 then  //Bit direction is input.
      begin
       //  m_image[i, j].Picture.Bitmap := m_bitmap[2]
      end
      else
      begin
         index := (portData shr j) and 1;
       //  m_image[i, j].Picture.Bitmap := m_bitmap[index];
       //  m_image[i, j].Tag := (portData shr j) and 1;
        // m_image[i, j].Enabled := true;
      end;
      
      i := i + 1;
   end;
    
end;

procedure TMainForm.HandleError(err : ErrorCode);
var
   utility : IBDaqUtility;
   errorMessage : WideString;
begin
   utility := CoBDaqUtility.Create();
   utility.EnumToString('ErrorCode', err, errorMessage);

   if err <> Success then
      MessageBox(0, PChar(Format('error: %s!', [errorMessage])), 'Error', MB_OK or MB_ICONERROR);
end;

procedure TMainForm.divTrackBarChange(Sender: TObject);
var
   xmax, xmin : single;
   ustr : string;
begin
   if not divTrackBar.Enabled then exit;

   m_graph.ScaleXCord(divTrackBar.Position);

   //ch2_graph.ScaleXCord(divTrackBar.Position);

   xmin := 0;
   xmax := m_graph.XCordTimeDiv * 10 + xmin;



   if not (xmax < 1000) then
   begin
      if divTimeLabel.Caption = 'us' then
         ustr := 'ms'
      else
         ustr := 'Sec';
         
      xmin := xmin / 1000;
      xmax := xmax / 1000;
   end
   else
      ustr := divTimeLabel.Caption;

   xLLabel.Caption := FloatToStr(xmin) + ustr;
   xRLabel.Caption := FloatToStr(xmax) + ustr;
end;

procedure TMainForm.chanDataListCustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
var
   plot : Integer;
   clr : TColor;
begin
   plot := Item.Index * 8 + SubItem - 1;

   if plot < BufferedAiCtrl1.ScanChannel.ChannelCount then
      clr := m_graph.GetPlotColor(plot)
   else
      clr := clWhite;

   Sender.Canvas.Brush.Color := clr;
end;

procedure TMainForm.BufferedAiCtrl1CacheOverflow(Sender: TObject;
  Offset: Integer; Count: Integer);
begin
//   MessageBox(0, 'BufferedAiCacheOverflow', 'Advanced DAQ', MB_OK or MB_ICONERROR);
end;

procedure TMainForm.BufferedAiCtrl1DataReady(Sender: TObject;
  Offset: Integer; Count: Integer);
var
   err : ErrorCode;
   dataPerPlot : Integer;

begin
   err := Success;

   //The BufferedAiCtrl has been disposed.
   if BufferedAiCtrl1.State = Idle then exit;

   //get data
   err := BufferedAiCtrl1.GetData(Count, dataScaled);
   if err <> Success then
   begin
      HandleError(err);
      exit;
   end;

   dataScaledArray := dataScaled;





for c := 0 to 1023 do
begin
    ch0_data := dataScaledArray[c*4];
    ch1_data := dataScaledArray[c*4+1];
    ch2_data := dataScaledArray[c*4+2];
    ch3_data := dataScaledArray[c*4+3];

   save_array[0,global_data_counter] := (a_factor_ch0 * ch0_data) + b_factor_ch0;
   save_array[1,global_data_counter] := (a_factor_ch1 * ch1_data) + b_factor_ch1;
   save_array[2,global_data_counter] := (a_factor_ch2 * ch2_data) + b_factor_ch2;
   save_array[3,global_data_counter] := (a_factor_ch3 * ch3_data) + b_factor_ch3;
    t := t + dt;
    global_data_counter := global_data_counter + 1;

end; //for c := 0 to 1023 do

   block_counter := block_counter + 1;
   label28.Caption := 'Time: '+ floattostr(trunc(t*1000) / 1000);







if ((show_on_screen) and (block_counter > max_chart_block)) then
begin

    min_amp_ch0 := chart1.Series[0].MinYValue;
    max_amp_ch0 := chart1.Series[0].MaxYValue;

    min_amp_ch1 := chart2.Series[0].MinYValue;
    max_amp_ch1 := chart2.Series[0].MaxYValue;

    min_amp_ch2 := chart3.Series[0].MinYValue;
    max_amp_ch2 := chart3.Series[0].MaxYValue;

    min_amp_ch3 := chart4.Series[0].MinYValue;
    max_amp_ch3 := chart4.Series[0].MaxYValue;


   chart1.Series[0].Clear;
   chart1.Series[1].Clear;
   chart1.Series[2].Clear;

   chart2.Series[0].Clear;
     chart2.Series[1].clear;
     chart2.Series[2].clear;
     chart2.Series[3].clear;


    chart3.Series[0].Clear;
         chart3.Series[1].clear;
         chart3.Series[2].clear;
         chart3.Series[3].clear;

    chart4.Series[0].Clear;
         chart4.Series[1].clear;
         chart4.Series[2].clear;
         chart4.Series[3].clear;



   global_block_counter := global_block_counter + 1;
   label18.Caption := inttostr(global_block_counter);
   
   offset_index := offset_index + global_data_counter - 1024;
   label38.Caption := inttostr(offset_index);

   //max buffer size limit
   if offset_index > (100*global_data_counter) then offset_index := 0;


   if resti_global_calculation_flag then
   begin
    stop_process_index := window_width - 2;
    end_of_block_counter_limit := offset_index - max_show_counter + stop_process_index;
    pre_resti_timer.Enabled := true;

   end;

   local_show_counter := 0;
   block_counter := 0;
   global_data_counter := 0;



end //if ((show_on_screen) and (block_counter > max_chart_block)) then
else //if ((show_on_screen) and (block_counter > max_chart_block)) then
begin
      FIR_timer.Enabled := true;

end;



end;

procedure TMainForm.BufferedAiCtrl1Overrun(Sender: TObject;
  Offset: Integer; Count: Integer);
begin
{   if isFirstOverRun then
   begin
      MessageBox(0, 'BufferedAiOverrun', 'Advanced DAQ', MB_OK or MB_ICONERROR);
      isFirstOverRun := false;
   end;   }
end;

procedure TMainForm.InitializeGraph;
var
   vrgUnit : ValueUnit;
   vrgRange : MathInterval;
   ustr : string;
   xmax,xmin: single;
begin
   //time track bar
   divTrackBar.Max        := MaxInt;
   divTrackBar.Min        := 0;
   divTrackBar.Position   := Trunc(100 * dataView.Width / BufferedAiCtrl1.ConvertClock.Rate);
   divTimeLabel.Caption   := 'ms';

   //need use 'us'
   if not (BufferedAiCtrl1.ConvertClock.Rate < 10000) then
   begin
      divTrackBar.Position   := Trunc(100 * dataView.Width / (BufferedAiCtrl1.ConvertClock.Rate / 1000));
      divTimeLabel.Caption   := 'us';
   end;

   divTrackBar.Max    := 4 * divTrackBar.Position;
   divTrackBar.Min    := Max(divTrackBar.Position div 10, 1);

   //simple graph init
   m_graph.OverOneScreenMode := EndScreen;
   m_graph.XCordTimeDiv := divTrackBar.Position;
   m_graph.XCordOffset  := 0;

   //X-Axis
   xmin := m_graph.XCordOffset;
   xmax := m_graph.XCordTimeDiv * 10 + xmin;
   if not (xmax < 1000) then
   begin
      if divTimeLabel.Caption = 'us' then
         ustr := 'ms'
      else
         ustr := 'Sec';
         
      xmin := xmin / 1000;
      xmax := xmax / 1000;
   end
   else
   begin
      ustr := divTimeLabel.Caption;
   end;
   
   xLLabel.Caption := FloatToStr(xmin) + ustr;
   xRLabel.Caption := FloatToStr(xmax) + ustr;

   // Y-Axis
   vrgRange.Max := 10;
   vrgRange.Min := -10;
   vrgUnit := Volt;
   m_graph.YCordMax := vrgRange.Max;
   m_graph.YCordMin := vrgRange.Min;
   case vrgUnit of
      Kilovolt: ustr := 'kV';
      Volt:     ustr := 'V';
      Millivolt:
      begin
         ustr := 'mV';
         //the data from device is 'Voltage'
         m_graph.YCordMax := vrgRange.Max / 1000;
         m_graph.YCordMin := vrgRange.Min / 1000;
      end;
      Microvolt:
      begin
         ustr := 'uV';
         // the data from device is 'Voltage'
         m_graph.YCordMax := vrgRange.Max / (1000 * 1000);
         m_graph.YCordMin := vrgRange.Min / (1000 * 1000);
      end;
      Kiloampere:  ustr := 'kA';
      Ampere:      ustr := 'A';
      Milliampere: ustr := 'mA';
      Microampere: ustr := 'uA';
      CelsiusUnit: ustr := 'C';
   end;

   yTLabel.Caption := FloatToStr(vrgRange.Max) + ustr;
   yMLabel.Caption := FloatToStr((vrgRange.Max + vrgRange.Min) / 2) + ustr;
   yBLabel.Caption := FloatToStr(vrgRange.Min) + ustr;

   m_graph.Clear;
end;

procedure TMainForm.BtnStopClick(Sender: TObject);
var
   err : ErrorCode;
begin
   err := Success;
   err := BufferedAiCtrl1.Stop;
   if err <> Success then
   begin
      HandleError(err);
      exit;
   end;

   BtnStart.Enabled := true;
   BtnPause.Enabled := false;
   BtnStop.Enabled := false;

   closefile(daq_file);

   m_graph.Clear;

   save_flag := 'flase';

   label11.Caption := 'deactive';
      show_timer.Enabled := false;

   button1.Enabled := true;
   button38.Enabled:= true;
end;

procedure TMainForm.TrackBar1Change(Sender: TObject);
begin
max_chart_block := trackbar1.Position;
window_width := max_chart_block * 1024;
label4.Caption := inttostr(window_width);
   chart1.BottomAxis.SetMinMax(0,window_width);
   chart2.BottomAxis.SetMinMax(0,window_width);
   chart3.BottomAxis.SetMinMax(0,window_width);
   chart4.BottomAxis.SetMinMax(0,window_width);
 //  chart5.BottomAxis.SetMinMax(0,window_width);
 //  chart6.BottomAxis.SetMinMax(0,window_width);

      Block_time_length := 1024 / 4;
   block_show_max := 1024 / 128;
   show_timer_interval := trunc(Block_time_length / block_show_max);
   show_timer_interval := trunc (show_timer_interval);
   show_timer.Interval := show_timer_interval;
end;

procedure TMainForm.Button1Click(Sender: TObject);

begin
if savedialog1.Execute then
begin

  OldFile := 'c:/data/'+current_file_name;
  NewFile := savedialog1.FileName + '_' + current_file_name ;
  If FileExists(OldFile) Then
  Begin
    Try
      If CopyFile(PChar(OldFile), PChar(NewFile), true) Then
        ShowMessage('SDC-DAQ File Has been saved.')
      Else
        ShowMessage('File already exist, try another file name.');
    Except
      On E: Exception Do
        ShowMessage(E.ClassName + ' Error: ' + E.Message);
    End;
  End;

end;
end;

procedure TMainForm.Button3Click(Sender: TObject);
var
c : integer;
   err : ErrorCode;
begin

portdatas[0] := portdatas[0] or 1;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);

portdatas[0] := portdatas[0] and 254;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);

z_freq := 0;
label13.Caption := 'Frequency: '+ inttostr(z_freq);
impedance_form.Label3.Caption := 'Frequency: '+ inttostr(z_freq);
impedance_form.Chart3.Series[0].Clear;

end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
timer1.Enabled := true;
max_freq_count := strtoint(edit1.Text);
z_freq := z_freq + max_freq_count;
freq_count := 0;
flag := 'low';
label13.Caption := 'Frequency: '+ inttostr(z_freq);



end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var
err : ErrorCode;
begin

if flag = 'low' then
begin
portdatas[0] := portdatas[0] or 2;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);

flag := 'hi';
end
else
begin
portdatas[0] := portdatas[0] and 253;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
flag := 'low';

freq_count := freq_count+1;
end;

if freq_count > max_freq_count then timer1.Enabled := false;




end;

procedure TMainForm.Button2Click(Sender: TObject);
var
c : integer;
   err : ErrorCode;
begin

portdatas[0] := portdatas[0] or 8;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);

portdatas[0] := portdatas[0] and 247;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);


sleep(10);

portdatas[0] := portdatas[0] or 8;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);


end;

procedure TMainForm.RadioButton1Click(Sender: TObject);

var
c : integer;
   err : ErrorCode;
begin
{
//AI_AO_Handle
ai_ao_count := 1;
ai_ao_handle.Enabled := true;


//range setting
   portdatas[0] := portdatas[0] and 251;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
  sleep(10);

}
end;

procedure TMainForm.RadioButton2Click(Sender: TObject);

var
c : integer;
   err : ErrorCode;
begin

{
//AI_AO_Handle
ai_ao_count := 1;
ai_ao_handle.Enabled := true;


//range setting
portdatas[0] := portdatas[0] or 4;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);

}
end;

procedure TMainForm.Button5Click(Sender: TObject);

var
   i   : Integer;
   err : ErrorCode;
   dataScaledArray : array of Double;
   utility : IBDaqUtility;
   errorMessage : WideString;
   ch, baseIdx : Integer; 
begin

   ch := 0;
   baseIdx := ch * 3;


   m_waveSeled[ch] := false;
   if ch = 0 then
      dataScaled[ch] := StrToFloat(txtboxValueA.Text)
   else
      dataScaled[ch] := StrToFloat(txtboxValueB.Text);

 // dataScaled_AO := dataScaledArray;
   err := InstantAoCtrl1.WriteChannels(channelStart, channelCount, dataScaled);


  // err := InstantAoCtrl1.WriteChannel()


   utility := CoBDaqUtility.Create();
   utility.EnumToString('ErrorCode', err, errorMessage);
   if err <> Success then
   begin
      Timer1.Enabled := false;
      MessageBox(self.WindowHandle, PChar(Format('Write AO channel failed with error: %s!', [errorMessage])), 'Error', MB_OK or MB_ICONERROR);
   end;

end;

procedure TMainForm.Timer2Timer(Sender: TObject);
{var
   i   : Integer;
   err : ErrorCode;
   dataScaledArray : array of Double;
   utility : IBDaqUtility;
   errorMessage : WideString;
   ch, baseIdx : Integer; }
begin
 {
   ch := 0;
   baseIdx := ch * 3;


   m_waveSeled[ch] := false;
   if ch = 0 then
      dataScaled[ch] := StrToFloat(txtboxValueA.Text)
   else
      dataScaled[ch] := StrToFloat(txtboxValueB.Text);

  dataScaled_AO := dataScaledArray;
   err := InstantAoCtrl1.WriteChannels(channelStart, channelCount, dataScaled);


  // err := InstantAoCtrl1.WriteChannel()


   utility := CoBDaqUtility.Create();
   utility.EnumToString('ErrorCode', err, errorMessage);
   if err <> Success then
   begin
      Timer1.Enabled := false;
      MessageBox(self.WindowHandle, PChar(Format('Write AO channel failed with error: %s!', [errorMessage])), 'Error', MB_OK or MB_ICONERROR);
   end;
             }
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
c : integer;
   err : ErrorCode;

begin




 {  //Reset Pulse Maker AVR
   portdatas[0] := portdatas[0] or 8;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);

portdatas[0] := portdatas[0] and 247;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);


sleep(10);

portdatas[0] := portdatas[0] or 8;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);    }

end;

procedure TMainForm.AI_AO_HandleTimer(Sender: TObject);
var
c : integer;
   err : ErrorCode;
begin
{
if ai_ao_count = 1 then
begin

//1
   err := Success;
   err := BufferedAiCtrl1.Stop;
   if err <> Success then
   begin
      HandleError(err);
      exit;
   end;

end;

if ai_ao_count = 2 then
begin
//2
   label7.Caption := 'Percent: ' + floattostr(trackbar2.Position);
if radiobutton1.Checked then
begin
i_desired := trackbar2.Position/10;
label8.Caption := 'Current: ' + floattostr(i_desired) + ' mA';
v_control := trunc(100*(i_desired+1.2897) / 2.3708) / 100;


end
else
begin
i_desired := trackbar2.Position;
label8.Caption := 'Current: ' + floattostr(i_desired) + ' mA';
v_control := trunc(100*(i_desired+14.23) / 25.062) / 100;


end;
label9.Caption := 'V Control: '+floattostr(v_control)+' V';
txtboxValueA.Text := floattostr(v_control);
button5.Click;


end;

if ai_ao_count = 3 then
begin
  if label11.Caption = 'active' then
  begin
       err := Success;
   InitializeGraph;

   err := BufferedAiCtrl1.Start;
   if err <> Success then
   begin
      HandleError(err);
      exit;
   end;
   divTrackBar.Enabled := true;
   BtnStart.Enabled := false;
   BtnPause.Enabled := true;
   BtnStop.Enabled := true;
   window_width := trackbar1.Position * 100;

  end;

end;

if ai_ao_count = 4 then
begin
  ai_ao_handle.Enabled := false;

end;

ai_ao_count := ai_ao_count + 1;
}
end;

procedure TMainForm.TrackBar2Change(Sender: TObject);
begin
{ai_ao_count := 1;
ai_ao_handle.Enabled := true;  }
end;

procedure TMainForm.ch1_showClick(Sender: TObject);
begin
if ch1_show.Checked then chart_show_count := chart_show_count +1
else chart_show_count := chart_show_count -1;

label12.Caption := inttostr(chart_show_count);

if ch1_show.Checked then
begin


new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch2_show.checked  then chart1.Height := new_h;
chart1.Height := 150;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch2_show.checked then chart1.Height := new_h;
chart1.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;


end;


end;

procedure TMainForm.ch2_showClick(Sender: TObject);
begin
if ch2_show.Checked then chart_show_count := chart_show_count +1
else chart_show_count := chart_show_count -1;

label12.Caption := inttostr(chart_show_count);

if ch2_show.Checked then
begin


new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked  then chart1.Height := new_h;
chart2.Height := 150;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart2.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;


end;

end;

procedure TMainForm.ch3_showClick(Sender: TObject);
begin
if ch3_show.Checked then chart_show_count := chart_show_count +1
else chart_show_count := chart_show_count -1;

label12.Caption := inttostr(chart_show_count);

if ch3_show.Checked then
begin


new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked  then chart1.Height := new_h;
chart3.Height := 150;
if ch2_show.checked  then chart2.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart3.Height := 30;
if ch2_show.checked  then chart2.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;


end;

end;

procedure TMainForm.ch4_showClick(Sender: TObject);
begin
if ch4_show.Checked then chart_show_count := chart_show_count +1
else chart_show_count := chart_show_count -1;

label12.Caption := inttostr(chart_show_count);


if ch4_show.Checked then
begin


new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked  then chart1.Height := new_h;
chart4.Height := 150;
if ch3_show.checked  then chart3.Height := new_h;
if ch2_show.checked  then chart2.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart4.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch2_show.checked  then chart2.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;


end;

end;

procedure TMainForm.Button7Click(Sender: TObject);
begin
impedance_form.show;
end;

procedure TMainForm.Button8Click(Sender: TObject);
begin
z_calc_flag := true;
end;

procedure TMainForm.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
trackbar2.Position := strtoint(edit2.Text);


end;

procedure TMainForm.Button9Click(Sender: TObject);
begin
chart1.LeftAxis.SetMinMax(chart1.LeftAxis.Minimum/2 , chart1.LeftAxis.Maximum/2);
end;

procedure TMainForm.Button10Click(Sender: TObject);
begin
chart1.LeftAxis.SetMinMax(chart1.LeftAxis.Minimum*2 , chart1.LeftAxis.Maximum*2);
end;

procedure TMainForm.Button11Click(Sender: TObject);
begin
chart2.LeftAxis.SetMinMax(chart2.LeftAxis.Minimum/2 , chart2.LeftAxis.Maximum/2);

end;

procedure TMainForm.Button13Click(Sender: TObject);
begin
chart3.LeftAxis.SetMinMax(chart3.LeftAxis.Minimum/2 , chart3.LeftAxis.Maximum/2);

end;

procedure TMainForm.Button15Click(Sender: TObject);
begin
chart4.LeftAxis.SetMinMax(chart4.LeftAxis.Minimum/2 , chart4.LeftAxis.Maximum/2);

end;

procedure TMainForm.Button12Click(Sender: TObject);
begin
chart2.LeftAxis.SetMinMax(chart2.LeftAxis.Minimum*2 , chart2.LeftAxis.Maximum*2);

end;

procedure TMainForm.Button14Click(Sender: TObject);
begin
chart3.LeftAxis.SetMinMax(chart3.LeftAxis.Minimum*2 , chart3.LeftAxis.Maximum*2);

end;

procedure TMainForm.Button16Click(Sender: TObject);
begin
chart4.LeftAxis.SetMinMax(chart4.LeftAxis.Minimum*2 , chart4.LeftAxis.Maximum*2);

end;

procedure TMainForm.ch0_filterClick(Sender: TObject);
begin
ch0_fir_flag := ch0_filter.checked;
F0 := strtoint(edit3.Text);
filter_length := 201;
f_cut_off_Hz := F0;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
////chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch0[n] := FIR_Scale * w_filter[n];
end;
//label14.Caption := 'Scale  ' + floattostr(FIR_Scale);


end;

procedure TMainForm.ch1_filterClick(Sender: TObject);
begin
ch1_fir_flag := ch1_filter.checked;
 ch1_restitution.Enabled := ch1_fir_flag;
F1 := strtoint(edit4.Text);

filter_length := 201;
f_cut_off_Hz := F1;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
//chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch1[n] := FIR_Scale * w_filter[n];
end;

end;

procedure TMainForm.ch2_filterClick(Sender: TObject);
begin
ch2_fir_flag := ch2_filter.checked;
  ch2_restitution.Enabled := ch2_fir_flag;
  F2 := strtoint(edit5.Text);

filter_length := 201;
f_cut_off_Hz := F2;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
//chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch2[n] := FIR_Scale * w_filter[n];
end;

end;

procedure TMainForm.ch3_filterClick(Sender: TObject);
begin
ch3_fir_flag := ch3_filter.checked;
   ch3_restitution.Enabled := ch3_fir_flag;

F3 := strtoint(edit6.Text);

filter_length := 201;
f_cut_off_Hz := F3;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
//chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch3[n] := FIR_Scale * w_filter[n];
end;

end;

procedure TMainForm.Edit3Change(Sender: TObject);
begin

F0 := strtoint(edit3.Text);
filter_length := 201;
f_cut_off_Hz := F0;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
////chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch0[n] := FIR_Scale * w_filter[n];
end;
//label14.Caption := 'Scale  ' + floattostr(FIR_Scale);




end;

procedure TMainForm.Edit4Change(Sender: TObject);
begin

F1 := strtoint(edit4.Text);

filter_length := 201;
f_cut_off_Hz := F1;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
//chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch1[n] := FIR_Scale * w_filter[n];
end;

end;

procedure TMainForm.Edit5Change(Sender: TObject);
begin

F2 := strtoint(edit5.Text);

filter_length := 201;
f_cut_off_Hz := F2;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
//chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch2[n] := FIR_Scale * w_filter[n];
end;


end;

procedure TMainForm.Edit6Change(Sender: TObject);
begin
F3 := strtoint(edit6.Text);

filter_length := 201;
f_cut_off_Hz := F3;
M := filter_length - 1;
Sampling_frequency := 4096;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
//chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

for n := 0 to M do
begin
  w_hamming[n] := 0.54 - 0.46 * cos(2 * 3.1415 * n / M);

 // chart4.Series[0].AddXY(n, w_hamming[n]);
end;

for n := 0 to M do
begin
  w_filter[n] := w_hamming[n] * w_lpf[n];
  //chart4.Series[0].AddXY(n, w_hamming[n]);
end;

sum := 0;
for n := 0 to M do
begin
  sum := sum + w_filter[n];
end;
FIR_Scale := 1 / sum;

for n := 0 to M do
begin
  w_filter_ch3[n] := FIR_Scale * w_filter[n];
end;

end;

procedure TMainForm.ch0_periodClick(Sender: TObject);
begin
ch0_period_flag := ch0_period.Checked;
ch0_rr_radio_btn.Enabled := ch0_period_flag;
//only_test_process_radio_btn.Enabled := ch0_period_flag;
af_vf_calc_flag := (ch0_period_flag) or (ch1_period_flag) or (ch2_period_flag) or (ch3_period_flag);
if af_vf_calc_flag = true then
begin
af_vf_radio_button.Enabled := true;
end
else
begin
af_vf_radio_button.Enabled := false;
 ch0_rr_radio_btn.Checked := false;
 ch1_rr_radio_btn.Checked := false;
 ch2_rr_radio_btn.Checked := false;
 ch3_rr_radio_btn.Checked := false;
 af_vf_calc_flag := false;
 normal_radio_button.Checked := true;
 panel1.Visible := true;
 panel3.Visible := false;
end;

end;

procedure TMainForm.ch1_periodClick(Sender: TObject);
begin
ch1_period_flag := ch1_period.Checked;
ch1_rr_radio_btn.Enabled := ch1_period_flag;
af_vf_calc_flag := (ch0_period_flag) or (ch1_period_flag) or (ch2_period_flag) or (ch3_period_flag);
if af_vf_calc_flag = true then
begin
af_vf_radio_button.Enabled := true;
end
else
begin
af_vf_radio_button.Enabled := false;
 ch0_rr_radio_btn.Checked := false;
 ch1_rr_radio_btn.Checked := false;
 ch2_rr_radio_btn.Checked := false;
 ch3_rr_radio_btn.Checked := false;
 af_vf_calc_flag := false;
  normal_radio_button.Checked := true;
 panel1.Visible := true;
 panel3.Visible := false;
end;

end;

procedure TMainForm.ch2_periodClick(Sender: TObject);
begin
ch2_period_flag := ch2_period.Checked;
ch2_rr_radio_btn.Enabled := ch2_period_flag;
af_vf_calc_flag := (ch0_period_flag) or (ch1_period_flag) or (ch2_period_flag) or (ch3_period_flag);
if af_vf_calc_flag = true then
begin
af_vf_radio_button.Enabled := true;
end
else
begin
af_vf_radio_button.Enabled := false;
 ch0_rr_radio_btn.Checked := false;
 ch1_rr_radio_btn.Checked := false;
 ch2_rr_radio_btn.Checked := false;
 ch3_rr_radio_btn.Checked := false;
 af_vf_calc_flag := false;
  normal_radio_button.Checked := true;
 panel1.Visible := true;
 panel3.Visible := false;
end;

end;

procedure TMainForm.ch3_periodClick(Sender: TObject);
begin
ch3_period_flag := ch3_period.Checked;
ch3_rr_radio_btn.Enabled := ch3_period_flag;
af_vf_calc_flag := (ch0_period_flag) or (ch1_period_flag) or (ch2_period_flag) or (ch3_period_flag);
if af_vf_calc_flag = true then
begin
af_vf_radio_button.Enabled := true;
end
else
begin
af_vf_radio_button.Enabled := false;
 ch0_rr_radio_btn.Checked := false;
 ch1_rr_radio_btn.Checked := false;
 ch2_rr_radio_btn.Checked := false;
 ch3_rr_radio_btn.Checked := false;
 af_vf_calc_flag := false;
  normal_radio_button.Checked := true;
 panel1.Visible := true;
 panel3.Visible := false;
end;

end;

procedure TMainForm.ch1_restitutionClick(Sender: TObject);
begin
ch1_resti_flag := ch1_restitution.Checked;
ch2_resti_flag := ch2_restitution.Checked;
ch3_resti_flag := ch3_restitution.Checked;

 apdx_scale := strtofloat(edit9.Text) / 100;
 stimulus_dependent_flag := stimulus_dependent.checked;

 chart8.Series[0].SeriesColor := chart2.series[0].SeriesColor;
end;

procedure TMainForm.ch2_restitutionClick(Sender: TObject);
begin
ch1_resti_flag := ch1_restitution.Checked;
ch2_resti_flag := ch2_restitution.Checked;
ch3_resti_flag := ch3_restitution.Checked;
 apdx_scale := strtofloat(edit9.Text) / 100;
  stimulus_dependent_flag := stimulus_dependent.checked;
   chart8.Series[0].SeriesColor := chart3.series[0].SeriesColor;
end;

procedure TMainForm.ch3_restitutionClick(Sender: TObject);
begin
ch1_resti_flag := ch1_restitution.Checked;
ch2_resti_flag := ch2_restitution.Checked;
ch3_resti_flag := ch3_restitution.Checked;
 apdx_scale := strtofloat(edit9.Text) / 100;
  stimulus_dependent_flag := stimulus_dependent.checked;
   chart8.Series[0].SeriesColor := chart4.series[0].SeriesColor;
end;

procedure TMainForm.Show_timerTimer(Sender: TObject);
var
local_counter : integer;
data_show0 , data_show1 , data_show2 , data_show3 : single;
begin


for local_counter := 0 to 1023 do
begin


data_show0 := show_array[0,local_show_counter];
  if data_show0 <> 0 then  chart1.Series[0].Add(data_show0);
   // chart1.Series[1].Add(save_array[0,local_show_counter]);

   data_show1 := show_array[1,local_show_counter];
   if data_show1 <> 0 then
   begin
   chart2.Series[0].Add(data_show1);
   if show_stimulus_flag1 then  chart2.Series[3].Add(data_show0/5);
   end;

    data_show2 := show_array[2,local_show_counter];
    if data_show2 <> 0 then
    begin
    chart3.Series[0].Add(data_show2);
    if show_stimulus_flag2 then  chart3.Series[3].Add(data_show0/5);
    end;


   data_show3 := show_array[3,local_show_counter];
    if data_show3 <> 0 then
    begin
    chart4.Series[0].Add(data_show3);
    if show_stimulus_flag3 then  chart4.Series[3].Add(data_show0/5);
    end;


   // chart5.Series[0].Add(show_array[4,local_show_counter]);
  //  chart6.Series[0].Add(show_array[5,local_show_counter]);

  //save show data
  show_time_counter := show_time_counter + 1;
  show_time_value := show_time_counter * dt;
   if save_flag = 'true' then
   begin
   save_to_file_buffer[0] := show_time_value;
   save_to_file_buffer[1] := show_array[0,local_show_counter];
   save_to_file_buffer[2] := show_array[1,local_show_counter];
   save_to_file_buffer[3] := show_array[2,local_show_counter];
   save_to_file_buffer[4] := show_array[3,local_show_counter];
   BlockWrite(daq_file, save_to_file_buffer, 1);
   if resti_global_calculation_flag then BlockWrite(temp_file, save_to_file_buffer, 1);
   end;

 local_show_counter := local_show_counter + 1;
end;

//******************************************************************************
// Period Calculator
///Periode calculation Routines


period_timer.Enabled := true;


Show_timer.Enabled := false;

label24.Caption := inttostr( local_show_counter);

end;

procedure TMainForm.BtnPauseClick(Sender: TObject);
begin
  // show_timer.Enabled := false;
end;

procedure TMainForm.Button21Click(Sender: TObject);
begin
 {

   // Moving Average Filter LPF


    if ch0_fir_flag then
      begin
       start_counter := -1*ch0_fir_window_width + 1;
       stop_counter := 0;
       ch0_sum := 0;

       data_counter := start_counter;
       repeat
         ch0_sum := ch0_sum + save_array[0,global_data_counter + data_counter];
         data_counter := data_counter + 1;
       until (data_counter > stop_counter);

       ch0_data := ch0_sum / ch0_fir_window_width;


           save_array[0,global_data_counter] := ch0_data;

      end;


    if ch1_fir_flag then
      begin
       start_counter := -1*ch1_fir_window_width + 1;
       stop_counter := 0;
       ch1_sum := 0;

       data_counter := start_counter;
       repeat
         ch1_sum := ch1_sum + save_array[1,global_data_counter + data_counter];
         data_counter := data_counter + 1;
       until (data_counter > stop_counter);

       ch1_data := ch1_sum / ch1_fir_window_width;

       save_array[1,global_data_counter] := ch1_data;
      end;


    if ch2_fir_flag then
      begin
       start_counter := -1*ch2_fir_window_width + 1;
       stop_counter := 0;
       ch2_sum := 0;

       data_counter := start_counter;
       repeat
         ch2_sum := ch2_sum + save_array[2,global_data_counter + data_counter];
         data_counter := data_counter + 1;
       until (data_counter > stop_counter);

       ch2_data := ch2_sum / ch2_fir_window_width;
       save_array[2,global_data_counter] := ch2_data;
      end;


    if ch3_fir_flag then
      begin
       start_counter := -1*ch3_fir_window_width + 1;
       stop_counter := 0;
       ch3_sum := 0;

       data_counter := start_counter;
       repeat
         ch3_sum := ch3_sum + save_array[3,global_data_counter + data_counter];
         data_counter := data_counter + 1;
       until (data_counter > stop_counter);

       ch3_data := ch3_sum / ch3_fir_window_width;
       save_array[3,global_data_counter] := ch3_data;
      end;


    if ch4_fir_flag then
      begin
       start_counter := -1*ch4_fir_window_width + 1;
       stop_counter := 0;
       ch4_sum := 0;

       data_counter := start_counter;
       repeat
         ch4_sum := ch4_sum + save_array[4,global_data_counter + data_counter];
         data_counter := data_counter + 1;
       until (data_counter > stop_counter);

       ch4_data := ch4_sum / ch4_fir_window_width;
       save_array[4,global_data_counter] := ch4_data;
      end;


    if ch5_fir_flag then
      begin
       start_counter := -1*ch5_fir_window_width + 1;
       stop_counter := 0;
       ch5_sum := 0;

       data_counter := start_counter;
       repeat
         ch5_sum := ch5_sum + save_array[5,global_data_counter + data_counter];
         data_counter := data_counter + 1;
       until (data_counter > stop_counter);

       ch5_data := ch5_sum / ch5_fir_window_width;
       save_array[5,global_data_counter] := ch5_data;
      end;


   //Moving Average LPF Filter

  }
end;

procedure TMainForm.Button22Click(Sender: TObject);
begin
{
//**********************************************************************************
//Restitution Curve Calculator For Each Channels
//111111111111111111111111111111111111111111111111111111111111111111111111111111111111
if ch1_resti_flag then
begin
 min_amp := chart1.Series[0].MinYValue;
 max_amp := chart1.Series[0].MaxYValue;
 Mean_Stimulus := (min_amp + max_amp) / 2;

 min_amp := chart2.Series[0].MinYValue;
 max_amp := chart2.Series[0].MaxYValue;
 amp := max_amp - min_amp;
 amp := amp * 0.95;

       start_counter := global_data_counter - 1010;
       stop_counter := global_data_counter - 10;
       data_counter := start_counter;
       th := min_amp + amp;




//Find This APD MAX
//find first rising and falling edge on MAP and mean MAP

    MAP_Threshold := th;
    repeat
     data_counter := data_counter + 1;
    until ( ((save_array[1,data_counter] <= MAP_Threshold) and (save_array[1,data_counter+2] > MAP_Threshold)) or (data_counter > stop_counter));

    start_index := data_counter;
 //  chart1.Series[1].Clear;
 //  chart1.Series[1].AddXY(time_array[data_counter],save_array[1,data_counter]);

    repeat
     data_counter := data_counter + 1;
    until ( ((save_array[1,data_counter] >= MAP_Threshold) and (save_array[1,data_counter+2] < MAP_Threshold)) or (data_counter > stop_counter));

    final_index := data_counter;
 //  chart1.Series[1].AddXY(time_array[data_counter],save_array[1,data_counter]);

  // find Maximun in upper MAP
    max_MAP := -1000;
    data_counter := start_index;
    repeat

       my_MAP:= save_array[1,data_counter];

       if my_MAP > max_MAP then
       begin
        Max_MAP := my_MAP;
        MAP_endo_Max1 := Max_MAP;
        MAP_endo_Max1_index := data_counter;
       end;

      data_counter := data_counter + 1;
    until (data_counter > final_index);

  // label5.Caption := 'Max of MAP : ' + floattostr(MAP_endo_Max1);

   chart2.Series[2].AddXY(MAP_endo_Max1_index , save_array[1,MAP_endo_Max1_index]);
//Find this APD Min
//find Second falling and rising edge on MAP and mean MAP
    data_counter := final_index;
    final_index := final_index + 400;


  // find Minimum in Lower MAP
    min_MAP := 1000;
    data_counter := start_index;
    repeat

       my_MAP:= save_array[1,data_counter];

       if my_MAP < min_MAP then
       begin
        min_MAP := my_MAP;
        MAP_endo_Min1 := min_MAP;
        MAP_endo_Min1_index := data_counter;
       end;

      data_counter := data_counter + 1;
    until (data_counter > final_index);
    // label6.Caption := 'Min of MAP : ' + floattostr(MAP_endo_Min1);

   // chart2.Series[2].Clear;
   t_Max1 := my_time_array[MAP_endo_Max1_index];
   t_Min1 := my_time_array[MAP_endo_Min1_index];
 //   chart2.Series[1].AddXY(MAP_endo_Max1_index , MAP_endo_Max1);
  //  chart2.Series[1].AddXY(MAP_endo_Min1_index , MAP_endo_Min1);

 //************************************************************************************************************************
    APDx_Value := MAP_endo_Max1 - (apdx_scale * (MAP_endo_Max1 - MAP_endo_Min1));
   // label4.Caption := 'APDx : ' + floattostr(APDx_Value);
    MAP_Threshold := th;

    data_counter := MAP_endo_Max1_index;
    repeat
     data_counter := data_counter + 1;
    until ( ((save_array[1,data_counter] < APDx_Value) and (save_array[1,data_counter] < MAP_Threshold))  or (data_counter > stop_counter));

    APDx_end := my_time_array[data_counter];
    APDx_end_index := data_counter;


//*************************************************************************************************

//Bargast be aghab baraye apdx start dar stimulus array
    data_counter := MAP_endo_Max1_index;
    start_counter := global_data_counter - 1010;
    repeat
     data_counter := data_counter - 1;
    until ( (save_array[0,data_counter] > Mean_Stimulus)  or (data_counter < start_counter));



//*************************************************************************************************

    APDx_start := my_time_array[data_counter];
    APDx_start_index := data_counter;



  //  chart7.Series[1].Clear;
  //  chart7.Series[1].AddXY(time_array[APDx_start_index],save_array[1,APDx_start_index]);
  //  chart7.Series[1].AddXY(time_array[APDx_end_index],save_array[1,APDx_end_index]);

    DI_end_index := APDx_start_index;
    DI_end := APDx_end;


    start_counter := global_data_counter - 1010;
    repeat
     data_counter := data_counter - 1;
    until ( ((save_array[1,data_counter] > APDx_Value) and (save_array[1,data_counter+2] < APDx_Value))  or (data_counter < start_counter));

    DI_start_index := data_counter;
    DI_start := my_time_array[data_counter];


 //   chart1.Series[3].Clear;
 //   chart1.Series[3].AddXY(time_array[DI_start_index],save_array[1,DI_start_index]);
 //   chart1.Series[3].AddXY(time_array[DI_end_index],save_array[1,DI_end_index]);

    chart2.Series[1].AddXY(DI_start_index , save_array[1,DI_start_index]);
    chart2.Series[1].AddXY(APDx_start_index , save_array[1,APDx_start_index]);
    chart2.Series[1].AddXY(APDx_end_index , save_array[1,APDx_end_index]);



    DI := DI_end - DI_Start;
    APDx := APDx_end - APDx_start;
   // ERP := (DI + APDx) * 1000;
     ERP := (APDx) * 1000;

    // di_threshold := strtofloat(edit5.Text) / 1000;
    // apdx_threshold := strtofloat(edit5.Text) / 1000;

 //    di_min := strtofloat(edit6.Text) / 1000;
 //    di_max := strtofloat(edit7.Text) / 1000;

    // chart2.BottomAxis.SetMinMax(0,di_max*1000);
    // chart2.LeftAxis.SetMinMax(0,di_max*2000);

 //    if ((di >= di_min) and (di <= di_max)) then
 //    begin

    // if APDx > apdx_threshold then chart2.Series[0].AddXY(DI*1000,APDx*1000)
    // else chart2.Series[1].AddXY(DI*1000,APDx*1000);
      chart7.Series[1].AddXY(DI*1000,APDx*1000)

 //    end;


   // label7.Caption := 'Array Counter : ' + inttostr(data_counter);
   // gauge1.Progress := trunc(data_counter / 1000);

 //set value for recursive function
 //  data_counter := APDx_end_index;




end;
//**********************************************************************************
//Restitution Curve Calculator For Each Channels
//111111111111111111111111111111111111111111111111111111111111111111111111111111111111
}

end;

procedure TMainForm.Button23Click(Sender: TObject);
begin
{
//******************************************************************************
// Period Calculator
///Periode calculation Routines

if ch0_period_flag then
begin
//00000000000000000000000000000000000000000000000000000000

 min_amp := chart1.Series[0].MinYValue;
 max_amp := chart1.Series[0].MaxYValue;
 amp := max_amp - min_amp;
 amp := amp * 0.9;
 chart1.Series[1].Clear;

 chart1.Series[1].AddXY(0,min_amp + amp);
 chart1.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1010;
       stop_counter := global_data_counter - 10;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := save_array[0,data_counter - 5];
        point2 := save_array[0,data_counter];
        point3 := save_array[0,data_counter + 5];

        if ((point2 > th) and (point2 > point1) and (point2 > point3)) then
        begin
         t1_ch0 := my_time_array[data_counter];
         chart1.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 100;
         dif_t_ch0 := (t1_ch0 - t2_ch0) * 1000;
         t2_ch0 := t1_ch0;
         if ((dif_t_ch0 > 30) and (dif_t_ch0 < 1000)) then ch0_period_label.Caption := floattostr(trunc(dif_t_ch0*10) / 10);
        end;

       data_counter := data_counter + 2;
       until (data_counter > stop_counter);


//000000000000000000000000000000000000000000000000000000000


end;

if ch1_period_flag then
begin
//11111111111111111111111111111111111111111111111111111111111
 min_amp := chart2.Series[0].MinYValue;
 max_amp := chart2.Series[0].MaxYValue;
 amp := max_amp - min_amp;
 amp := 0.9 * amp;
 chart2.Series[1].Clear;

 chart2.Series[1].AddXY(0,min_amp + amp);
 chart2.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1010;
       stop_counter := global_data_counter - 10;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := save_array[1,data_counter - 5];
        point2 := save_array[1,data_counter];
        point3 := save_array[1,data_counter + 5];

        if ((point2 > th) and (point2 > point1) and (point2 > point3)) then
        begin
         t1_ch1 := my_time_array[data_counter];
         chart2.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 100;
         dif_t_ch1 := (t1_ch1 - t2_ch1) * 1000;
         t2_ch1 := t1_ch1;
         if ((dif_t_ch1 > 30) and (dif_t_ch1 < 1000)) then ch1_period_label.Caption := floattostr(trunc(dif_t_ch1*10) / 10);
        end;

       data_counter := data_counter + 2;
       until (data_counter > stop_counter);

//11111111111111111111111111111111111111111111111111111111111111111


end;

if ch2_period_flag then
begin
//2222222222222222222222222222222222222222222222222222222222222222222
 min_amp := chart3.Series[0].MinYValue;
 max_amp := chart3.Series[0].MaxYValue;
 amp := max_amp - min_amp;
 amp := amp * 0.9;
 chart3.Series[1].Clear;

 chart3.Series[1].AddXY(0,min_amp + amp);
 chart3.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1010;
       stop_counter := global_data_counter - 10;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := save_array[2,data_counter - 5];
        point2 := save_array[2,data_counter];
        point3 := save_array[2,data_counter + 5];

        if ((point2 > th) and (point2 > point1) and (point2 > point3)) then
        begin
         t1_ch2 := my_time_array[data_counter];
         chart3.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 100;
         dif_t_ch2 := (t1_ch2 - t2_ch2) * 1000;
         t2_ch2 := t1_ch2;
         if ((dif_t_ch2 > 30) and (dif_t_ch2 < 1000)) then ch2_period_label.Caption := floattostr(trunc(dif_t_ch2*10) / 10);
        end;

       data_counter := data_counter + 2;
       until (data_counter > stop_counter);


//22222222222222222222222222222222222222222222222222222222222222

end;

if ch3_period_flag then
begin
//333333333333333333333333333333333333333333333333333333333333333333333
 min_amp := chart4.Series[0].MinYValue;
 max_amp := chart4.Series[0].MaxYValue;
 amp := max_amp - min_amp;
 amp := amp * 0.9;
 chart4.Series[1].Clear;

 chart4.Series[1].AddXY(0,min_amp + amp);
 chart4.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1010;
       stop_counter := global_data_counter - 10;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := save_array[3,data_counter - 5];
        point2 := save_array[3,data_counter];
        point3 := save_array[3,data_counter + 5];

        if ((point2 > th) and (point2 > point1) and (point2 > point3)) then
        begin
         t1_ch3 := my_time_array[data_counter];
         chart4.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 100;
         dif_t_ch3 := (t1_ch3 - t2_ch3) * 1000;
         t2_ch3 := t1_ch3;
         if ((dif_t_ch3 > 30) and (dif_t_ch3 < 1000)) then ch3_period_label.Caption := floattostr(trunc(dif_t_ch3*10) / 10);
        end;

       data_counter := data_counter + 2;
       until (data_counter > stop_counter);
//3333333333333333333333333333333333333333333333333333333333333333333333333

end;

if ch4_period_flag then
begin


end;

if ch5_period_flag then
begin


end;




// End of Period Calculator
}

end;

procedure TMainForm.FIR_timerTimer(Sender: TObject);
begin
//FIR Filter
//000000000000000000000000000000000000000000000000000000000000000000000000000
    if ch0_fir_flag then
      begin
      start_counter := global_data_counter - 1024;
      stop_counter := global_data_counter;
      array_counter := start_counter;
      {
      if (array_counter - M < 0) then
      begin
      sum := 0;
      for n := 0 to M do
          sum := Save_Array[0,array_counter + n];
      signal_ave := sum / M;
      end;
      }
      repeat

      sum := 0;

      for n := 0 to M do
      begin

      if array_counter - M + n > 0 then sum := sum + w_filter_ch0[n] * Save_Array[0,array_counter - M + n]
      else sum := sum + w_filter_ch0[n] * Save_Array[0,window_width + array_counter - M + n];; //sum := save_array[0,array_counter];
      end;

      FIR_array[0,array_counter] := sum;

       array_counter := array_counter + 1;
      until (array_counter > stop_counter);

      // Copy FIR Array to Show Array
      max_show_counter := global_data_counter;
      i := 0;
       j := max_show_counter - 1024;
         repeat
            show_array[i,j] := FIR_array[i,j];
           j := j + 1;
         until (j > max_show_counter);



      end
      else
      begin
      //No filter
      //Copy Save_array to Show Array
      max_show_counter := global_data_counter;
      i := 0;
       j := max_show_counter - 1023;
         repeat
            show_array[i,j] := Save_array[i,j];
           j := j + 1;
         until (j > max_show_counter);

      end;


//111111111111111111111111111111111111111111111111111111111111111111111111111
    if ch1_fir_flag then
      begin
      start_counter := global_data_counter - 1024;
      stop_counter := global_data_counter;
      array_counter := start_counter;
      {
      if array_counter - M < 0 then
      begin
      sum := 0;
      for n := 0 to M do
          sum := Save_Array[1,array_counter  + n];
      signal_ave := sum / M;
      end;
      }
      repeat

      sum := 0;

      for n := 0 to M do
      begin

      if array_counter - M + n > 0 then sum := sum + w_filter_ch1[n] * Save_Array[1,array_counter - M + n]
      else sum := sum + w_filter_ch1[n] * Save_Array[1,window_width + array_counter - M + n]; //use last data in last filled show array for lack of data correction
      end;

      FIR_array[1,array_counter] := sum;

       array_counter := array_counter + 1;
      until (array_counter > stop_counter);

      // Copy FIR Array to Show Array
      max_show_counter := global_data_counter;
      i := 1;
       j := max_show_counter - 1024;
         repeat
            show_array[i,j] := FIR_array[i,j];
           j := j + 1;
         until (j > max_show_counter);

      end
      else
      begin
      //No filter
      //Copy Save_array to Show Array
      max_show_counter := global_data_counter;
      i := 1;
       j := max_show_counter - 1024;
         repeat
            show_array[i,j] := Save_array[i,j];
           j := j + 1;
         until (j > max_show_counter);

      end;

//22222222222222222222222222222222222222222222222222222222222222222
    if ch2_fir_flag then
      begin
      start_counter := global_data_counter - 1024;
      stop_counter := global_data_counter;
      array_counter := start_counter;
      {
      if array_counter - M < 0 then
      begin
      sum := 0;
      for n := 0 to M do
          sum := Save_Array[2,array_counter  + n];
      signal_ave := sum / M;
      end;
      }
      repeat

      sum := 0;

      for n := 0 to M do
      begin

      if array_counter - M + n > 0 then sum := sum + w_filter_ch2[n] * Save_Array[2,array_counter - M + n]
      else sum := sum + w_filter_ch2[n] * Save_Array[2,window_width + array_counter - M + n]; //sum := save_array[0,array_counter];
      end;

      FIR_array[2,array_counter] := sum;

       array_counter := array_counter + 1;
      until (array_counter > stop_counter);

      // Copy FIR Array to Show Array
      max_show_counter := global_data_counter;
      i := 2;
       j := max_show_counter - 1024;
         repeat
            show_array[i,j] := FIR_array[i,j];
           j := j + 1;
         until (j > max_show_counter);

      end
      else
      begin
      //No filter
      //Copy Save_array to Show Array
      max_show_counter := global_data_counter;
      i := 2;
       j := max_show_counter - 1024;
         repeat
            show_array[i,j] := Save_array[i,j];
           j := j + 1;
         until (j > max_show_counter);

      end;

//33333333333333333333333333333333333333333333333333333333333333333333333333333333
    if ch3_fir_flag then
      begin
      start_counter := global_data_counter - 1024;
      stop_counter := global_data_counter;
      array_counter := start_counter;
      {
      if array_counter - M < 0 then
      begin
      sum := 0;
      for n := 0 to M do
          sum := Save_Array[3,array_counter  + n];
      signal_ave := sum / M;
      end;
      }
      repeat

      sum := 0;

      for n := 0 to M do
      begin

      if array_counter - M + n > 0 then sum := sum + w_filter_ch3[n] * Save_Array[3,array_counter - M + n]
      else sum := sum + w_filter_ch3[n] * Save_Array[3,window_width + array_counter - M + n];; //sum := save_array[0,array_counter];
      end;

      FIR_array[3,array_counter] := sum;

       array_counter := array_counter + 1;
      until (array_counter > stop_counter);

      // Copy FIR Array to Show Array
      max_show_counter := global_data_counter;
      i := 3;
       j := max_show_counter - 1024;
         repeat
            show_array[i,j] := FIR_array[i,j];
           j := j + 1;
         until (j > max_show_counter);

      end
      else
      begin
      //No filter
      //Copy Save_array to Show Array
      max_show_counter := global_data_counter;
      i := 3;
       j := max_show_counter - 1024;
         repeat
            show_array[i,j] := Save_array[i,j];
           j := j + 1;
         until (j > max_show_counter);

      end;

//4444444444444444444444444444444444444444444444444444444444444444444

//555555555555555555555555555555555555555555555555555555555555555555


//end of FIR Filter



FIR_timer.Enabled := false;
Show_Timer.Enabled := true;
end;

procedure TMainForm.stimulus_on_ch1Click(Sender: TObject);
begin
show_stimulus_flag1 := stimulus_on_ch1.Checked;

end;

procedure TMainForm.stimulus_on_ch2Click(Sender: TObject);
begin
show_stimulus_flag2 := stimulus_on_ch2.Checked;

end;

procedure TMainForm.stimulus_on_ch3Click(Sender: TObject);
begin
show_stimulus_flag3 := stimulus_on_ch3.Checked;

end;

procedure TMainForm.restitution_timerTimer(Sender: TObject);
begin

if slow_motion_flag then restitution_timer.Interval := 400
else restitution_timer.Interval := 10;

//**********************************************************************************
//Restitution Curve Calculator For Each Channels
if array_counter_resti < end_of_block_counter_limit then
begin
 resti_calc_btn.Click;
{ if all_pulse_process_flag  then resti_calc_btn.Click
 else  only_test_calc_btn.click; }
end
else
begin
restitution_timer.Enabled := false;
//StringGrid1.HandleNeeded;
if processed_no > 7 then stringgrid1.TopRow := processed_No - 7;
//SendMessage(StringGrid1.Handle,EM_LINESCROLL,1 ,StringGrid1.Rowcount);
end;


end;

procedure TMainForm.slow_motionClick(Sender: TObject);
begin
slow_motion_flag := slow_motion.Checked;
end;

procedure TMainForm.Stimulus_dependentClick(Sender: TObject);
begin
 stimulus_dependent_flag := stimulus_dependent.checked;
end;

procedure TMainForm.Stimulus_independentClick(Sender: TObject);
begin
 stimulus_dependent_flag := stimulus_dependent.checked;
end;

procedure TMainForm.Button24Click(Sender: TObject);
begin
Resti_global_calculation.checked := false;
restitution_timer.Enabled := false;
chart7.Series[0].Clear;
chart9.Series[0].Clear;

max_local_counter_table := (StringGrid1.ColCount - 1);
for local_counter_table := 0 to max_local_counter_table do
begin
    StringGrid1.Cols[local_counter_table].Clear;
end;
  StringGrid1.RowCount := 2;

   stringgrid1.Cells[0,0] := 'S No';
   stringgrid1.Cells[1,0] := 'APA';
   stringgrid1.Cells[2,0] := 'APD'+edit9.Text;
   stringgrid1.Cells[3,0] := 'DI';
   stringgrid1.Cells[4,0] := 'S2V2';
   stringgrid1.Cells[5,0] := 'S1S2';
   stringgrid1.Cells[6,0] := 'V1V2';
   stringgrid1.Cells[7,0] := 'index';
   Processed_No := 1;
   S1S2_Array_index := 1;
end;

procedure TMainForm.Resti_global_calculationClick(Sender: TObject);
begin
resti_global_calculation_flag := Resti_global_calculation.Checked;
if resti_global_calculation_flag then
begin
start_process_index := offset_index;
t1_ch0 := 0;
assignfile(temp_file,'c:/data/temp_file.sdcdaq');
ReWrite(temp_file, 20); //9 * 4 byte = 9 * 1 single variable = 36 byte

end
else
begin
 closefile(temp_file);
  final_process_index := offset_index;
   label44.Caption := 'Indexes: '+inttostr(start_process_index) + ' , ' + inttostr(final_process_index);

end;
trackbar1.Enabled := not resti_global_calculation_flag;
end;

procedure TMainForm.ch0_trackbarChange(Sender: TObject);
begin
ch0_max_percent := (100 - ch0_trackbar.Position)/ 100;

end;

procedure TMainForm.ch1_trackbarChange(Sender: TObject);
begin
ch1_max_percent := (100 - ch1_trackbar.Position)/ 100;

end;

procedure TMainForm.ch2_trackbarChange(Sender: TObject);
begin
ch2_max_percent := (100 - ch2_trackbar.Position)/ 100;

end;

procedure TMainForm.ch3_trackbarChange(Sender: TObject);
begin
ch3_max_percent := (100 - ch3_trackbar.Position)/ 100;

end;

procedure TMainForm.Resti_calc_btnClick(Sender: TObject);
begin
//************************************************************************************************************************
   label30.caption := floattostr(trunc(base_line*100)/100);

   if min_as_base_flag then
   begin
    base_line := MAP_endo_min; //last min of MAP
      chart8.Series[6].Clear;
       chart8.Series[6].AddXY(array_counter_resti,base_line);
       chart8.Series[6].AddXY(array_counter_resti + 500,base_line);

   end;
    APDx_Value := MAP_endo_Max1 - (apdx_scale * (MAP_endo_Max1 - base_line));
    array_counter_resti_lower_limit := array_counter_resti  - 500;
//*************************************************************************************************
//find falling edge for DI Start
    repeat
      array_counter_resti := array_counter_resti + 1;
    until ( ((MAP_endo_array[array_counter_resti] >= APDx_Value) and (MAP_endo_array[array_counter_resti+1] < APDx_Value))  or (array_counter_resti > offset_index - max_show_counter + stop_process_index));

    DI_start_index := array_counter_resti;
    DI_start := DI_start_index * dt;



//*************************************************************************************************
//find rising edge for DI end and APD Start
    MAP_endo_min := 1000;
    repeat
    if MAP_endo_array[array_counter_resti] < MAP_endo_min then
      begin
      MAP_endo_min := MAP_endo_array[array_counter_resti];
      MAP_endo_min_index := array_counter_resti;

      end;
      array_counter_resti := array_counter_resti + 1;
    until ( ((MAP_endo_array[array_counter_resti] <= APDx_Value) and (MAP_endo_array[array_counter_resti+1] > APDx_Value))  or (array_counter_resti > offset_index - max_show_counter + stop_process_index));

   APDx_start_index := array_counter_resti;
   APDx_start := array_counter_resti * dt;

   DI_end_index := APDx_start_index;
   DI_end := APDx_start;
//*************************************************************************************************

//*************************************************************************************************
//find falling edge for APD end
    MAP_Endo_Max := -1000;
    repeat
      array_counter_resti := array_counter_resti + 1;
      if MAP_endo_array[array_counter_resti] > MAP_endo_max then
      begin
      MAP_endo_max := MAP_endo_array[array_counter_resti];
      MAP_endo_max_index := array_counter_resti;

      end;
    until ( ((MAP_endo_array[array_counter_resti] >= APDx_Value) and (MAP_endo_array[array_counter_resti+1] < APDx_Value))  or (array_counter_resti > offset_index - max_show_counter + stop_process_index));

    APDx_end_index := array_counter_resti;
    APDx_end := APDx_end_index * dt;

    MAP_v2_index := MAP_endo_max_index;
    MAP_v2_value := MAP_endo_max;
//*************************************************************************************************


//******************************************************************************
//Find falling edge of stimulus  S2
array_counter_resti_2 := DI_start_index;
repeat
array_counter_resti_2 := array_counter_resti_2 + 1;
until ((array_counter_resti_2 > apdx_end_index) or ((stimulus_array[array_counter_resti_2] >= stimulus_th) and (stimulus_array[array_counter_resti_2 + 1] < stimulus_th)));
S2_index := array_counter_resti_2;


//Find falling edge of stimulus S1
array_counter_resti_2 := DI_start_index;
MAP_Endo_Max := -1000;


repeat
if MAP_endo_array[array_counter_resti_2] > MAP_endo_max then
begin
MAP_endo_max := MAP_endo_array[array_counter_resti_2];
MAP_endo_max_index := array_counter_resti_2;
end;
array_counter_resti_2 := array_counter_resti_2 - 1;
until ((array_counter_resti_2 < array_counter_resti_lower_limit) or ((stimulus_array[array_counter_resti_2] >= stimulus_th) and (stimulus_array[array_counter_resti_2 + 1] < stimulus_th)));

S1_index := array_counter_resti_2;

MAP_v1_index := MAP_endo_max_index;
MAP_v1_value := MAP_endo_max;

S2_V2 := (Map_v2_index - S2_index) * dt;
S2_V2 := S2_V2 * 1000;

S1S2 := (S2_index - S1_index) * dt;
S1S2 := S1S2 * 1000;

V1V2 := (MAP_v2_index - MAP_v1_index) * dt;
V1V2 := V1V2 * 1000;

APDx := APDx_end - APDx_start;
APDx := APDx*1000;

    if radiobutton4.Checked then
    begin
    DI := DI_end - DI_Start;
    DI :=  DI*1000;
    end
    else DI := V1V2 - APDx;
    

    APA := MAP_endo_Max - MAP_endo_Min;

    APD_Slope := (MAP_endo_array[APDx_End_index] - MAP_endo_array[APDx_Start_index]) / ((APDx_End_index-APDx_Start_index)*dt);
    DI_Slope := (MAP_endo_array[DI_End_index] - MAP_endo_array[DI_Start_index]) / ((DI_End_index-DI_Start_index)*dt);
    if ((DI < 1000) and (DI > 10) and (APDx < 1000) and (APDx > 2) and (APA > 0.1) and (S1S2 > 10) and (S2_V2 > 2) and (abs(APD_Slope)<0.3) and (abs(DI_Slope)<0.3)) then
    begin
    S1S2_Array[S1S2_Array_index] := S1S2;
    S1S2_Array_index := S1S2_Array_index + 1;
     // check for new S1S2
     new_s1s2_flag := true;
     for pulse_index_counter := 1 to S1S2_Array_index-2 do
       if abs(S1S2_Array[pulse_index_counter] - S1S2) < 2 then new_s1s2_flag := false;

    if  S1S2_Array_index = 20 then
    begin
    S1S2_Array_index := S1S2_Array_index;

    end;




   if all_pulse_process_flag then
     begin
     StringGrid1.HandleNeeded;
     stringgrid1.Cells[0,processed_No] := inttostr(processed_No);
     stringgrid1.Cells[1,processed_No] := formatfloat('#.###',APA);

     stringgrid1.Cells[2,processed_No] := formatfloat('#.#',APDx);
     stringgrid1.Cells[3,processed_No] := formatfloat('#.#',DI);
     stringgrid1.Cells[4,processed_No] := formatfloat('#.#',S2_V2);
     stringgrid1.Cells[5,processed_No] := formatfloat('#.#',S1S2);
     stringgrid1.Cells[6,processed_No] := formatfloat('#.#',V1V2);



     
     stringgrid1.RowCount := processed_No + 1;
    // stringgrid1.Row := processed_No;

     processed_No := processed_No + 1;
    chart7.Series[0].AddXY(DI,APDx);
    chart9.Series[0].AddXY(DI,S2_V2);

       //show APDx and DI
      chart8.Series[4].Clear;
      chart8.Series[5].Clear;
      chart8.Series[4].AddXY(DI_start_index , MAP_endo_array[DI_start_index]);
      chart8.Series[4].AddXY(DI_end_index , MAP_endo_array[DI_end_index]);
      chart8.Series[5].AddXY(APDx_start_index , MAP_endo_array[APDx_start_index]);
      chart8.Series[5].AddXY(APDx_end_index , MAP_endo_array[APDx_end_index]);
      stringgrid1.Cells[7,processed_No] := inttostr(di_start_index);;

    //Show S2V2
    chart8.Series[7].Clear;
    chart8.series[7].AddXY(S2_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));
    chart8.series[7].AddXY(MAP_v2_index , MAP_endo_max);

    // Show S1S2
    chart8.Series[9].Clear;
    chart8.series[9].AddXY(S1_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));
    chart8.series[9].AddXY(S2_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));

    // Show V1V2
    chart8.Series[11].Clear;
    chart8.series[11].AddXY(MAP_V1_index , MAP_V1_Value);
    chart8.series[11].AddXY(MAP_V2_index , MAP_V2_value);


    //Redraw S1S2
    chart8.Series[3].AddXY(S1_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));
    chart8.Series[3].AddXY(S1_index , MAP_endo_Min1);
    chart8.Series[3].AddXY(S2_index , MAP_endo_Min1);
    chart8.Series[3].AddXY(S2_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));



     end
  else //all_pulse_process_flag
  begin
    //new S1S2 Check 
     if new_s1s2_flag then
     begin
     stringgrid1.Cells[0,processed_No] := inttostr(processed_No);
     stringgrid1.Cells[1,processed_No] := formatfloat('#.###',APA);

     stringgrid1.Cells[2,processed_No] := formatfloat('#.#',APDx);
     stringgrid1.Cells[3,processed_No] := formatfloat('#.#',DI);
     stringgrid1.Cells[4,processed_No] := formatfloat('#.#',S2_V2);
     stringgrid1.Cells[5,processed_No] := formatfloat('#.#',S1S2);
     stringgrid1.Cells[6,processed_No] := formatfloat('#.#',V1V2);


     stringgrid1.RowCount := processed_No + 1;

     processed_No := processed_No + 1;
    chart7.Series[0].AddXY(DI,APDx);
    chart9.Series[0].AddXY(DI,S2_V2);

    //show APDx and DI
      chart8.Series[4].Clear;
      chart8.Series[5].Clear;
      chart8.Series[4].AddXY(DI_start_index , MAP_endo_array[DI_start_index]);
      chart8.Series[4].AddXY(DI_end_index , MAP_endo_array[DI_end_index]);
      chart8.Series[5].AddXY(APDx_start_index , MAP_endo_array[APDx_start_index]);
      chart8.Series[5].AddXY(APDx_end_index , MAP_endo_array[APDx_end_index]);
      stringgrid1.Cells[7,processed_No] := inttostr(di_start_index);;

    //Show S2V2
    chart8.Series[7].Clear;
    chart8.series[7].AddXY(S2_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));
    chart8.series[7].AddXY(MAP_v2_index , MAP_endo_max);

    // Show S1S2
    chart8.Series[9].Clear;
    chart8.series[9].AddXY(S1_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));
    chart8.series[9].AddXY(S2_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));

    //Redraw S1S2
    chart8.Series[3].AddXY(S1_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));
    chart8.Series[3].AddXY(S1_index , MAP_endo_Min1);
    chart8.Series[3].AddXY(S2_index , MAP_endo_Min1);
    chart8.Series[3].AddXY(S2_index , MAP_endo_Min1 + (max_amp_ch0 / scale_factor));

    // Show V1V2
    chart8.Series[11].Clear;
    chart8.series[11].AddXY(MAP_V1_index , MAP_V1_Value);
    chart8.series[11].AddXY(MAP_V2_index , MAP_V2_value);



    if zoom_to_test_check_box.Checked then
    begin
      chart8.BottomAxis.SetMinMax(s1_index-2000,s2_index+2000);

    end
    else
    begin
        chart8.BottomAxis.Automatic := true;

    end;

    end; // if new_s1s2_flag then




  end; //all_pulse_process_flag




    end;







//set value for recursive function
//array_counter_resti setting for next process
array_counter_resti := array_counter_resti - 50;

end;

procedure TMainForm.Button25Click(Sender: TObject);
begin
{
chart8.Series[0].Clear;

//Find This APD MAX
//find first rising and falling edge on MAP and mean MAP

    MAP_Threshold := mean_MAP;
    repeat
     array_counter_resti := array_counter_resti + 1;
     chart8.Series[0].Add(MAP_endo_array[array_counter_resti]);
   until ( ((MAP_endo_array[array_counter_resti] < MAP_Threshold) and  (MAP_endo_array[array_counter_resti+3] > MAP_Threshold)) or (array_counter_resti > stop_process_index));

    start_index := array_counter_resti;
 //  chart1.Series[1].Clear;
 //  chart1.Series[1].AddXY(time_array[array_counter_resti],MAP_endo_array[array_counter_resti]);

    repeat
     array_counter_resti := array_counter_resti + 1;
          chart8.Series[0].Add(MAP_endo_array[array_counter_resti]);

    until ( ((MAP_endo_array[array_counter_resti] > MAP_Threshold) and  (MAP_endo_array[array_counter_resti+3] < MAP_Threshold)) or (array_counter_resti > stop_process_index));

    final_index := array_counter_resti;
 //  chart1.Series[1].AddXY(time_array[array_counter_resti],MAP_endo_array[array_counter_resti]);

  // find Maximun in upper MAP
    max_MAP := -1000;
    array_counter_resti := start_index;
    repeat

       my_MAP:= MAP_endo_array[array_counter_resti];

       if my_MAP > max_MAP then
       begin
        Max_MAP := my_MAP;
        MAP_endo_Max1 := Max_MAP;
        MAP_endo_Max1_index := array_counter_resti;
       end;

      array_counter_resti := array_counter_resti + 1;
    // chart8.Series[0].AddXY(array_counter_resti , MAP_endo_array[array_counter_resti]);
    until (array_counter_resti > final_index);

  // label5.Caption := 'Max of MAP : ' + floattostr(MAP_endo_Max1);


//Find this APD Min
//find Second falling and rising edge on MAP and mean MAP
// Back ward Search for Min Before Max , difference between repolarization and adepolarization
    array_counter_resti := start_index;
    final_index := start_index - 200;
    MAP_Threshold := mean_MAP;

    min_MAP := 1000;
    array_counter_resti := start_index;
    repeat

       my_MAP:= MAP_endo_array[array_counter_resti];

       if my_MAP < min_MAP then
       begin
        min_MAP := my_MAP;
        MAP_endo_Min1 := min_MAP;
        MAP_endo_Min1_index := array_counter_resti;
       end;

      array_counter_resti := array_counter_resti - 1;

    until ( (array_counter_resti < 10) or (array_counter_resti < (start_index-5000) ) );
  //   label6.Caption := 'Min of MAP : ' + floattostr(MAP_endo_Min1);

//Show Max and Min
chart8.Series[1].AddXY(MAP_endo_Max1_index , MAP_endo_array[MAP_endo_Max1_index]);
chart8.Series[1].AddXY(MAP_endo_Min1_index , MAP_endo_array[MAP_endo_Min1_index]);

//chart8.Series[4].AddXY(MAP_endo_Min1_index , MAP_Threshold);
//chart8.Series[4].AddXY(MAP_endo_Max1_index , MAP_Threshold);




 //************************************************************************************************************************
    APDx_Value := MAP_endo_Max1 - (apdx_scale * (MAP_endo_Max1 - MAP_endo_Min1));
  //  label4.Caption := 'APDx : ' + floattostr(APDx_Value);
    MAP_Threshold := mean_MAP;

    array_counter_resti := MAP_endo_Max1_index;
    repeat
     array_counter_resti := array_counter_resti + 1;

    until ( ((MAP_endo_array[array_counter_resti] < APDx_Value) and (MAP_endo_array[array_counter_resti] < MAP_Threshold))  or (array_counter_resti > stop_process_index));

    
    APDx_end_index := array_counter_resti;
    APDx_end := APDx_end_index * dt;

//*************************************************************************************************

//Bargast be aghabl baraye apdx start
//Labeye balaravandeh
 array_counter_resti := MAP_endo_Max1_index;
 if stimulus_dependent_flag then
 begin

   // repeat
   //  array_counter_resti := array_counter_resti - 1;

   // until ( (Stimulus_Array[array_counter_resti] > Mean_Stimulus)  or (array_counter_resti < 10));

 end
 else
 begin
    repeat
     array_counter_resti := array_counter_resti - 1;

    until ( ((MAP_endo_array[array_counter_resti] < APDx_Value) and (MAP_endo_array[array_counter_resti] < MAP_Threshold))  or (array_counter_resti < 10));


 end;


//*************************************************************************************************


  //  APDx_start_index := array_counter_resti;
  //  APDx_start := APDx_start_index * dt;


   //Controvertial Comment for DI and APD border
   APDx_start_index := MAP_endo_Max1_index;
   APDx_start := APDx_start_index * dt;


//Show APDx Start and End
chart8.Series[2].AddXY(APDx_start_index , MAP_endo_array[APDx_start_index]);
chart8.Series[2].AddXY(APDx_end_index , MAP_endo_array[APDx_end_index]);


    DI_end_index := APDx_start_index;
    DI_end := APDx_end;



    repeat
     array_counter_resti := array_counter_resti - 1;

    until ( ((MAP_endo_array[array_counter_resti] > APDx_Value) and (MAP_endo_array[array_counter_resti+5] < APDx_Value))  or (array_counter_resti < 10));

    DI_start_index := array_counter_resti;
    DI_start := DI_start_index * dt;




    DI := DI_end - DI_Start;
    APDx := APDx_end - APDx_start;
   // ERP := (DI + APDx) * 1000;
     ERP := (APDx) * 1000;

   DI :=  DI*1000;
    APDx := APDx*1000;
    APA := MAP_endo_array[MAP_endo_Max1_index] - MAP_endo_array[MAP_endo_Min1_index];

    if ((DI < 500) and (DI > 30) and (APDx < 1000) and (APDx > 30) and (APA > 0.1)) then
    begin
      stringgrid1.Cells[0,processed_No] := inttostr(processed_No);
       stringgrid1.Cells[1,processed_No] := formatfloat('#.###',APA);

     stringgrid1.Cells[2,processed_No] := formatfloat('#.#',APDx);
     stringgrid1.Cells[3,processed_No] := formatfloat('#.#',DI);

     stringgrid1.RowCount := processed_No + 1;
    chart7.Series[1].AddXY(DI,APDx);
    end;
//show APDx and DI
chart8.Series[4].Clear;
chart8.Series[5].Clear;
chart8.Series[4].AddXY(DI_start_index , MAP_endo_array[DI_start_index]);
chart8.Series[4].AddXY(DI_end_index , MAP_endo_array[DI_end_index]);
chart8.Series[5].AddXY(APDx_start_index , MAP_endo_array[APDx_start_index]);
chart8.Series[5].AddXY(APDx_end_index , MAP_endo_array[APDx_end_index]);
processed_No := Processed_No + 1;


//set value for recursive function
   array_counter_resti := APDx_end_index;



//set value for recursive function
   array_counter_resti := APDx_end_index;


   }
end;

procedure TMainForm.base_line_trackbarChange(Sender: TObject);
begin
if resti_global_calculation_flag then
begin
//on line processor
base_line := ((base_line_trackbar.Position)/ 100);
base_line := base_line * (MAP_endo_Max1 - MAP_endo_Min1);
base_line := MAP_endo_Max1 - base_line;
chart8.Series[6].Clear;
 chart8.Series[6].AddXY(offset_index - max_show_counter,base_line);
  chart8.Series[6].AddXY(offset_index - max_show_counter + window_width,base_line);
end
else
begin
//off line processor
  base_line := ((base_line_trackbar.Position)/ 100);
  base_line := base_line * (max_amp_MAP - min_amp_MAP);
  base_line := max_amp_MAP - base_line;
chart8.Series[6].Clear;
 chart8.Series[6].AddXY(0,base_line);
  chart8.Series[6].AddXY(final_process_index,base_line);



end;


end;

procedure TMainForm.apdx_trackbarChange(Sender: TObject);
begin
edit9.Text := inttostr(apdx_trackbar.Position);
stringgrid1.Cells[2,0] := 'APD'+edit9.Text;
end;

procedure TMainForm.Button26Click(Sender: TObject);
begin
ch0_fir_setting_panel.Visible := true;

end;

procedure TMainForm.Button27Click(Sender: TObject);
begin
ch0_fir_setting_panel.Visible := false;

end;

procedure TMainForm.Button28Click(Sender: TObject);
begin
ch1_fir_setting_panel.Visible := true;
end;

procedure TMainForm.Button29Click(Sender: TObject);
begin
ch1_fir_setting_panel.Visible := false;
end;

procedure TMainForm.Button30Click(Sender: TObject);
begin
ch2_fir_setting_panel.Visible := true;
end;

procedure TMainForm.Button31Click(Sender: TObject);
begin
ch2_fir_setting_panel.Visible := false;
end;

procedure TMainForm.Button32Click(Sender: TObject);
begin
ch3_fir_setting_panel.Visible := true;
end;

procedure TMainForm.Button33Click(Sender: TObject);
begin
ch3_fir_setting_panel.Visible := false;
end;

procedure TMainForm.Button34Click(Sender: TObject);
begin
scale_amp := max_amp_ch0 - min_amp_ch0;
chart1.LeftAxis.SetMinMax(min_amp_ch0 - 0.1*scale_amp ,max_amp_ch0 + 0.1*scale_amp );


end;

procedure TMainForm.Button35Click(Sender: TObject);
begin
scale_amp := max_amp_ch1 - min_amp_ch1;
chart2.LeftAxis.SetMinMax(min_amp_ch1 - 0.1*scale_amp ,max_amp_ch1 + 0.1*scale_amp );
showmessage ('Min: ' + floattostr(min_amp_ch1) + ' , Max: '+ floattostr(max_amp_ch1))
end;

procedure TMainForm.Button36Click(Sender: TObject);
begin
scale_amp := max_amp_ch2 - min_amp_ch2;
chart3.LeftAxis.SetMinMax(min_amp_ch2 - 0.1*scale_amp ,max_amp_ch2 + 0.1*scale_amp );

end;

procedure TMainForm.Button37Click(Sender: TObject);
begin
scale_amp := max_amp_ch3 - min_amp_ch3;
chart4.LeftAxis.SetMinMax(min_amp_ch3 - 0.1*scale_amp ,max_amp_ch3 + 0.1*scale_amp );

end;

procedure TMainForm.Button38Click(Sender: TObject);
var
s_labchart : string;
counter : integer;
begin
if savedialog1.Execute then
begin
OldFile := 'c:/data/'+current_file_name;
assignfile(daq_file , OldFile );
reset(daq_file , 20);

counter := 0;
repeat
BlockRead(daq_file, load_from_file_buffer, 1);
counter := counter + 1;
until (counter > 144);

assignfile(save_file_labchart , savedialog1.FileName+'.txt');
rewrite(save_file_labchart);

s_labchart:= 'Interval='+chr(9)+	floattostr(dt)+' s';
writeln(save_file_labchart,s_labchart);

s_labchart := 'ExcelDateTime=	' +  datetimetostr(now); //4.2592424512433077e+004	10-Aug-16 10:11:17.874218';
writeln(save_file_labchart,s_labchart);

s_labchart := 'TimeFormat=	StartOfBlock';
writeln(save_file_labchart,s_labchart);

s_labchart := 'DateFormat='+chr(9);
writeln(save_file_labchart,s_labchart);

s_labchart := 'ChannelTitle='+chr(9)+'Ch0'+chr(9)+'Ch1'+chr(9)+'Ch2'+chr(9)+'Ch3';
writeln(save_file_labchart,s_labchart);

s_labchart := 'Range=	5.000 V	5.000 V	5.000 V	5.000 V';
writeln(save_file_labchart,s_labchart);

s_labchart:= 'UnitName=	V	V	V	V';
writeln(save_file_labchart,s_labchart);

s_labchart := 'TopValue=	5.00	5.00	5.00	5.00';
writeln(save_file_labchart,s_labchart);

s_labchart := 'BottomValue=	-5.00	-5.00	-5.00	-5.00';
writeln(save_file_labchart,s_labchart);

while(not eof(daq_file)) do
begin
BlockRead(daq_file, load_from_file_buffer, 1);
s_labchart := '';
s_labchart := s_labchart + floattostr(load_from_file_buffer[0]) + chr(9);
s_labchart := s_labchart + floattostr(load_from_file_buffer[1]) + chr(9);
s_labchart := s_labchart + floattostr(load_from_file_buffer[2]) + chr(9);
s_labchart := s_labchart + floattostr(load_from_file_buffer[3]) + chr(9);
s_labchart := s_labchart + floattostr(load_from_file_buffer[4]);


writeln(save_file_labchart,s_labchart);

end;

closefile(daq_file);
closefile(save_file_labchart);

end;

end;

procedure TMainForm.ListBox1Click(Sender: TObject);
var
my_file_path : string;
i , c : integer;
s1,s2 : string;
begin
current_file_name := listbox1.Items[listbox1.itemindex];

my_file_path := 'c:/data/'+current_file_name;
  assignfile(my_file , my_file_path);
  reset(my_file,36);
  meta_data_string := '';
  for i := 0 to 79 do
  begin
    blockread(my_file,load_from_file_buffer,1);
    for c := 0 to 8 do
     meta_data_string := meta_data_string + chr(trunc(load_from_file_buffer[c]));
  end;

 // label24.Caption := meta_data_string;

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
  combobox1.ItemIndex := strtoint(s1);

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
  combobox2.ItemIndex := strtoint(s1);

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
  edit10.Text := s1;


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
  edit11.Text := s1;


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
  edit12.Text := s1;

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
  edit13.Text := s1;

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
  label37.Caption := 'Time Stamp: ' + s1;
  
closefile(my_file);

end;

procedure TMainForm.StringGrid1Click(Sender: TObject);
var
clicked_index : integer;
begin
clicked_index := stringgrid1.Row;
on_click_resti_index := strtoint(stringgrid1.Cells[7,clicked_index]);
on_click_resti_btn.Click;

end;

procedure TMainForm.on_click_resti_btnClick(Sender: TObject);
var
start_index , end_index : int64;
start_plot_index , end_plot_index : int64;
plot_counter_new : int64;
begin
//Plot 1 second before and after selected point
start_plot_index := on_click_resti_index - 2048;
end_plot_index := on_click_resti_index + 2048;
chart8.BottomAxis.SetMinMax(start_plot_index,end_plot_index);

     chart8.Series[0].Clear;
     chart8.Series[1].Clear;
     chart8.Series[2].Clear;
     chart8.Series[3].Clear;
     chart8.Series[4].Clear;
     chart8.Series[5].Clear;
     chart8.Series[6].Clear;
     chart8.Series[7].Clear;
     chart8.Series[8].Clear;
     chart8.Series[9].Clear;
     chart8.Series[10].Clear;
     chart8.Series[11].Clear;
       plot_counter_new := start_plot_index;
         repeat
            chart8.Series[0].Addxy(plot_counter_new , MAP_endo_array[plot_counter_new] );
            //chart8.Series[3].Addxy(plot_counter_new , Min_Amp_MAP + (stimulus_array[plot_counter_new]  / scale_factor) );

            plot_counter_new := plot_counter_new + 1;
         until (plot_counter_new > end_plot_index);

//Recalculate APD and DI and Plot again on chart
array_counter_resti := on_click_resti_index - 300;
resti_calc_btn.Click;




end;

procedure TMainForm.af_vf_radio_buttonClick(Sender: TObject);
begin
if af_vf_radio_button.Checked then
begin
ch1_restitution.Checked := false;
ch1_restitution.Checked := false;
ch1_restitution.Checked := false;
resti_global_calculation.Checked := false;
slow_motion.Checked := false;
 panel1.Visible := false;
 panel3.Visible := true;
 af_vf_calc_flag := true;
end
else
begin
 ch0_rr_radio_btn.Checked := false;
 ch1_rr_radio_btn.Checked := false;
 ch2_rr_radio_btn.Checked := false;
 ch3_rr_radio_btn.Checked := false;
 af_vf_calc_flag := false;
 RR_calc_timer.Enabled := false;
 panel1.Visible := true;
 panel3.Visible := false;



end;
end;

procedure TMainForm.normal_radio_buttonClick(Sender: TObject);
begin
if af_vf_radio_button.Checked then
begin
ch1_restitution.Checked := false;
ch1_restitution.Checked := false;
ch1_restitution.Checked := false;
resti_global_calculation.Checked := false;
slow_motion.Checked := false;
af_vf_calc_flag := true;
 panel1.Visible := false;
 panel3.Visible := true;;
end
else
begin
 ch0_rr_radio_btn.Checked := false;
 ch1_rr_radio_btn.Checked := false;
 ch2_rr_radio_btn.Checked := false;
 ch3_rr_radio_btn.Checked := false;
 af_vf_calc_flag := false;
 RR_calc_timer.Enabled := false;
 panel1.Visible := true;
 panel3.Visible := false;



end;
end;

procedure TMainForm.Button39Click(Sender: TObject);
begin

chart10.Series[0].Clear;
chart10.Series[1].Clear;
chart10.Series[2].Clear;
chart10.Series[3].Clear;

ch0_period_index := 0;
ch1_period_index := 0;
ch2_period_index := 0;
ch3_period_index := 0;


end;

procedure TMainForm.Button40Click(Sender: TObject);
begin
calc_timer := 10;
RR_calc_timer.Enabled := true;



end;

procedure TMainForm.Button41Click(Sender: TObject);
begin
RR_calc_timer.Enabled := false;

end;

procedure TMainForm.RR_calc_timerTimer(Sender: TObject);
begin
label39.Caption := inttostr(calc_timer);
calc_timer := calc_timer - 1;
if calc_timer < 0 then
begin
//0000000000000000000000000000000000000000000000000000
if ch0_rr_radio_btn.Checked then
begin
 for RR_calc_counter := 0 to 100 do
   ch0_rr_count[Rr_calc_counter] := 0;

 for RR_calc_counter := 0 to ch0_period_index do
 begin
  current_period := ch0_rr_array[RR_calc_counter];
  period_index := trunc(current_period / 5);
  ch0_rr_count[period_index] := ch0_rr_count[period_index] + 1;

 end;
 chart10.Series[0].Clear;
 chart10.Series[0].Active := true;
 chart10.Series[1].Active := false;
 chart10.Series[2].Active := false;
 chart10.Series[3].Active := false;

  chart10.Series[4].Active := true;
 chart10.Series[5].Active := false;
 chart10.Series[6].Active := false;
 chart10.Series[7].Active := false;





 for RR_calc_counter := 0 to 100 do
   chart10.Series[0].AddXY(rr_calc_counter*5 , ch0_rr_count[Rr_calc_counter]);

end;


//11111111111111111111111111111111111111111111111
if ch1_rr_radio_btn.Checked then
begin
 for RR_calc_counter := 0 to 100 do
   ch1_rr_count[Rr_calc_counter] := 0;

 for RR_calc_counter := 0 to ch1_period_index do
 begin
  current_period := ch1_rr_array[RR_calc_counter];
  period_index := trunc(current_period / 5);
  ch1_rr_count[period_index] := ch1_rr_count[period_index] + 1;

 end;
 chart10.Series[1].Clear;
 chart10.Series[1].Active := true;
 chart10.Series[0].Active := false;
 chart10.Series[2].Active := false;
 chart10.Series[3].Active := false;

  chart10.Series[4].Active := false;
 chart10.Series[5].Active := true;
 chart10.Series[6].Active := false;
 chart10.Series[7].Active := false;


 for RR_calc_counter := 0 to 100 do
   chart10.Series[1].AddXY(rr_calc_counter*5 , ch1_rr_count[Rr_calc_counter]);


end;

//2222222222222222222222222222222222222222222222222222222222222222
if ch2_rr_radio_btn.Checked then
begin
 for RR_calc_counter := 0 to 100 do
   ch2_rr_count[Rr_calc_counter] := 0;

 for RR_calc_counter := 0 to ch2_period_index do
 begin
  current_period := ch2_rr_array[RR_calc_counter];
  period_index := trunc(current_period / 5);
  ch2_rr_count[period_index] := ch2_rr_count[period_index] + 1;

 end;
 chart10.Series[2].Clear;
 chart10.Series[2].Active := true;
 chart10.Series[1].Active := false;
 chart10.Series[0].Active := false;
 chart10.Series[3].Active := false;

  chart10.Series[4].Active := false;
 chart10.Series[5].Active := false;
 chart10.Series[6].Active := true;
 chart10.Series[7].Active := false;


 for RR_calc_counter := 0 to 100 do
   chart10.Series[2].AddXY(rr_calc_counter*5 , ch2_rr_count[Rr_calc_counter]);


end;
//33333333333333333333333333333333333333333333333333333333
if ch3_rr_radio_btn.Checked then
begin
 for RR_calc_counter := 0 to 100 do
   ch3_rr_count[Rr_calc_counter] := 0;

 for RR_calc_counter := 0 to ch3_period_index do
 begin
  current_period := ch3_rr_array[RR_calc_counter];
  period_index := trunc(current_period / 5);
  ch3_rr_count[period_index] := ch3_rr_count[period_index] + 1;

 end;
 chart10.Series[3].Clear;
 chart10.Series[3].Active := true;
 chart10.Series[1].Active := false;
 chart10.Series[2].Active := false;
 chart10.Series[0].Active := false;


  chart10.Series[4].Active := false;
 chart10.Series[5].Active := false;
 chart10.Series[6].Active := false;
 chart10.Series[7].Active := true;


 for RR_calc_counter := 0 to 100 do
   chart10.Series[3].AddXY(rr_calc_counter*5 , ch3_rr_count[Rr_calc_counter]);


end;

calc_timer := 10;
end;

end;

procedure TMainForm.Button43Click(Sender: TObject);

begin
max_chart := max_chart - 50;
if max_chart < 100 then max_chart := 100;
chart10.BottomAxis.SetMinMax(0,max_chart);
end;

procedure TMainForm.Button42Click(Sender: TObject);

begin
max_chart := max_chart + 50;
if max_chart > 500 then max_chart := 500;
chart10.BottomAxis.SetMinMax(0,max_chart);

end;

procedure TMainForm.Button45Click(Sender: TObject);


begin

if savedialog1.Execute then
begin

   rr_file_name := savedialog1.filename + '_RR_'+formatdatetime('dd_mm_yy__hh_mm_ss', now)+'.RRdat';
   rr_memo.Lines.Clear;

//0000000000000000000000000000000000000000000000000000
if ch0_rr_radio_btn.Checked then
begin
 rr_memo.Lines.Add('ch0');
 for RR_calc_counter := 0 to 100 do
 begin
  RR_memo.Lines.Add(inttostr(ch0_rr_count[RR_calc_counter]));
 end;
end;
//11111111111111111111111111111111111111111111111
if ch1_rr_radio_btn.Checked then
begin
 RR_memo.Lines.Add('ch1');
 for RR_calc_counter := 0 to 100 do
 begin
  RR_memo.Lines.Add(inttostr(ch1_rr_count[RR_calc_counter]));
 end;
end;
//2222222222222222222222222222222222222222222222222222222222222222
if ch2_rr_radio_btn.Checked then
begin
 RR_memo.Lines.Add('ch2');
 for RR_calc_counter := 0 to 100 do
 begin
  RR_memo.Lines.Add(inttostr(ch2_rr_count[RR_calc_counter]));
 end;
end;
//33333333333333333333333333333333333333333333333333333333
if ch3_rr_radio_btn.Checked then
begin
 RR_memo.Lines.Add('ch3');
 for RR_calc_counter := 0 to 100 do
 begin
  RR_memo.Lines.Add(inttostr(ch3_rr_count[RR_calc_counter]));
 end;
end;


RR_memo.Lines.SaveToFile(rr_file_name);

end;




end;

procedure TMainForm.Button46Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
  RR_memo.Lines.Clear;
  RR_memo.Lines.LoadFromFile(opendialog1.FileName);
//0000000000000000000000000000000000000000000000000000000000000000000
  if rr_memo.Lines[0] = 'ch0' then
  begin
   ch0_rr_radio_btn.Checked := true;
    chart10.Series[4].Active := true;
     chart10.Series[5].Active := false;
       chart10.Series[6].Active := false;
         chart10.Series[7].Active := false;
   for RR_calc_counter := 1 to 100 do
   ch0_rr_count[Rr_calc_counter-1] := strtoint(rr_memo.Lines[rr_calc_counter]);


   for RR_calc_counter := 0 to 99 do
     chart10.Series[4].AddXY(rr_calc_counter*5 , ch0_rr_count[Rr_calc_counter]);


  end;
//11111111111111111111111111111111111111111111111111111111111111111111111111111
  if rr_memo.Lines[0] = 'ch1' then
  begin
   ch1_rr_radio_btn.Checked := true;
    chart10.Series[4].Active := false;
     chart10.Series[5].Active := true;
       chart10.Series[6].Active := false;
         chart10.Series[7].Active := false;
   for RR_calc_counter := 1 to 100 do
   ch1_rr_count[Rr_calc_counter-1] := strtoint(rr_memo.Lines[rr_calc_counter]);


   for RR_calc_counter := 0 to 99 do
     chart10.Series[5].AddXY(rr_calc_counter*5 , ch1_rr_count[Rr_calc_counter]);


  end;

//222222222222222222222222222222222222222222222222222222222222222222222222222222
  if rr_memo.Lines[0] = 'ch2' then
  begin
   ch2_rr_radio_btn.Checked := true;
    chart10.Series[4].Active := false;
     chart10.Series[5].Active := false;
       chart10.Series[6].Active := true;
         chart10.Series[7].Active := false;
   for RR_calc_counter := 1 to 100 do
   ch2_rr_count[Rr_calc_counter-1] := strtoint(rr_memo.Lines[rr_calc_counter]);


   for RR_calc_counter := 0 to 99 do
     chart10.Series[6].AddXY(rr_calc_counter*5 , ch2_rr_count[Rr_calc_counter]);


  end;

//33333333333333333333333333333333333333333333333333333333333333333333333333
  if rr_memo.Lines[0] = 'ch3' then
  begin
   ch3_rr_radio_btn.Checked := true;
    chart10.Series[4].Active := false;
     chart10.Series[5].Active := false;
       chart10.Series[6].Active := false;
         chart10.Series[7].Active := true;
   for RR_calc_counter := 1 to 100 do
   ch3_rr_count[Rr_calc_counter-1] := strtoint(rr_memo.Lines[rr_calc_counter]);


   for RR_calc_counter := 0 to 99 do
     chart10.Series[7].AddXY(rr_calc_counter*5 , ch3_rr_count[Rr_calc_counter]);


  end;


end;


end;

procedure TMainForm.only_test_process_radio_btnClick(Sender: TObject);
begin
all_pulse_process_flag := not only_test_process_radio_btn.checked;
zoom_to_test_check_box.Enabled := only_test_process_radio_btn.checked;
pulse_index_counter := 0;
end;

procedure TMainForm.RadioButton3Click(Sender: TObject);
begin
all_pulse_process_flag := not only_test_process_radio_btn.checked;
zoom_to_test_check_box.Enabled := only_test_process_radio_btn.checked;
end;

procedure TMainForm.Reprocess_BtnClick(Sender: TObject);
begin
//Step 0
//load data MAP and Stimulus from temp file
assignfile(temp_file , 'c:/data/temp_file.sdcdaq' );
reset(temp_file , 20);
array_counter_resti_2 := 0;
stimulus_th := (min_amp_ch0 + max_amp_ch0) / 2;
ch1_resti_flag := ch1_restitution.Checked;
ch2_resti_flag := ch2_restitution.Checked;
ch3_resti_flag := ch3_restitution.Checked;

max_amp_stimulus := -1000;
min_amp_stimulus := 1000;
max_amp_MAP := -1000;
min_amp_MAP := 1000;


while(not eof(temp_file)) do
begin
BlockRead(temp_file, load_from_file_buffer, 1);
stimulus_array[array_counter_resti_2] := load_from_file_buffer[1];
if stimulus_array[array_counter_resti_2] > max_amp_stimulus then max_amp_stimulus := stimulus_array[array_counter_resti_2];
if stimulus_array[array_counter_resti_2] < min_amp_stimulus then min_amp_stimulus := stimulus_array[array_counter_resti_2];

if ch1_resti_flag then MAP_endo_array[array_counter_resti_2]:= load_from_file_buffer[2];
if ch2_resti_flag then MAP_endo_array[array_counter_resti_2]:= load_from_file_buffer[3];
if ch3_resti_flag then MAP_endo_array[array_counter_resti_2]:= load_from_file_buffer[4];

if MAP_endo_array[array_counter_resti_2] > max_amp_MAP then max_amp_MAP := MAP_endo_array[array_counter_resti_2];
if MAP_endo_array[array_counter_resti_2] < min_amp_MAP then min_amp_MAP := MAP_endo_array[array_counter_resti_2];

array_counter_resti_2 := array_counter_resti_2 + 1;
end;

closefile(temp_file);
final_process_index := array_counter_resti_2;
start_process_index := 1;
Scale_Factor := (max_amp_stimulus - min_amp_stimulus) / (max_amp_MAP - min_amp_MAP);
Scale_Factor := Scale_Factor - 0.1*Scale_Factor;


array_counter_resti := start_process_index;
array_counter_resti_2 := array_counter_resti;
final_process_index := final_process_index - 1000;
pulse_index_counter := 0;
t1_ch0_resti := 0;
chart8.Series[0].Clear;
chart8.Series[1].Clear;
chart8.Series[2].Clear;
chart8.Series[3].Clear;
chart8.Series[4].Clear;
chart8.Series[5].Clear;
chart8.Series[6].Clear;
chart8.Series[7].Clear;
chart8.Series[8].Clear;
chart8.Series[9].Clear;
chart8.Series[10].Clear;
chart8.Series[11].Clear;

base_sum := 0;
base_count := 0;

repeat
New_Scaled_MAP := MAP_endo_array[array_counter_resti_2];
chart8.series[3].Add((stimulus_array[array_counter_resti_2]/scale_factor) + min_amp_MAP);
chart8.series[2].Add(New_Scaled_MAP);

if auto_base_flag then
begin
slope := (New_Scaled_MAP - MAP_endo_array[array_counter_resti_2-1]) / dt;
if  abs(slope) < 0.1 then
begin
base_sum := base_sum + New_Scaled_MAP;//chart8.Series[10].Addxy(offset_index - max_show_counter + j, New_Scaled_MAP);
base_count := base_count + 1;
end;
end;

array_counter_resti_2 := array_counter_resti_2 + 1;

until (array_counter_resti_2 > final_process_index);



array_counter_resti := start_process_index;
array_counter_resti_2 := array_counter_resti;

scrol_percent := 0;

//chart8.BottomAxis.SetMinMax(scrol_percent*0.05*final_process_index ,(scrol_percent+1)*0.05*final_process_index);


all_pulse_process_flag := not only_test_process_radio_btn.checked;

Resti_global_calculation.checked := false;
restitution_timer.Enabled := false;
chart7.Series[0].Clear;
chart9.Series[0].Clear;

max_local_counter_table := (StringGrid1.ColCount - 1);
for local_counter_table := 0 to max_local_counter_table do
begin
    StringGrid1.Cols[local_counter_table].Clear;
end;
  StringGrid1.RowCount := 2;

   stringgrid1.Cells[0,0] := 'S No';
   stringgrid1.Cells[1,0] := 'APA';
   stringgrid1.Cells[2,0] := 'APD'+edit9.Text;
   stringgrid1.Cells[3,0] := 'DI';
   stringgrid1.Cells[4,0] := 'S2V2';
   stringgrid1.Cells[5,0] := 'S1S2';
   stringgrid1.Cells[6,0] := 'V1V2';
   stringgrid1.Cells[7,0] := 'index';
   Processed_No := 1;
   S1S2_Array_index := 1;

array_counter_resti := 0;


reprocess_timer.Enabled := true;

end;

procedure TMainForm.Button48Click(Sender: TObject);

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

procedure TMainForm.Button49Click(Sender: TObject);
var
x, y , tmp: integer;
tmpstr : string;
begin
if opendialog1.Execute then
begin
  AssignFile(string_grid_file, opendialog1.FileName);
  Reset(string_grid_file);
  Readln(string_grid_file, Tmp);
  StringGrid1.ColCount:=Tmp;
  Readln(string_grid_file, Tmp);
  StringGrid1.RowCount:=Tmp;
  for x:=0 to StringGrid1.ColCount-1 do
    for y:=0 to StringGrid1.RowCount-1 do
    begin
      Readln(string_grid_file, TmpStr);
      StringGrid1.Cells[x,y]:=TmpStr;
    end;
  CloseFile(string_grid_file);

    chart7.Series[1].Clear;
    chart9.Series[1].Clear;

    for y := 1 to StringGrid1.RowCount-1 do
    begin
      chart7.Series[1].AddXY(strtofloat(StringGrid1.Cells[3,y]) , strtofloat(StringGrid1.Cells[2,y]) );
      chart9.Series[1].AddXY(strtofloat(StringGrid1.Cells[3,y]) , strtofloat(StringGrid1.Cells[4,y]) );

    end;

end;
end;

procedure TMainForm.only_test_calc_btnClick(Sender: TObject);
var
max : single;
begin
end_of_block_counter_limit := offset_index - max_show_counter + stop_process_index;
if (array_counter_resti_2 < end_of_block_counter_limit) then
begin

//first itme search for t1
if t1_ch0_resti = 0 then
begin
repeat
array_counter_resti_2 := array_counter_resti_2 + 1;
until ((array_counter_resti_2 > end_of_block_counter_limit) or ((stimulus_array[array_counter_resti_2] >= stimulus_th) and (stimulus_array[array_counter_resti_2 + 2] < stimulus_th)));
t1_ch0_resti := array_counter_resti_2 * dt;
t1_index := array_counter_resti_2;

end;

//Find Second falling edge of stimulus
repeat
array_counter_resti_2 := array_counter_resti_2 + 1;
until ((array_counter_resti_2 > end_of_block_counter_limit) or ((stimulus_array[array_counter_resti_2] >= stimulus_th) and (stimulus_array[array_counter_resti_2 + 2] < stimulus_th)));
t2_ch0_resti := array_counter_resti_2 * dt;
t2_index := array_counter_resti_2;
array_counter_resti_2 := array_counter_resti_2 + 10;
//check for real edge not end of data array
if (array_counter_resti_2 < end_of_block_counter_limit) then
begin
dif_t_ch0_resti := trunc((t2_ch0_resti - t1_ch0_resti) * 100000) / 100;
if ((dif_t_ch0_resti > 30) and (dif_t_ch0_resti < 1000)) then
begin
memo1.Lines.Add(floattostr(dif_t_ch0_resti));
label42.Caption := floattostr(trunc(dif_t_ch0_resti*10)/10);


chart8.Series[7].Clear;

chart8.Series[7].AddXY(t1_index , max_amp_ch0 );
chart8.Series[7].AddXY(t2_index , max_amp_ch0 );

pulse_index_array[pulse_index_counter] :=  t1_index;
s1s2_array[pulse_index_counter] := dif_t_ch0_resti;
pulse_index_counter := pulse_index_counter + 1;
once_process_flag := true;



end; //if ((dif_t_ch0 > 30) and (dif_t_ch0 < 1000)) then
//recursive
t1_ch0_resti := t2_ch0_resti;
t1_index := t2_index;
end; //if (array_counter_resti_2 < offset_index - max_show_counter + stop_process_index) then


end;


//end of packet
//Process for difference
if (once_process_flag = true) and (array_counter_resti_2 > end_of_block_counter_limit) then
begin
//Find Base
S1S2_ave := 0;
for c1 := 0 to pulse_index_counter-1 do
  S1S2_ave := S1S2_ave + s1s2_array[c1];
if pulse_index_counter <> 1 then S1S2_ave := S1S2_ave / (pulse_index_counter-1) ;

difference_index := -1;
c1 := 0;

repeat
   if (  ((s1s2_array[c1] - s1s2_array[c1+1]) > 2) and (s1s2_array[c1+1]<>0) and (abs(s1s2_array[c1+1] - S1S2_ave)> 2)   ) then
   begin
    difference_index := c1 + 1;
   end;
   c1 := c1 +1;
until (c1 > pulse_index_counter-1);

if difference_index <> -1 then
begin

chart8.Series[8].AddXY(pulse_index_array[difference_index] , max_amp_ch0);
chart8.Series[8].AddXY(pulse_index_array[difference_index + 1] , max_amp_ch0);
memo2.Lines.Add(floattostr(s1s2_array[difference_index]));

 stringgrid1.Cells[5,processed_No] := formatfloat('#.#',s1s2_array[difference_index]);
array_counter_resti :=  pulse_index_array[difference_index];
resti_calc_btn.Click;
restitution_timer.Enabled := false;
end;


for c1 := 0 to 100 do
   s1s2_array[c1]:= 0;

pulse_index_counter := 0;
memo1.Lines.Clear;
once_process_flag := false;
end;





end;

procedure TMainForm.Button50Click(Sender: TObject);
begin
chart7.Series[0].Clear;
chart9.Series[0].Clear;
chart7.Series[1].Clear;
chart9.Series[1].Clear;
end;

procedure TMainForm.pre_resti_timerTimer(Sender: TObject);
begin
pre_resti_timer.Enabled := false;


      array_counter_resti  := offset_index - window_width + 2;
      array_counter_resti_2  := array_counter_resti;

     chart8.Series[0].Clear;
     chart8.Series[1].Clear;
     chart8.Series[2].Clear;
     chart8.Series[3].Clear;
     chart8.Series[4].Clear;
     chart8.Series[5].Clear;
     chart8.Series[6].Clear;
     chart8.Series[7].Clear;
     chart8.Series[8].Clear;
     chart8.Series[9].Clear;
     chart8.Series[10].Clear;
     chart8.Series[11].Clear;
    ch1_resti_flag := ch1_restitution.Checked;
    ch2_resti_flag := ch2_restitution.Checked;
    ch3_resti_flag := ch3_restitution.Checked;

    apdx_scale := strtofloat(edit9.Text) / 100;

    base_ave := 0;
    base_count := 0;
    base_sum := 0;

    //chart8.LeftAxis.SetMinMax(MAP_endo_Min1 -0.1*(MAP_endo_Max1-MAP_endo_Min1) , MAP_endo_Max1 -0.1*(MAP_endo_Max1-MAP_endo_Min1));

//111111111111111111111111111111111111111111111111111111111111111
     if ch1_resti_flag then
     begin
      //map array
      //load last show array into MAP Array
      Scale_Factor := (max_amp_ch0 - min_amp_ch0) / (max_amp_ch1 - min_amp_ch1);
      Scale_Factor := Scale_Factor - 0.1 * Scale_Factor;
      {
      MAP_endo_Max1 := (max_amp_ch1 - min_amp_ch1) * Scale_Factor;
      MAP_endo_Min1 := (min_amp_ch1 - min_amp_ch1) * Scale_Factor;
      }
      MAP_endo_Max1 := max_amp_ch1;
      MAP_endo_Min1 := min_amp_ch1;


      max_show_counter := window_width;
      i := 1;
       j := 0;
         repeat
            //MAP_endo_array[j] := show_array[i,j];
            //chart8.Series[0].Add(MAP_endo_array[j]);
            New_Scaled_MAP := show_array[i,j];
            MAP_endo_array[offset_index - max_show_counter + j] := New_Scaled_MAP;
            chart8.Series[0].Addxy(offset_index - max_show_counter + j, New_Scaled_MAP );

            if auto_base_flag then
            begin
            slope := (New_Scaled_MAP - MAP_endo_array[offset_index - max_show_counter + j-1]) / dt;
            if  abs(slope) < 0.1 then
            begin
            base_sum := base_sum + New_Scaled_MAP;//chart8.Series[10].Addxy(offset_index - max_show_counter + j, New_Scaled_MAP);
            base_count := base_count + 1;
            end;
            end;

           j := j + 1;
         until (j > max_show_counter);

        //chart8.Series[0].SeriesColor := chart2.Series[0].SeriesColor;


      //Stimulus array
      i := 0;
       j := 0;
       stimulus_th := (min_amp_ch0 + max_amp_ch0) / 2;
        repeat
            stimulus_array[offset_index - max_show_counter + j] := show_array[i,j];
            chart8.Series[3].Addxy(offset_index - max_show_counter + j, min_amp_ch1 + (stimulus_array[offset_index - max_show_counter + j]  / scale_factor) );
           j := j + 1;
         until (j > max_show_counter );


      end;
//1111111111111111111111111111111111111111111111111111111111111111111111


//22222222222222222222222222222222222222222222222222222222222222222222222222
     if ch2_resti_flag then
     begin
      //map array
      //load last show array into MAP Array
      Scale_Factor := (max_amp_ch0 - min_amp_ch0) / (max_amp_ch2 - min_amp_ch2);
      Scale_Factor := Scale_Factor - 0.1 * Scale_Factor;

      MAP_endo_Max1 := max_amp_ch2;
      MAP_endo_Min1 := min_amp_ch2;

      max_show_counter := window_width;
      i := 2;
       j := 0;
         repeat
            New_Scaled_MAP := show_array[i,j];
            MAP_endo_array[offset_index - max_show_counter + j] := New_Scaled_MAP;
            chart8.Series[1].Addxy(offset_index - max_show_counter + j, New_Scaled_MAP );

            if auto_base_flag then
            begin
            slope := (New_Scaled_MAP - MAP_endo_array[offset_index - max_show_counter + j-1]) / dt;
            if  abs(slope) < 0.1 then
            begin
            base_sum := base_sum + New_Scaled_MAP;//chart8.Series[10].Addxy(offset_index - max_show_counter + j, New_Scaled_MAP);
            base_count := base_count + 1;
            end;
            end;

           j := j + 1;
         until (j > max_show_counter );

       //chart8.Series[0].SeriesColor := chart3.Series[0].SeriesColor;

      //Stimulus array
      i := 0;
       j := 0;
       stimulus_th := (min_amp_ch0 + max_amp_ch0) / 2;
         repeat
            stimulus_array[offset_index - max_show_counter + j] := show_array[i,j];
            chart8.Series[3].Addxy(offset_index - max_show_counter + j, min_amp_ch2 + (stimulus_array[offset_index - max_show_counter + j] / scale_factor) );
           j := j + 1;
         until (j > max_show_counter );


      end;
//2222222222222222222222222222222222222222222222222222222222222222


//33333333333333333333333333333333333333333333333333333333333333

     if ch3_resti_flag then
     begin
      //map array
      //load last show array into MAP Array
      Scale_Factor := (max_amp_ch0 - min_amp_ch0) / (max_amp_ch3 - min_amp_ch3);
      Scale_Factor := Scale_Factor - 0.1 * Scale_Factor;

      MAP_endo_Max1 := max_amp_ch3;
      MAP_endo_Min1 := min_amp_ch3;

      max_show_counter := window_width;
      i := 3;
       j := 0;
         repeat
            New_Scaled_MAP := show_array[i,j]; //(show_array[i,j] - min_amp_ch3) * Scale_Factor;
            MAP_endo_array[offset_index - max_show_counter + j] := New_Scaled_MAP;
            chart8.Series[2].Addxy(offset_index - max_show_counter + j, New_Scaled_MAP );

            if auto_base_flag then
            begin
            slope := (New_Scaled_MAP - MAP_endo_array[offset_index - max_show_counter + j-1]) / dt;
            if  abs(slope) < 0.1 then
            begin
            base_sum := base_sum + New_Scaled_MAP;//chart8.Series[10].Addxy(offset_index - max_show_counter + j, New_Scaled_MAP);
            base_count := base_count + 1;
            end;
            end;


              j := j + 1;
         until (j > max_show_counter );

        // chart8.Series[0].SeriesColor := chart4.Series[0].SeriesColor;

      //Stimulus array
      i := 0;
       j := 0;
       stimulus_th := (min_amp_ch0 + max_amp_ch0) / 2;
         repeat
            stimulus_array[offset_index - max_show_counter + j] := show_array[i,j];
            chart8.Series[3].Addxy(offset_index - max_show_counter + j, min_amp_ch3 + (stimulus_array[offset_index - max_show_counter + j] / scale_factor ));
           j := j + 1;
         until (j > max_show_counter );


      end;
//333333333333333333333333333333333333333333333333333333333333

if auto_base_flag then
begin
 base_ave := base_sum / base_count;
 base_line := base_ave;
end
else
begin
     base_line := ((base_line_trackbar.Position)/ 100);
      base_line := base_line * (MAP_endo_Max1 - MAP_endo_Min1);
      base_line := MAP_endo_Max1 - base_line;
end;
        chart8.Series[6].Clear;
        chart8.Series[6].AddXY(offset_index - max_show_counter,base_line);
        chart8.Series[6].AddXY(offset_index - max_show_counter + window_width,base_line);

         restitution_timer.Enabled := true;

end;

procedure TMainForm.period_timerTimer(Sender: TObject);
begin
//00000000000000000000000000000000000000000000000000000000
//Stimulus Channel
//Different Algorithm
 period_timer.Enabled := false;
if ((global_data_counter > 1020) and (ch0_period_flag)) then
begin


 amp := max_amp_ch0;
 amp := amp * ch0_max_percent;
 ch0_amp_th := amp;
 ch0_amp_th_label.caption := floattostr(trunc(amp*100)/100);
 chart1.Series[1].Clear;

 chart1.Series[1].AddXY(0,min_amp + amp);
 chart1.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1020;
       stop_counter := global_data_counter - 4;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := show_array[0,data_counter - 2];
        point2 := show_array[0,data_counter];
        point3 := show_array[0,data_counter + 2];

        if ((point2 > th) and (point3 < th)) then
        begin
         t1_ch0 := data_counter * dt;
         chart1.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 30;
         dif_t_ch0 := (t1_ch0 - t2_ch0) * 1000;
         t2_ch0 := t1_ch0;
         if ((dif_t_ch0 > 30) and (dif_t_ch0 < 1000)) then
         begin
         ch0_period_label.Caption := floattostr(trunc(dif_t_ch0*10) / 10);
         ch0_rr_array[ch0_period_index] := dif_t_ch0;
         ch0_period_index := ch0_period_index + 1;
         {
         //test pulse detection routine
         T2_pulse := dif_t_ch0;
         if T1_pulse < 10 then T1_pulse := T2_Pulse - 0.1;
         delta_t_pulse := abs(T2_pulse - T1_pulse);
         delta_t_label.Caption := floattostr(trunc(delta_t_pulse*10)/10);
         //noise_check := abs( (dif_t_ch0/delta_t_pulse) - int(dif_t_ch0/delta_t_pulse));
         noise_flag := false;
         if delta_t_pulse <> 0 then
         begin
         noise_check := dif_t_ch0/delta_t_pulse;
         if ((noise_check < 1.1) and (noise_check > 0.9)) then noise_flag := true;
         if ((noise_check < 2.1) and (noise_check > 1.9)) then noise_flag := true;
         memo1.Lines.Add(floattostr(dif_t_ch0) + ' , ' + floattostr(delta_t_pulse)+ ' , ' + floattostr(noise_check));

         end;
         if ((all_pulse_process_flag = false) and (delta_t_pulse > 2.5) and (data_counter > 20) and (noise_flag = false)) then
         begin
           difference_index := data_counter;
           memo1.Lines.Add(inttostr(difference_index)+' , ' + floattostr(delta_t_pulse) + ' , ' + floattostr(noise_check));
           //chart8.BottomAxis.SetMinMax(offset_index - max_show_counter + difference_index - 2000 , offset_index - max_show_counter + difference_index + 2000);
           array_counter_resti := offset_index - max_show_counter + difference_index - 2000;
           resti_calc_btn.Click;
          // resti_calc_procedure;
          data_counter := stop_counter;
           stringgrid1.Cells[5,processed_No - 1 ] := floattostr(trunc(dif_t_ch0*10) / 10);

         end;

         }
         end;
         

        end;

       data_counter := data_counter + 2;
       T1_pulse := T2_pulse;
       until (data_counter > stop_counter);
       T1_pulse := 0;
end; //if global_data_counter > 1020 then
//00000000000000000000000000000000000000000000000000000000000000000000


//11111111111111111111111111111111111111111111111111111111111
if ((global_data_counter > 1020) and (ch1_period_flag)) then
begin

 amp := max_amp_ch1;
 amp := ch1_max_percent * amp;

 ch1_amp_th := amp;
 ch1_amp_th_label.caption := floattostr(trunc(amp*100)/100);
 chart2.Series[1].Clear;

 chart2.Series[1].AddXY(0,min_amp + amp);
 chart2.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1020;
       stop_counter := global_data_counter - 4;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := show_array[1,data_counter - 5];
        point2 := show_array[1,data_counter];
        point3 := show_array[1,data_counter + 5];

        if ((point2 > th) and (point2 > point1) and (point2 > point3)) then
        begin
         t1_ch1 := data_counter * dt;
         chart2.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 100;
         dif_t_ch1 := (t1_ch1 - t2_ch1) * 1000;
         t2_ch1 := t1_ch1;
         if ((dif_t_ch1 > 30) and (dif_t_ch1 < 1000)) then
         begin
         ch1_period_label.Caption := floattostr(trunc(dif_t_ch1*10) / 10);
         ch1_rr_array[ch1_period_index] := dif_t_ch1;
         ch1_period_index := ch1_period_index + 1;
         end;
        end;

       data_counter := data_counter + 2;
       until (data_counter > stop_counter);
end; //if global_data_counter > 1020 then
//111111111111111111111111111111111111111111111111111111111111111


//2222222222222222222222222222222222222222222222222222222222222222222
if ((global_data_counter > 1020) and (ch2_period_flag)) then
begin
 amp := max_amp_ch2;
 amp := amp * ch2_max_percent;
 ch2_amp_th := amp;
 ch2_amp_th_label.caption := floattostr(trunc(amp*100)/100);
 chart3.Series[1].Clear;

 chart3.Series[1].AddXY(0,min_amp + amp);
 chart3.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1020;
       stop_counter := global_data_counter - 4;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := show_array[2,data_counter - 5];
        point2 := show_array[2,data_counter];
        point3 := show_array[2,data_counter + 5];

        if ((point2 > th) and (point2 > point1) and (point2 > point3)) then
        begin
         t1_ch2 := data_counter * dt;
         chart3.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 100;
         dif_t_ch2 := (t1_ch2 - t2_ch2) * 1000;
         t2_ch2 := t1_ch2;
         if ((dif_t_ch2 > 30) and (dif_t_ch2 < 1000)) then
         begin
         ch2_period_label.Caption := floattostr(trunc(dif_t_ch2*10) / 10);
         ch2_rr_array[ch2_period_index] := dif_t_ch2;
         ch2_period_index := ch2_period_index + 1
         end;
        end;

       data_counter := data_counter + 2;
       until (data_counter > stop_counter);
end; //if global_data_counter > 1020 then
//2222222222222222222222222222222222222222222222222222222222222222222222222222

//333333333333333333333333333333333333333333333333333333333333333333333

if ((global_data_counter > 1020) and (ch3_period_flag)) then
begin
 amp := max_amp_ch3;
 amp := amp * ch3_max_percent;
 ch3_amp_th := amp;
 ch3_amp_th_label.caption := floattostr(trunc(amp*100)/100);
 chart4.Series[1].Clear;

 chart4.Series[1].AddXY(0,min_amp + amp);
 chart4.Series[1].AddXY(window_width,min_amp + amp);

       start_counter := global_data_counter - 1020;
       stop_counter := global_data_counter - 4;
       data_counter := start_counter;
       th := min_amp + amp;
       repeat
        point1 := show_array[3,data_counter - 5];
        point2 := show_array[3,data_counter];
        point3 := show_array[3,data_counter + 5];

        if ((point2 > th) and (point2 > point1) and (point2 > point3)) then
        begin
         t1_ch3 := data_counter * dt;
         chart4.Series[2].AddXY(data_counter , point2);
         data_counter := data_counter + 100;
         dif_t_ch3 := (t1_ch3 - t2_ch3) * 1000;
         t2_ch3 := t1_ch3;
         if ((dif_t_ch3 > 30) and (dif_t_ch3 < 1000)) then
         begin
         ch3_period_label.Caption := floattostr(trunc(dif_t_ch3*10) / 10);
         ch3_rr_array[ch3_period_index] := dif_t_ch3;
         ch3_period_index := ch3_period_index + 1
         end;
        end;

       data_counter := data_counter + 2;
       until (data_counter > stop_counter);
end; //if global_data_counter > 1020 then
//333333333333333333333333333333333333333333333333333333333333

end;

procedure TMainForm.reprocess_timerTimer(Sender: TObject);
begin
  chart8.BottomAxis.SetMinMax(array_counter_resti-2000,array_counter_resti+2000);
  reprocess_resti_btn.Click;

  if array_counter_resti > final_process_index-300 then reprocess_timer.Enabled := false;
   

end;

procedure TMainForm.reprocess_resti_btnClick(Sender: TObject);
begin
//************************************************************************************************************************
    apdx_scale := strtofloat(edit9.Text) / 100;
    stimulus_dependent_flag := stimulus_dependent.checked;

if auto_base_flag then
begin
 base_ave := base_sum / base_count;
 base_line := base_ave;
end
else
begin
  base_line := ((base_line_trackbar.Position)/ 100);
  base_line := base_line * (max_amp_MAP - min_amp_MAP);
  base_line := max_amp_MAP - base_line;
end;

chart8.Series[6].Clear;
 chart8.Series[6].AddXY(0,base_line);
  chart8.Series[6].AddXY(final_process_index,base_line);

  
   label30.caption := floattostr(trunc(base_line*100)/100);
   all_pulse_process_flag := not only_test_process_radio_btn.checked;




    APDx_Value := max_amp_MAP - (apdx_scale * (max_amp_MAP - base_line));
    array_counter_resti_lower_limit := 0;

    dt := 1.0 / BufferedAiCtrl1.ConvertClock.Rate;

    stimulus_th := (max_amp_stimulus - min_amp_stimulus) / 2;
//*************************************************************************************************
//find falling edge for DI Start
    repeat
      array_counter_resti := array_counter_resti + 1;
    until ( ((MAP_endo_array[array_counter_resti] >= APDx_Value) and (MAP_endo_array[array_counter_resti+1] < APDx_Value))  or (array_counter_resti > final_process_index));

    DI_start_index := array_counter_resti;
    DI_start := DI_start_index * dt;



//*************************************************************************************************
//find rising edge for DI end and APD Start
    MAP_endo_min := 1000;
    repeat
    if MAP_endo_array[array_counter_resti] < MAP_endo_min then
      begin
      MAP_endo_min := MAP_endo_array[array_counter_resti];
      MAP_endo_min_index := array_counter_resti;

      end;
      array_counter_resti := array_counter_resti + 1;

    until ( ((MAP_endo_array[array_counter_resti] <= APDx_Value) and (MAP_endo_array[array_counter_resti+1] > APDx_Value))  or (array_counter_resti > final_process_index));

   APDx_start_index := array_counter_resti;
   APDx_start := array_counter_resti * dt;

   DI_end_index := APDx_start_index;
   DI_end := APDx_start;
//*************************************************************************************************

//*************************************************************************************************
//find falling edge for APD end
    MAP_Endo_Max := -1000;
    repeat
      array_counter_resti := array_counter_resti + 1;
      if MAP_endo_array[array_counter_resti] > MAP_endo_max then
      begin
      MAP_endo_max := MAP_endo_array[array_counter_resti];
      MAP_endo_max_index := array_counter_resti;

      end;
    until ( ((MAP_endo_array[array_counter_resti] >= APDx_Value) and (MAP_endo_array[array_counter_resti+1] < APDx_Value))  or (array_counter_resti > final_process_index));

    APDx_end_index := array_counter_resti;
    APDx_end := APDx_end_index * dt;
//*************************************************************************************************


//******************************************************************************
//Find falling edge of stimulus  S2
array_counter_resti_2 := DI_start_index;
repeat
array_counter_resti_2 := array_counter_resti_2 + 1;
until ((array_counter_resti_2 > apdx_end_index) or ((stimulus_array[array_counter_resti_2] >= stimulus_th) and (stimulus_array[array_counter_resti_2 + 1] < stimulus_th)));
S2_index := array_counter_resti_2;


//Find falling edge of stimulus S1
array_counter_resti_2 := DI_start_index;
repeat
array_counter_resti_2 := array_counter_resti_2 - 1;
until ((array_counter_resti_2 < array_counter_resti_lower_limit) or ((stimulus_array[array_counter_resti_2] >= stimulus_th) and (stimulus_array[array_counter_resti_2 + 1] < stimulus_th)));
S1_index := array_counter_resti_2;

S2_V2 := (Map_Endo_Max_index - S2_index) * dt;
S2_V2 := S2_V2 * 1000;

if s2_v2 > 0 then
begin
 s2_v2 := s2_v2;

end;
S1S2 := (S2_index - S1_index) * dt;
S1S2 := S1S2 * 1000;

    DI := DI_end - DI_Start;
    APDx := APDx_end - APDx_start;
   // ERP := (DI + APDx) * 1000;
     ERP := (APDx) * 1000;

    DI :=  DI*1000;
    APDx := APDx*1000;
    APA := MAP_endo_Max - MAP_endo_Min;

    APD_Slope := (MAP_endo_array[APDx_End_index] - MAP_endo_array[APDx_Start_index]) / ((APDx_End_index-APDx_Start_index)*dt);
    DI_Slope := (MAP_endo_array[DI_End_index] - MAP_endo_array[DI_Start_index]) / ((DI_End_index-DI_Start_index)*dt);
    if ((DI < 1000) and (DI > 10) and (APDx < 1000) and (APDx > 2) and (APA > 0.1) and (S1S2 > 10) and (S2_V2 > 2) and (abs(APD_Slope)<0.3) and (abs(DI_Slope)<0.3)) then
    begin
    S1S2_Array[S1S2_Array_index] := S1S2;
    S1S2_Array_index := S1S2_Array_index + 1;
     // check for new S1S2
     new_s1s2_flag := true;
     for pulse_index_counter := 1 to S1S2_Array_index-2 do
       if abs(S1S2_Array[pulse_index_counter] - S1S2) < 2 then new_s1s2_flag := false;

    if  S1S2_Array_index = 20 then
    begin
    S1S2_Array_index := S1S2_Array_index;

    end;





   if all_pulse_process_flag then
     begin
     stringgrid1.Cells[0,processed_No] := inttostr(processed_No);
     stringgrid1.Cells[1,processed_No] := formatfloat('#.###',APA);

     stringgrid1.Cells[2,processed_No] := formatfloat('#.#',APDx);
     stringgrid1.Cells[3,processed_No] := formatfloat('#.#',DI);
     stringgrid1.Cells[4,processed_No] := formatfloat('#.#',S2_V2);
     stringgrid1.Cells[5,processed_No] := formatfloat('#.#',S1S2);

     stringgrid1.RowCount := processed_No + 1;
     processed_No := processed_No + 1;
    chart7.Series[0].AddXY(DI,APDx);
    chart9.Series[0].AddXY(DI,S2_V2);

    //show APDx and DI
      chart8.Series[4].Clear;
      chart8.Series[5].Clear;
      chart8.Series[4].AddXY(DI_start_index , MAP_endo_array[DI_start_index]);
      chart8.Series[4].AddXY(DI_end_index , MAP_endo_array[DI_end_index]);
      chart8.Series[5].AddXY(APDx_start_index , MAP_endo_array[APDx_start_index]);
      chart8.Series[5].AddXY(APDx_end_index , MAP_endo_array[APDx_end_index]);
      stringgrid1.Cells[7,processed_No] := inttostr(di_start_index);;

    //Show S2V2
    chart8.Series[7].Clear;
    chart8.series[7].AddXY(S2_index , min_amp_MAP + (max_amp_stimulus/Scale_Factor));
    chart8.series[7].AddXY(MAP_Endo_max_index , MAP_endo_max);

    // Show S1S2
    chart8.Series[9].Clear;
    chart8.series[9].AddXY(S1_index , min_amp_MAP + (max_amp_stimulus/Scale_Factor));
    chart8.series[9].AddXY(S2_index , min_amp_MAP + (max_amp_stimulus/Scale_Factor));
  end
  else //all_pulse_process_flag
  begin
    //new S1S2 Check
     if new_s1s2_flag then
     begin
     stringgrid1.Cells[0,processed_No] := inttostr(processed_No);
     stringgrid1.Cells[1,processed_No] := formatfloat('#.###',APA);

     stringgrid1.Cells[2,processed_No] := formatfloat('#.#',APDx);
     stringgrid1.Cells[3,processed_No] := formatfloat('#.#',DI);
     stringgrid1.Cells[4,processed_No] := formatfloat('#.#',S2_V2);
     stringgrid1.Cells[5,processed_No] := formatfloat('#.#',S1S2);

     stringgrid1.RowCount := processed_No + 1;
     processed_No := processed_No + 1;
    chart7.Series[0].AddXY(DI,APDx);
    chart9.Series[0].AddXY(DI,S2_V2);
    
     //show APDx and DI
      chart8.Series[4].Clear;
      chart8.Series[5].Clear;
      chart8.Series[4].AddXY(DI_start_index , MAP_endo_array[DI_start_index]);
      chart8.Series[4].AddXY(DI_end_index , MAP_endo_array[DI_end_index]);
      chart8.Series[5].AddXY(APDx_start_index , MAP_endo_array[APDx_start_index]);
      chart8.Series[5].AddXY(APDx_end_index , MAP_endo_array[APDx_end_index]);
      stringgrid1.Cells[7,processed_No] := inttostr(di_start_index);;

    //Show S2V2
    chart8.Series[7].Clear;
    chart8.series[7].AddXY(S2_index , max_amp_stimulus/Scale_Factor);
    chart8.series[7].AddXY(MAP_Endo_max_index , MAP_endo_max);

    // Show S1S2
    chart8.Series[9].Clear;
    chart8.series[9].AddXY(S1_index , min_amp_MAP + (max_amp_stimulus/Scale_Factor));
    chart8.series[9].AddXY(S2_index , min_amp_MAP + (max_amp_stimulus/Scale_Factor));
 

    end; // if new_s1s2_flag then




  end; //all_pulse_process_flag




    end;






//set value for recursive function
//array_counter_resti setting for next process
array_counter_resti := array_counter_resti - 50;

end;

procedure TMainForm.Button17Click(Sender: TObject);
begin
panel5.Visible := true;
panel5.Top := button17.Top + button17.Height + 3;
scale_equ_index := 0;

if a_factor_ch0 < 0 then
begin
edit7.Text :=  floattostr(-1 * a_factor_ch0);
checkbox2.Checked := true;
end
else
begin
edit7.Text := floattostr(a_factor_ch0);
checkbox2.Checked := false;
end;

edit8.Text := floattostr(b_factor_ch0);


end;

procedure TMainForm.Button18Click(Sender: TObject);
begin
panel5.Visible := true;
panel5.Top := button18.Top + button18.Height + 3;
scale_equ_index := 1;

if a_factor_ch1 < 0 then
begin
edit7.Text := floattostr(-1 * a_factor_ch1);
checkbox2.Checked := true;
end
else
begin
edit7.Text := floattostr(a_factor_ch1);
checkbox2.Checked := false;
end;

edit8.Text := floattostr(b_factor_ch1);

end;

procedure TMainForm.Button19Click(Sender: TObject);
begin
panel5.Visible := true;
panel5.Top := button19.Top + button19.Height + 3;
scale_equ_index := 2;

if a_factor_ch2 < 0 then
begin
edit7.Text := floattostr(-1 * a_factor_ch2);
checkbox2.Checked := true;
end
else
begin
edit7.Text := floattostr(a_factor_ch2);
checkbox2.Checked := false;
end;

edit8.Text := floattostr(b_factor_ch2);

end;

procedure TMainForm.Button20Click(Sender: TObject);
begin
panel5.Visible := true;
panel5.Top := button20.Top + button20.Height + 3;
scale_equ_index := 3;

if a_factor_ch3 < 0 then
begin
edit7.Text := floattostr(-1 * a_factor_ch3);
checkbox2.Checked := true;
end
else
begin
edit7.Text := floattostr(a_factor_ch3);
checkbox2.Checked := false;
end;

edit8.Text := floattostr(b_factor_ch3);

end;

procedure TMainForm.Button51Click(Sender: TObject);
begin
if scale_equ_index = 0 then
begin
 if checkbox2.Checked then a_factor_ch0 := -1 * strtofloat(edit7.Text)
 else a_factor_ch0 := strtofloat(edit7.Text);
 b_factor_ch0 := strtofloat(edit8.Text);
end;

if scale_equ_index = 1 then
begin
 if checkbox2.Checked then a_factor_ch1 := -1 * strtofloat(edit7.Text)
 else a_factor_ch1 := strtofloat(edit7.Text);
 b_factor_ch1 := strtofloat(edit8.Text);
end;

if scale_equ_index = 2 then
begin
 if checkbox2.Checked then a_factor_ch2 := -1 * strtofloat(edit7.Text)
 else a_factor_ch2 := strtofloat(edit7.Text);
 b_factor_ch2 := strtofloat(edit8.Text);
end;

if scale_equ_index = 3 then
begin
 if checkbox2.Checked then a_factor_ch3 := -1 * strtofloat(edit7.Text)
 else a_factor_ch3 := strtofloat(edit7.Text);
 b_factor_ch3 := strtofloat(edit8.Text);
end;

panel5.Visible := false;

end;

procedure TMainForm.auto_baseClick(Sender: TObject);
begin
auto_base_flag := auto_base.Checked;
base_line_trackbar.Enabled := not auto_base_flag;

end;

procedure TMainForm.min_as_baseClick(Sender: TObject);
begin
min_as_base_flag := min_as_base.checked;
end;

end.



