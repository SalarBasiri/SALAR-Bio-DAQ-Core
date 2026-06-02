unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DaqUtils, ExtCtrls, StdCtrls, ComCtrls, OleCtrls, BDaqOcxLib_TLB, Math,
  TeeProcs, TeEngine, Chart, Series;



type
   single_ch = array [0..50000] of double;
       huge_real_array =  array[0..7,0..250000] of real;
         float_array_small = array [0 .. 1000] of real;

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
    Chart5: TChart;
    Chart6: TChart;
    Series5: TLineSeries;
    Series6: TLineSeries;
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
    ch5_show: TCheckBox;
    ch6_show: TCheckBox;
    Label12: TLabel;
    Button7: TButton;
    Label13: TLabel;
    Button8: TButton;
    Edit2: TEdit;
    UpDown1: TUpDown;
    GroupBox4: TGroupBox;
    Chart7: TChart;
    GroupBox5: TGroupBox;
    BtnStart: TButton;
    BtnPause: TButton;
    BtnStop: TButton;
    Button1: TButton;
    CheckBox1: TCheckBox;
    ch2_filter: TCheckBox;
    ch1_filter: TCheckBox;
    ch3_filter: TCheckBox;
    ch4_filter: TCheckBox;
    ch5_filter: TCheckBox;
    ch0_filter: TCheckBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    g6: TGroupBox;
    GroupBox6: TGroupBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    UpDown7: TUpDown;
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
    ch4_period: TCheckBox;
    ch5_period: TCheckBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    ch2_period_label: TLabel;
    ch3_period_label: TLabel;
    ch4_period_label: TLabel;
    ch5_period_label: TLabel;
    Series15: TLineSeries;
    Series16: TPointSeries;
    Series7: TPointSeries;
    Series17: TPointSeries;
    Series18: TPointSeries;
    Series8: TLineSeries;
    Series10: TLineSeries;
    ch1_restitution: TCheckBox;
    ch2_restitution: TCheckBox;
    ch3_restitution: TCheckBox;
    Edit9: TEdit;
    Label23: TLabel;
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
    procedure CheckBox1Click(Sender: TObject);
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
    procedure ch5_showClick(Sender: TObject);
    procedure ch6_showClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure ch0_filterClick(Sender: TObject);
    procedure ch1_filterClick(Sender: TObject);
    procedure ch2_filterClick(Sender: TObject);
    procedure ch3_filterClick(Sender: TObject);
    procedure ch4_filterClick(Sender: TObject);
    procedure ch5_filterClick(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure ch0_periodClick(Sender: TObject);
    procedure ch1_periodClick(Sender: TObject);
    procedure ch2_periodClick(Sender: TObject);
    procedure ch3_periodClick(Sender: TObject);
    procedure ch4_periodClick(Sender: TObject);
    procedure ch5_periodClick(Sender: TObject);
    procedure ch1_restitutionClick(Sender: TObject);
    procedure ch2_restitutionClick(Sender: TObject);
    procedure ch3_restitutionClick(Sender: TObject);
  //  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations } //AI
    m_graph : TSimpleGraph;
   // ch2_graph : TSimpleGraph;
    isFirstOverRun : Boolean;
    dataScaledArray : array of Double;
    ch_data_double_array : array [0..7,0..2048] of double;
    time_array : array [0..1024] of double;



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

  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
     c, max_length : integer;
     single_ch1 , single_ch2 : single_ch;
     dt : double;
     global_data_counter : int64;
     window_width : integer;
     daq_file , save_file : text;


     ch0_data,ch1_data,ch2_data,ch3_data,ch4_data,ch5_data,ch6_data,ch7_data : double;
     t : double;
     s : string;
     save_flag : string;


     max_freq_count,freq_count  : integer;
     flag : string;
     show_on_screen : boolean;

     i_desired ,v_control : double;

     ai_ao_count : integer;
     chart_show_count , new_h: integer;
     z_freq : integer;
     z_calc_flag : boolean;

     sum_v1 , sum_v2 , my_z : double;

     max_chart_block : integer;
     block_counter : integer;

          save_array : huge_real_array;


          f0,f1,f2,f3,f4,f5 : integer;
          n0 , n1 , n2 , n3, n4 , n5 : integer;

f_cutoff_0 ,f_cutoff_1 ,f_cutoff_2 ,f_cutoff_3 ,f_cutoff_4 ,f_cutoff_5  : double;

ch0_fir_window_width , ch1_fir_window_width , ch2_fir_window_width : integer;
ch3_fir_window_width , ch4_fir_window_width , ch5_fir_window_width : integer;


ch0_fir_flag , ch1_fir_flag , ch2_fir_flag : boolean;
ch3_fir_flag , ch4_fir_flag , ch5_fir_flag : boolean;

       start_counter , stop_counter ,data_counter : int64;
       ch0_sum , ch1_sum , ch2_sum : double;
       ch3_sum , ch4_sum , ch5_sum : double;

       ch0_period_flag , ch1_period_flag , ch2_period_flag : boolean;
       ch3_period_flag , ch4_period_flag , ch5_period_flag : boolean;

       ch0_amp , ch1_amp , ch2_amp : double;
       ch3_amp , ch4_amp , ch5_amp : double;

       min_amp , max_amp , amp : double;
       
       point1 , point2 , point3 : double;

       my_time_array : single_ch;

       t1_ch0 , t2_ch0  ,dif_t_ch0 : double;
       t1_ch1 , t2_ch1  ,dif_t_ch1 : double;
       t1_ch2 , t2_ch2  ,dif_t_ch2 : double;
       t1_ch3 , t2_ch3  ,dif_t_ch3 : double;
       t1_ch4 , t2_ch4  ,dif_t_ch4 : double;
       t1_ch5 , t2_ch5  ,dif_t_ch5 : double;

       th : double;



       ch1_resti_flag , ch2_resti_flag , ch3_resti_flag : boolean;

       Mean_Stimulus  , MAP_Threshold: real;

       start_index , final_index : int64;


               Max_MAP , MAP_endo_Max1 : real;

        MAP_endo_Max1_index : int64;
        my_MAP : real;

        min_MAP , MAP_endo_Min1 : real;
        MAP_endo_Min1_index : int64;

        APDx_Value , apdx_scale : real;


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
w_lpf , w_hamming , w_filter : float_array_small;
moving_counter : int64;
sum : double;
MAP_endo_array_filtered : single_ch;
FIR_Scale : real;
w_filter_ch0 : float_array_small;
w_filter_ch1 : float_array_small;
w_filter_ch2 : float_array_small;
w_filter_ch3 : float_array_small;
w_filter_ch4 : float_array_small;
w_filter_ch5 : float_array_small;
w_filter_ch6 : float_array_small;
w_filter_ch7 : float_array_small;

implementation

uses Unit1;




{$R *.dfm}







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


   assignfile(daq_file,'c:/data/daq.sdcdat');


rewrite(daq_file);
t := 0;

save_flag := 'true';


label11.Caption := 'Active';

max_chart_block := trackbar1.Position;
window_width := trackbar1.Position * 1024;
label4.Caption := inttostr(window_width);


F0 := strtoint(edit3.Text);
F1 := strtoint(edit4.Text);
F2 := strtoint(edit5.Text);
F3 := strtoint(edit6.Text);
F4 := strtoint(edit7.Text);
F5 := strtoint(edit8.Text);

f_cutoff_0 := f0 / 4000;
f_cutoff_1 := f1 / 4000;
f_cutoff_2 := f2 / 4000;
f_cutoff_3 := f3 / 4000;
f_cutoff_4 := f4 / 4000;
f_cutoff_5 := f5 / 4000;



N0 := trunc( sqrt(0.25 + f_cutoff_0*f_cutoff_0) / f_cutoff_0 );
N1 := trunc( sqrt(0.25 + f_cutoff_1*f_cutoff_1) / f_cutoff_1 );
N2 := trunc( sqrt(0.25 + f_cutoff_2*f_cutoff_2) / f_cutoff_2 );
N3 := trunc( sqrt(0.25 + f_cutoff_3*f_cutoff_3) / f_cutoff_3 );
N4 := trunc( sqrt(0.25 + f_cutoff_4*f_cutoff_4) / f_cutoff_4 );
N5 := trunc( sqrt(0.25 + f_cutoff_5*f_cutoff_5) / f_cutoff_5 );


ch0_fir_window_width := N0;
ch1_fir_window_width := N1;
ch2_fir_window_width := N2;
ch3_fir_window_width := N3;
ch4_fir_window_width := N4;
ch5_fir_window_width := N5;



ch0_fir_flag := ch0_filter.checked;
ch1_fir_flag := ch1_filter.checked;
ch2_fir_flag := ch2_filter.checked;
ch3_fir_flag := ch3_filter.checked;
ch4_fir_flag := ch4_filter.checked;
ch5_fir_flag := ch5_filter.checked;



ch0_period_flag := ch0_period.checked;
ch1_period_flag := ch1_period.checked;
ch2_period_flag := ch2_period.checked;
ch3_period_flag := ch3_period.checked;


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
   self.Caption := 'Advanced DAQ(' + devDesc + ')';

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
mainform.Width := 1920;
mainform.Top := 0;
mainform.Height := 1000;

chart_show_count := 6;

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
   xmax, xmin : Double;
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

   //draw the data to the PaintBox
   dataPerPlot := Count div BufferedAiCtrl1.ScanChannel.ChannelCount;
   dataScaledArray := dataScaled;

   //label3.Caption := inttostr(dataPerPlot);

 //old Show
 //  m_graph.Chart(dataScaledArray, BufferedAiCtrl1.ScanChannel.ChannelCount, dataPerPlot, 1.0 / BufferedAiCtrl1.ConvertClock.Rate);




   max_length := trunc(length(dataScaledArray) / 8)-1;
   dt := 1.0 / BufferedAiCtrl1.ConvertClock.Rate;
   sum_v1 := 0;
   sum_v2 := 0;
for c := 0 to 1023 do
   begin


    ch0_data := dataScaledArray[c*8];
    ch1_data := dataScaledArray[c*8+1];
    ch2_data := dataScaledArray[c*8+2];
    ch3_data := dataScaledArray[c*8+3];
    ch4_data := dataScaledArray[c*8+4];
    ch5_data := dataScaledArray[c*8+5];
    ch6_data := dataScaledArray[c*8+6];
    ch7_data := dataScaledArray[c*8+7];


   save_array[0,global_data_counter] := ch0_data;
   save_array[1,global_data_counter] := ch1_data;
   save_array[2,global_data_counter] := ch2_data;
   save_array[3,global_data_counter] := ch3_data;
   save_array[4,global_data_counter] := ch4_data;
   save_array[5,global_data_counter] := ch5_data;
   save_array[6,global_data_counter] := ch6_data;
   save_array[7,global_data_counter] := ch7_data;




   // FIR Filter
   
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


   //end of FIR Filter


    my_time_array[global_data_counter] := global_data_counter * dt;
    t := t + dt;

   global_data_counter := global_data_counter + 1;

    if z_calc_flag then
    begin
     sum_v1 := sum_v1 + ch6_data*ch6_data;
     sum_v2 := sum_v2 + ch7_data*ch7_data;


    end;



    s := '';
    s := s + floattostr(t)+chr(9)+floattostr(ch0_data)+chr(9)+floattostr(ch1_data)+chr(9);
    s := s +  floattostr(ch2_data)+chr(9)+floattostr(ch3_data)+chr(9)+floattostr(ch4_data)+chr(9);
    s := s +  floattostr(ch5_data)+chr(9)+floattostr(ch6_data)+chr(9)+floattostr(ch7_data);

   if save_flag = 'true' then writeln(daq_file,s);

    if show_on_screen  then
    begin
    chart1.Series[0].Add(ch0_data);
    chart2.Series[0].Add(ch1_data);
    chart3.Series[0].Add(ch2_data);
    chart4.Series[0].Add(ch3_data);
    chart5.Series[0].Add(ch4_data);
    chart6.Series[0].Add(ch5_data);

    // Impedance Form
//     impedance_form.Chart1.Series[0].Add(ch6_data);
//     impedance_form.Chart2.Series[0].Add(ch7_data);
    end;



end; //for c := 0 to 1023 do

   block_counter := block_counter + 1;

   if block_counter >= 1 then
   begin
     block_counter := block_counter;
   end;

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
  {  MAP_Threshold := th;
    repeat
     data_counter := data_counter + 1;
    until ( ((save_array[1,data_counter] >= MAP_Threshold) and (save_array[1,data_counter+2] < MAP_Threshold)) or (data_counter > stop_counter));

    start_index := data_counter;

    repeat
     data_counter := data_counter + 1;
    until ( ((save_array[1,data_counter] <= MAP_Threshold) and (save_array[1,data_counter+2] > MAP_Threshold)) or (data_counter > stop_counter));

    final_index := data_counter; }

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
   {
    if erp < 1000 then
    begin

      chart3.Series[0].AddXY(time_array[DI_start_index],ERP);
      chart3.Series[0].AddXY(time_array[APDx_end_index],ERP);

    end;
    }

   // label7.Caption := 'Array Counter : ' + inttostr(data_counter);
   // gauge1.Progress := trunc(data_counter / 1000);

 //set value for recursive function
 //  data_counter := APDx_end_index;


  

end;


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


if ((show_on_screen) and (block_counter > max_chart_block)) then
   begin
   block_counter := 0;
   global_data_counter := 0;
   chart1.Series[0].Clear;
   chart2.Series[0].Clear;
    chart3.Series[0].Clear;
    chart4.Series[0].Clear;
    chart5.Series[0].Clear;
    chart6.Series[0].Clear;
 //   impedance_form.chart1.Series[0].clear;
 //   impedance_form.chart2.Series[0].clear;

   //event points clear
    chart1.Series[2].Clear;
    chart2.Series[2].Clear;
    chart3.Series[2].Clear;
    chart4.Series[2].Clear;


    chart2.Series[1].Clear;
    

   chart1.BottomAxis.SetMinMax(0,window_width);
   chart2.BottomAxis.SetMinMax(0,window_width);
   chart3.BottomAxis.SetMinMax(0,window_width);
   chart4.BottomAxis.SetMinMax(0,window_width);
   chart5.BottomAxis.SetMinMax(0,window_width);
   chart6.BottomAxis.SetMinMax(0,window_width);

//   impedance_form.chart1.BottomAxis.SetMinMax(0,window_width);
//   impedance_form.chart2.BottomAxis.SetMinMax(0,window_width);



   chart1.Refresh;
   chart2.Refresh;
   chart3.Refresh;
   chart4.Refresh;
   chart5.Refresh;
   chart6.Refresh;
//   impedance_form.chart1.refresh;
//   impedance_form.chart2.refresh;
 {
   if z_calc_flag then
   begin
     sum_v1 := sqrt(sum_v1);
     sum_v2 := sqrt(sum_v2);
     my_z := sum_v1 / sum_v2;
     impedance_form.Chart3.Series[0].AddXY(z_freq,my_z);
     impedance_form.memo1.lines.add(inttostr(z_freq)+chr(9)+floattostr(my_z));
     z_calc_flag := false;
   end;
        }
   end;

   
  // ch2_graph.Chart(single_ch1, 1, 512, 1.0 / BufferedAiCtrl1.ConvertClock.Rate);



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
   xmax,xmin: Double;
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
end;

procedure TMainForm.TrackBar1Change(Sender: TObject);
begin
max_chart_block := trackbar1.Position;
window_width := trackbar1.Position * 1024;
label4.Caption := inttostr(window_width);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
assignfile(daq_file,'c:/data/daq.sdcdat');
reset(daq_file);
assignfile(save_file,savedialog1.FileName+'.txt');
rewrite(save_file);

s:= 'Interval='+chr(9)+	floattostr(0.0002)+' s';
writeln(save_file,s);

s := 'ExcelDateTime=	4.2592424512433077e+004	10-Aug-16 10:11:17.874218';
writeln(save_file,s);

s := 'TimeFormat=	StartOfBlock';
writeln(save_file,s);

s := 'DateFormat='+chr(9);
writeln(save_file,s);

s := 'ChannelTitle='+chr(9)+'Ch0'+chr(9)+'Ch1'+chr(9)+'Ch2'+chr(9)+'Ch3'+chr(9)+'Ch4'+chr(9)+'Ch5';
writeln(save_file,s);

s := 'Range=	10.000 V	10.000 V	10.000 V	10.000 V	10.000 V	10.000 V';
writeln(save_file,s);

s:= 'UnitName=	V	V	V	V	V	V';
writeln(save_file,s);

s := 'TopValue=	10.00	10.00	10.00	10.00	10.00	10.00';
writeln(save_file,s);

s := 'BottomValue=	-10.00	-10.00	-10.00	-10.00	-10.00	-10.00';
writeln(save_file,s);

while(not eof(daq_file)) do
begin
readln(daq_file,s);
writeln(save_file,s);

end;

closefile(daq_file);
closefile(save_file);


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

procedure TMainForm.CheckBox1Click(Sender: TObject);
begin
show_on_screen := checkbox1.Checked;

end;

procedure TMainForm.RadioButton1Click(Sender: TObject);

var
c : integer;
   err : ErrorCode;
begin

//AI_AO_Handle
ai_ao_count := 1;
ai_ao_handle.Enabled := true;


//range setting
   portdatas[0] := portdatas[0] and 251;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
  sleep(10);


end;

procedure TMainForm.RadioButton2Click(Sender: TObject);

var
c : integer;
   err : ErrorCode;
begin
//AI_AO_Handle
ai_ao_count := 1;
ai_ao_handle.Enabled := true;


//range setting
portdatas[0] := portdatas[0] or 4;
   err := InstantDoCtrl1.WritePort(0 + 0, portDatas[0]);
   if err <> Success then
      HandleError(err);
sleep(10);


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

end;

procedure TMainForm.TrackBar2Change(Sender: TObject);
begin
ai_ao_count := 1;
ai_ao_handle.Enabled := true;
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
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch2_show.checked then chart1.Height := new_h;
chart1.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;


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
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart2.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;


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
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart3.Height := 30;
if ch2_show.checked  then chart2.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;


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
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart4.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch2_show.checked  then chart2.Height := new_h;
if ch5_show.checked  then chart5.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;


end;

end;

procedure TMainForm.ch5_showClick(Sender: TObject);
begin
if ch5_show.Checked then chart_show_count := chart_show_count +1
else chart_show_count := chart_show_count -1;

label12.Caption := inttostr(chart_show_count);

if ch5_show.Checked then
begin


new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked  then chart1.Height := new_h;
chart5.Height := 150;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;
if ch2_show.checked  then chart2.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart5.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;
if ch2_show.checked  then chart2.Height := new_h;
if ch6_show.checked  then chart6.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;


end;

end;

procedure TMainForm.ch6_showClick(Sender: TObject);
begin
if ch6_show.Checked then chart_show_count := chart_show_count +1
else chart_show_count := chart_show_count -1;

label12.Caption := inttostr(chart_show_count);

if ch6_show.Checked then
begin


new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked  then chart1.Height := new_h;
chart6.Height := 150;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;
if ch5_show.checked  then chart5.Height := new_h;
if ch2_show.checked  then chart2.Height := new_h;

chart1.top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;

end
else
begin

new_h :=  trunc ( (900 - (6-chart_show_count)*30)  / chart_show_count);
if ch1_show.checked then chart1.Height := new_h;
chart6.Height := 30;
if ch3_show.checked  then chart3.Height := new_h;
if ch4_show.checked  then chart4.Height := new_h;
if ch5_show.checked  then chart5.Height := new_h;
if ch2_show.checked  then chart2.Height := new_h;

chart1.Top := 0;
chart2.Top := chart1.Height;
chart3.Top := chart1.Height + chart2.Height;
chart4.Top := chart1.Height + chart2.Height + chart3.Height;
chart5.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height;
chart6.Top := chart1.Height + chart2.Height + chart3.Height + chart4.Height + chart5.Height;


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

procedure TMainForm.Button17Click(Sender: TObject);
begin
chart5.LeftAxis.SetMinMax(chart5.LeftAxis.Minimum/2 , chart5.LeftAxis.Maximum/2);

end;

procedure TMainForm.Button19Click(Sender: TObject);
begin
chart6.LeftAxis.SetMinMax(chart6.LeftAxis.Minimum/2 , chart6.LeftAxis.Maximum/2);

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

procedure TMainForm.Button18Click(Sender: TObject);
begin
chart5.LeftAxis.SetMinMax(chart5.LeftAxis.Minimum*2 , chart5.LeftAxis.Maximum*2);

end;

procedure TMainForm.Button20Click(Sender: TObject);
begin
chart6.LeftAxis.SetMinMax(chart6.LeftAxis.Minimum*2 , chart6.LeftAxis.Maximum*2);

end;

procedure TMainForm.ch0_filterClick(Sender: TObject);
begin
ch0_fir_flag := ch0_filter.checked;

end;

procedure TMainForm.ch1_filterClick(Sender: TObject);
begin
ch1_fir_flag := ch1_filter.checked;
 ch1_restitution.Enabled := ch1_fir_flag;

end;

procedure TMainForm.ch2_filterClick(Sender: TObject);
begin
ch2_fir_flag := ch2_filter.checked;
  ch2_restitution.Enabled := ch2_fir_flag;
end;

procedure TMainForm.ch3_filterClick(Sender: TObject);
begin
ch3_fir_flag := ch3_filter.checked;
   ch3_restitution.Enabled := ch3_fir_flag;
end;

procedure TMainForm.ch4_filterClick(Sender: TObject);
begin
ch4_fir_flag := ch4_filter.checked;

end;

procedure TMainForm.ch5_filterClick(Sender: TObject);
begin
ch5_fir_flag := ch5_filter.checked;

end;

procedure TMainForm.Edit3Change(Sender: TObject);
begin
F0 := strtoint(edit3.Text);

filter_length := 201;
f_cut_off_Hz := F0;
M := filter_length - 1;
Sampling_frequency := 4000;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

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
Sampling_frequency := 4000;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

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
Sampling_frequency := 4000;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

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
Sampling_frequency := 4000;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

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

procedure TMainForm.Edit7Change(Sender: TObject);
begin
F4 := strtoint(edit7.Text);

filter_length := 201;
f_cut_off_Hz := F4;
M := filter_length - 1;
Sampling_frequency := 4000;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

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
  w_filter_ch4[n] := FIR_Scale * w_filter[n];
end;

end;

procedure TMainForm.Edit8Change(Sender: TObject);
begin

F5 := strtoint(edit8.Text);

filter_length := 201;
f_cut_off_Hz := F5;
M := filter_length - 1;
Sampling_frequency := 4000;
f_cut_off := f_cut_off_Hz / Sampling_frequency;
M_2 := M div 2;
//chart4.Series[0].Clear;
for n := 0 to M do
begin
 if n <> M_2 then  w_lpf[n] := sin (2 * 3.1415 * f_cut_off * (n - M_2))  / (3.1415 * (n - M_2));
//   chart4.Series[0].AddXY(n, w_lpf[n]);
end;
w_lpf[M_2] := 2 * f_cut_off;
chart4.Series[0].AddXY(M_2, w_lpf[M_2]);

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
  w_filter_ch5[n] := FIR_Scale * w_filter[n];
end;

end;

procedure TMainForm.ch0_periodClick(Sender: TObject);
begin
ch0_period_flag := ch0_period.Checked;

end;

procedure TMainForm.ch1_periodClick(Sender: TObject);
begin
ch1_period_flag := ch1_period.Checked;

end;

procedure TMainForm.ch2_periodClick(Sender: TObject);
begin
ch2_period_flag := ch2_period.Checked;

end;

procedure TMainForm.ch3_periodClick(Sender: TObject);
begin
ch3_period_flag := ch3_period.Checked;
end;

procedure TMainForm.ch4_periodClick(Sender: TObject);
begin
ch4_period_flag := ch4_period.Checked;
end;

procedure TMainForm.ch5_periodClick(Sender: TObject);
begin
ch5_period_flag := ch5_period.Checked;
end;

procedure TMainForm.ch1_restitutionClick(Sender: TObject);
begin
ch1_resti_flag := ch1_restitution.Checked;
 apdx_scale := strtofloat(edit9.Text) / 100;
end;

procedure TMainForm.ch2_restitutionClick(Sender: TObject);
begin
ch2_resti_flag := ch2_restitution.Checked;
 apdx_scale := strtofloat(edit9.Text) / 100;
end;

procedure TMainForm.ch3_restitutionClick(Sender: TObject);
begin
ch3_resti_flag := ch3_restitution.Checked;
 apdx_scale := strtofloat(edit9.Text) / 100;
end;

end.



