unit SerialNGSFileDemoMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, SerialNG, ComCtrls , Clipbrd;

  type
    TCopyDataStruct = packed record
    dwData: DWORD; //up to 32 bits of data to be passed to the receiving application
    cbData: DWORD; //the size, in bytes, of the data pointed to by the lpData member
    lpData: Pointer; //Points to data to be passed to the receiving application. This member can be nil.
  end;


type
small_int64_array = array [1..100000] of int64;
  TForm1 = class(TForm)
    BasicSettingsBtn: TButton;
    SendBtn: TButton;
    SerialPortNG1: TSerialPortNG;
    OpenDialog1: TOpenDialog;
    FChooserBtn: TButton;
    FNameEdit: TEdit;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    StopBtn: TButton;
    Button1: TButton;
    Terminal: TMemo;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    Timer1: TTimer;
    Button6: TButton;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Button7: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Button8: TButton;
    Button9: TButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    my_send_click: TTimer;
    Button10: TButton;
    GroupBox2: TGroupBox;
    Button11: TButton;
    TrackBar1: TTrackBar;
    Edit5: TEdit;
    Label8: TLabel;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Button15: TButton;
    UpDown1: TUpDown;
    Label15: TLabel;
    Timer2: TTimer;
    comment_timer: TTimer;
    comment: TButton;
    CheckBox2: TCheckBox;
    trace_timer: TTimer;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Edit6: TEdit;
    Label17: TLabel;
    Edit7: TEdit;
    Label18: TLabel;
    Edit8: TEdit;
    Button16: TButton;
    Memo1: TMemo;
    Label19: TLabel;
    show_tracer_checkbox: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label11: TLabel;
    Button17: TButton;
    Edit11: TEdit;
    Label12: TLabel;
    ablation_timer: TTimer;
    Label20: TLabel;
    Label21: TLabel;
    Memo2: TMemo;
    Tests: TLabel;
    procedure BasicSettingsBtnClick(Sender: TObject);
    procedure SerialPortNG1RxClusterEvent(Sender: TObject);
    procedure SendBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SerialPortNG1WriteDone(Sender: TObject);
    procedure StopBtnClick(Sender: TObject);
    procedure FChooserBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure my_send_clickTimer(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure comment_timerTimer(Sender: TObject);
    procedure commentClick(Sender: TObject);
    procedure trace_timerTimer(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure ablation_timerTimer(Sender: TObject);
  private
    { Private declarations }
    FName : String;
    FSize : Integer;
    FTxByte : Integer;
    FHandle: File;
    Buffer : array[0..1024] of Char;
    FileIsOpen : Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s: string;
  out_file : text;
  s1,s2,s3 : string;
  block_counter : int64;
  size , pulse_counter : int64;
  b1,b2,b3 : byte;
  a : byte;
  repeat_flag : boolean;
  low_time, high_time : int64;
  my_mouse : Tmouse;
  comment_event_counter : integer;
  global_time : int64;
  max_trace_time : double;
  trace_time : double;
  small_pulse_array : small_int64_array;
      max_pulse : word;
  count, c1 , c2 , c3 : word;

  low_time_ms , high_time_ms , periode_ms : real;
  t : real;
  small_pulse_no : int64;
  small_out_file : text;

  b1_save , b2_save , b3_save : byte;

  time_counter : integer;
  max_time : integer;

  current_cursor_x , current_cursor_y : integer;

  time_scale_value : single;
  
  stringToSend : string;
  copyDataStruct : TCopyDataStruct;

implementation

uses SerialNGBasic, Unit2, Unit9, Unit11, Unit12, Unit13;

{$R *.DFM}

procedure SendData(const copyDataStruct: TCopyDataStruct) ;
var
  receiverHandle : THandle;
  res : integer;
begin
  receiverHandle := FindWindow(PChar('TMainForm'),PChar('Advanced DAQ By Salar @ Golestan')) ;
  if receiverHandle = 0 then
  begin
    ShowMessage('AdvancedDaq Must Run!') ;
    Exit;
  end;
  res := SendMessage(receiverHandle, WM_COPYDATA, Integer(receiverHandle), Integer(@copyDataStruct)) ;
end;



procedure TForm1.BasicSettingsBtnClick(Sender: TObject);
begin
  SerialNGBasicDLG.SetDLGData(SerialPortNG1);
  if SerialNGBasicDLG.ShowModal = mrOK then
    SerialNGBasicDLG.GetDLGData(SerialPortNG1);
end;

procedure TForm1.SerialPortNG1RxClusterEvent(Sender: TObject);
var
low1,low2,high,rnd : byte;
c : int64;
b : integer;

begin
  if SerialPortNG1.NextClusterSize >= 0 then
    begin
     s := SerialPortNG1.ReadNextClusterAsString;
     terminal.Lines.Add(s);
     if ((s='O') and (repeat_flag = true)) then timer1.Enabled := true;

     if (s = 'S') then  //stop pulse generation
     begin
      SpeedButton1.Enabled := true;
      SpeedButton2.Enabled := true;

      button13.Enabled := true;
      button14.Enabled := true;

      SpeedButton3.Enabled := true;
      SpeedButton4.Enabled := true;
      button11.Enabled := true;
      signal_tracer_form.Close;
      //continue last pulse
        button11.Click;
        
      //Stop Advanced DAQ Processor
       stringToSend := 'stop';
        copyDataStruct.dwData := 0; //use it to identify the message contents
        copyDataStruct.cbData := 1 + Length(stringToSend) ;
        copyDataStruct.lpData := PChar(stringToSend) ;
        SendData(copyDataStruct);

       
       {
        current_cursor_x := my_mouse.CursorPos.X;
        current_cursor_y := my_mouse.CursorPos.Y;

        SetCursorPos(50, 37);
         mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
           sleep(10);
           mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
            sleep(10);
           SetCursorPos(current_cursor_x, current_cursor_y);
        }
           

     end;
     

    end;

end;

procedure TForm1.SendBtnClick(Sender: TObject);
// The User want to send a File
var NumRead : Integer;
begin
  FName := FNameEdit.Text; // Save the Name of the Send File
  if FName = '' then //Is Empty? Done!
    begin
      Application.MessageBox('You must enter a Filename!','Error',mb_iconstop or mb_Ok);
      Exit;
    end;
  {$I-}
  AssignFile(FHandle, FName); // Try to open the File
  FileMode := 0;
  Reset(FHandle,1);
  {$I+}
  if (IOResult <> 0) then // Open with Errors? Done!
    begin
      {$I-}
      System.Close(FHandle);
      {$I+}
      Application.MessageBox('Can''t open File!','Error',mb_iconstop or mb_Ok);
      Exit;
    end;
  {$I-}
  FSize := FileSize(FHandle);
  {$I+}
  if (FSize <= 0) then // Filesize is Zero, File is Empty? Done!
    begin
      {$I-}
      System.Close(FHandle);
      {$I+}
      Application.MessageBox('File is empty!','Error',mb_iconstop or mb_Ok);
      Exit;
    end;
  FileIsOpen := True; // Ok, the File ist Open
  ProgressBar1.Max := FSize; // Set the Max value of the Progressbar to the Filesize
  StopBtn.Enabled := True; // Enable the Stop Button
  SendBtn.Enabled := False; // Disable the Send Button, to prevent multiple Sendinings
  BlockRead(FHandle, Buffer, SizeOf(Buffer), NumRead); // Read the First 1k of the File
  FTxByte := NumRead; //Save the readed Bytes
  SerialPortNG1.SendData(@Buffer, NumRead); //Send the binary Data
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if FileIsOpen then
    System.CloseFile(FHandle); // Close the file
  SerialPortNG1.Active := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
time_scale_value := 23.1271;
  FileIsOpen := False;
  SerialPortNG1.Active := True;
 // form1.Left := 1600;

end;

procedure TForm1.SerialPortNG1WriteDone(Sender: TObject);
// This is called when the SerialPort has transmitted the Data
var NumRead : Integer;
begin
  if FileIsOpen then // If FileIsOpen
    begin
      ProgressBar1.Position := FTxByte; // Show the transmited Amount
      BlockRead(FHandle, Buffer, SizeOf(Buffer), NumRead); // Read the Next Part of the File (if any)
      FTxByte := FTxByte + NumRead; // Add the Amount, for the Progressbar
      if NumRead > 0 then // If any Data read...
        SerialPortNG1.SendData(@Buffer, NumRead); //send them!
      if NumRead < SizeOf(Buffer) then // If less data readed than expected, the end of the file is reached
        begin
          ProgressBar1.Position := FTxByte; // Show the transmited Amount
          System.CloseFile(FHandle); // Close the file
          FileIsOpen := False; //Remember the file is closed
          StopBtn.Enabled := False; // No Stop is possible
          SendBtn.Enabled := True; //Next Send is now possible
        end;
    end
  else
    begin // If the file is closed...
      SendBtn.Enabled := True; //We can send new Data if the remaind Data are send
    end;
end;

procedure TForm1.StopBtnClick(Sender: TObject);
begin
  if FileIsOpen then
    begin
      System.CloseFile(FHandle); // Close the File
      FileIsOpen := False; // Remember this
      StopBtn.Enabled := False; //Allow no to stop again
      // You may Expect to enable the Sendbutton here, but this could cause problems!
    end;
end;

procedure TForm1.FChooserBtnClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    FNameEdit.Text := OpenDialog1.FileName;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
serialportng1.SendString(chr(83)); //s char to start
end;

procedure TForm1.Button2Click(Sender: TObject);
var
low1,low2,high,rnd : byte;
c : int64;
b : integer;
begin
if savedialog1.Execute then
begin
assignfile(out_file,savedialog1.filename+'.pmf');
rewrite(out_file);
fnameedit.Text := savedialog1.filename+'.pmf';
c := 1;
size := strtoint(edit1.Text);
//writeln(out_file,inttostr(size));
if size <= 174760 then
begin
repeat
randomize();
low1 := random(255); if low1 = 0 then low1 := 10;
low2 := random(255); if low2 = 0 then low2 := 10;
high := random(255); if high = 0 then high := 10;

writeln(out_file,inttostr(low1));
writeln(out_file,inttostr(low2));
writeln(out_file,inttostr(high));

c := c + 1;
until (c > size);

closefile(out_file);
end
else showmessage('Max Pulse Number is 174760');



end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
terminal.Lines.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
c : int64;
temp  , b1 , b2 , b3 : byte;


oSL : TStringlist;

sFileName : string;

begin

sFileName :=fnameedit.Text;
oSL := TStringlist.Create;
oSL.LoadFromFile(sFileName);

global_pulse_no := oSL.Count;

oSL.Free;


assignfile(out_file,sFileName);
reset (out_file);

    readln(out_file, s1);
    b1_save := strtoint(s1);
    readln(out_file, s1);
    b2_save := strtoint(s1);
    readln(out_file, s1);
    b3_save := strtoint(s1);
    
 block_counter := 1;
// readln(out_file , s);
// size := strtoint(s);
// pulse_counter := 1;

//b1 := (size and 16711680) shr 16;
//b2 := (size and 65280) shr 8;
//b3 := size and 255;
//serialportng1.SendString(chr(b1)+chr(b2)+chr(b3));

upload_form.progressbar1.Position := 0;
upload_form.ProgressBar1.Max := trunc(global_pulse_no/30);
upload_form.Show;

 timer1.Interval := strtoint(edit2.Text);
 signal_tracer_form.chart1.series[0].clear;
 timer1.Enabled := true;
 
end;

procedure TForm1.Button5Click(Sender: TObject);
var
my_str : string;
c : integer;
begin
for c := 1 to 99 do my_str := my_str + 'a';
my_str := my_str + chr(0);
serialportng1.SendString(my_str);

end;

procedure TForm1.Timer1Timer(Sender: TObject);

begin
if not eof(out_file) then
begin

s := '';
for a := 1 to 10 do
begin
 if not eof(out_file) then
 begin
    readln(out_file, s1);
    b1 := strtoint(s1);
    if b1 = 255 then b1 := 254;
 end
 else b1 := b1_save;


 if not eof(out_file) then
 begin
    readln(out_file, s1);
    b2 := strtoint(s1);
    if b2 = 255 then b2 := 254;
 end
 else b2 := b2_save;

 if not eof(out_file) then
 begin
    readln(out_file, s1);
    b3 := strtoint(s1);
    if b3 = 255 then b3 := 254;
 end
 else b3 := b3_save;
 
 s := s + chr(b1)+chr(b2)+chr(b3);

// Plot Signal For Trace
 signal_tracer_form.Chart1.Series[0].AddXY(global_time / 1000,0);
 low_time := b1 * 256 + b2;
 low_time := trunc (low_time * time_scale_value);
 global_time := global_time + low_time;
 signal_tracer_form.Chart1.Series[0].AddXY(global_time / 1000,0);

 high_time := b3;
 high_time := trunc (high_time * time_scale_value);
 signal_tracer_form.Chart1.Series[0].AddXY(global_time / 1000,1);
 global_time := global_time + high_time;
 signal_tracer_form.Chart1.Series[0].AddXY(global_time / 1000,1);



 {
low_time := pulse_array[c];
high_time := pulse_array[c+1];
//AVR Timer1 11059000 , prescaler 256 -> 1 count = 23.148148uS
low_time := trunc(low_time/23.148148);
low1 := low_time div 256; if low1 = 255 then low1 := 254;
low2 := low_time mod 256; if low2 = 255 then low2 := 254;
high := trunc(high_time / 23.148148); if high = 255 then high := 254;
  }

end;
  s := s + chr(255);
  a := length(s);
  serialportng1.Sendstring(s);
  label3.Caption := 'Write Block No: ' + inttostr(block_counter);
  block_counter := block_counter+1;

  upload_form.ProgressBar1.Position := block_counter;

  timer1.Enabled := false;
  repeat_flag := true;
end
else
begin
//If B1 = 123 And B2 = 213 And B3 = 56 Then End_flag = 1

 repeat_flag := false;
 s := chr(123)+chr(213)+chr(56)+chr(255);
 serialportng1.Sendstring(s);
closefile(out_file);
timer1.Enabled := false;
upload_form.Close;
 signal_tracer_form.Chart1.BottomAxis.SetMinMax(0, 10000);
 max_trace_time := trunc(global_time / 1000);

end;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
serialportng1.SendString(chr(80));
end;

procedure TForm1.Button7Click(Sender: TObject);
var
low1,low2,high,rnd : byte;
c : int64;
b : integer;
begin
if savedialog1.Execute then
begin
assignfile(out_file,savedialog1.filename+'.pmf');
rewrite(out_file);
fnameedit.Text := savedialog1.filename+'.pmf';
c := 1;
size := strtoint(edit1.Text);
//writeln(out_file,inttostr(size));
low_time := strtoint(edit3.Text);
high_time := strtoint(edit4.Text);
if ((size <= 174760) and (low_time >= 1000)and (high_time <= 1510000)) then
begin
repeat
randomize();
low_time := strtoint(edit3.Text);
high_time := strtoint(edit4.Text);
//AVR Timer1 11059000 , prescaler 256 -> 1 count = 23.148148uS
low_time := trunc(low_time/time_scale_value);
low1 := low_time div 256; if low1 = 255 then low1 := 254;
low2 := low_time mod 256; if low2 = 255 then low2 := 254;
high := trunc(high_time / time_scale_value); if high = 255 then high := 254;

writeln(out_file,inttostr(low1));
writeln(out_file,inttostr(low2));
writeln(out_file,inttostr(high));

c := c + 1;
until (c > size);

closefile(out_file);
end
else showmessage('Max Pulse Number is 174760 and Min Time 1000uS and Max Time 1510000.');



end;

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
serialportng1.SendString(chr(72));
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
serialportng1.SendString(chr(76));
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin

BasicSettingsBtn.Click;

SpeedButton1.Enabled := true;
SpeedButton2.Enabled := true;
SpeedButton4.Enabled := true;

button12.Enabled := true;
button13.Enabled := true;
button14.Enabled := true;

button11.Enabled := true;

button16.Enabled := true;
button17.Enabled := true;

label11.Caption := 'Working Mode: Press Set';


end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
showmessage('Protocol is running, So some functions are disable. wait until protocol end, or press Stop All');
//Start Advanced DAQ Processor
stringToSend := 'start';
copyDataStruct.dwData := 0; //use it to identify the message contents
copyDataStruct.cbData := 1 + Length(stringToSend) ;
copyDataStruct.lpData := PChar(stringToSend) ;
SendData(copyDataStruct) ;
//Start Advanced DAQ Processor
 {
 SetCursorPos(50, 37);
  mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
    sleep(10);
    mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
    sleep(10);
   SetCursorPos(current_cursor_x, current_cursor_y);
  }
serialportng1.SendString(chr(80));

SpeedButton1.Enabled := false;
SpeedButton2.Enabled := false;

SpeedButton3.Enabled := false;
SpeedButton4.Enabled := false;
button11.Enabled := false;



button13.Enabled := false;
button14.Enabled := false;
FNameEdit.CopyToClipboard;

if checkbox2.Checked then
begin
 comment_event_counter := 0;
 comment_timer.Enabled := true;
end;
if show_tracer_checkbox.Checked then
begin
signal_tracer_form.Show;
 trace_time := 0;
trace_timer.Enabled := true;
end;
label11.Caption := 'Working Mode: Running Protocol';
label11.Font.Color := clred;
stop_protocol_form.Label1.Caption := edit5.Text;
stop_protocol_form.Label2.Caption := edit9.Text;


end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form2.Show;
global_pulse_no := 0;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    FNameEdit.Text := OpenDialog1.FileName;
    serialportng1.SendString(chr(83)); //s char to start

    

    memo2.Lines.LoadFromFile(OpenDialog1.FileName+'.tests');
    //Pass Tests to Advanced DAQ Processor
    stringToSend := '#tests#';
    for c1 := 0 to memo2.Lines.Count-1 do
      stringToSend := stringToSend + memo2.Lines[c1]+'#';

    stringToSend := stringToSend + memo2.Lines[c1]+'*';
    copyDataStruct.dwData := 0; //use it to identify the message contents
    copyDataStruct.cbData := 1 + Length(stringToSend) ;
    copyDataStruct.lpData := PChar(stringToSend) ;
    SendData(copyDataStruct) ;
    //Pass Tests to Advanced DAQ Processor

    
    global_time := 0;
    my_send_click.Enabled := true;
 end;
end;

procedure TForm1.my_send_clickTimer(Sender: TObject);
begin
button4.Click;
my_send_click.Enabled := false;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
about_form.show;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
low1,low2,high,rnd : byte;
c : int64;
b : integer;
begin
s := 'C';
trackbar1.Position := strtoint(edit5.Text);

high_time := 2000;
periode_ms := strtoint(edit5.Text);
low_time_ms := periode_ms - 2;
low_time := trunc(low_time_ms * 1000);
//AVR Timer1 11059200 , prescaler 256 -> 1 count = 23.148148uS
//23.1481488148148148148148148148148148

//New Value for Error Correction
//23.092592592592592592592592592593
low_time := trunc(low_time/time_scale_value);
low1 := low_time div 256; if low1 = 255 then low1 := 254;
low2 := low_time mod 256; if low2 = 255 then low2 := 254;
high := trunc(high_time / time_scale_value); if high = 255 then high := 254;


 b1 := low1;
 if b1 = 255 then b1 := 254;


 b2 := low2;
 if b2 = 255 then b2 := 254;


 b3 := high;
 if b3 = 255 then b3 := 254;

 s := s + chr(b1)+chr(b2)+chr(b3);

  a := length(s);
  serialportng1.Sendstring(s);
 label11.Caption := 'Working Mode: BCL ('+floattostr(periode_ms)+')';
 label11.Font.Color := clgreen;

end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
if speedbutton1.Enabled then
begin
edit5.Text := inttostr(trackbar1.Position);
button11.Click;
end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
serialportng1.SendString(chr(72));
label11.Caption := 'Working Mode: ON (Ablation)';
label11.Font.Color := clred;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
serialportng1.SendString(chr(76));
label11.Caption := 'Working Mode: OFF';
label11.Font.Color := clgreen;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
label15.Caption := 'Mouse: ' + inttostr(my_mouse.CursorPos.X) + ','  + inttostr(my_mouse.CursorPos.Y);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
if form1.Width > 600 then form1.Width := 385
else form1.Width := 1500

end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
if speedbutton1.Enabled then
begin
button11.Click;
trackbar1.Position := strtoint(edit5.Text);

end;
end;

procedure TForm1.comment_timerTimer(Sender: TObject);
begin
comment_event_counter := comment_event_counter + 1;
if comment_event_counter = 1 then
begin
//my_mouse.CursorPos.X := 200;
//my_mouse.CursorPos.X := 100;
//FNameEdit.CopyToClipboard;
SetCursorPos(200, 100);
mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);


end;

if comment_event_counter = 2 then
begin
  Keybd_event(VK_CONTROL, 0, 0, 0);
  Keybd_event(Byte('V'), 0, 0, 0);
  Keybd_event(Byte('V'), 0, KEYEVENTF_KEYUP, 0);
  Keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0);



end;


if comment_event_counter = 3 then
begin
//my_mouse.CursorPos.X := 1685;
//my_mouse.CursorPos.X := 107;
SetCursorPos(1685, 107);
mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);



end;


if comment_event_counter = 4 then
begin
comment_timer.Enabled := false;


end;

end;

procedure TForm1.commentClick(Sender: TObject);
begin
Clipboard.AsText := FNameEdit.Text;
 comment_event_counter := 0;
comment_timer.Enabled := true;
end;

procedure TForm1.trace_timerTimer(Sender: TObject);
begin
trace_time := trace_time + 50;
signal_tracer_form.Chart1.BottomAxis.SetMinMax(trace_time  , trace_time + 10000);
if trace_time > max_trace_time then trace_timer.Enabled := false;
end;

procedure TForm1.Button16Click(Sender: TObject);
var
start_ms , stop_ms , step_ms ,ms_counter: integer;
low1,low2,high,rnd : byte;
manual_base_ms : integer;
c : int64;
b : integer;
begin
//**********************************************************************************************

//1 make small recovery protocol
memo1.Lines.Clear;
form2.chart2.Series[0].Clear;
form2.chart2.Series[1].Clear;
form2.chart2.Series[2].Clear;
small_pulse_no := 1;
start_ms := strtoint(edit7.Text);
stop_ms := strtoint(edit8.Text);
step_ms := strtoint(edit6.Text);
manual_base_ms := strtoint(edit9.Text);

if start_ms > stop_ms then
begin
ms_counter := start_ms;
repeat
 memo1.Lines.Add(inttostr(ms_counter));
 ms_counter := ms_counter - step_ms;

until (ms_counter <= stop_ms);
end
else
begin
ms_counter := start_ms;
repeat
 memo1.Lines.Add(inttostr(ms_counter));
 ms_counter := ms_counter + step_ms;

until (ms_counter >= stop_ms);


end;

 c2 := strtoint(edit10.Text);
 max_pulse := (c2 + 1) * (memo1.Lines.Count);
 
count := 1;
form2.Chart2.Series[0].Clear;
t := 0;
c3 := 0;
small_pulse_no := 0;

s := '';
s := inttostr(small_pulse_no+1);

repeat

   high_time_ms := 2;
  Periode_ms  := strtofloat(edit9.Text); //current manual base
  low_time_ms := Periode_ms - high_time_ms;



 low_time := trunc(low_time_ms * 1000); //current base
 high_time := trunc(high_time_ms * 1000);

for c1 := 1 to c2 do         
begin
form2.Chart2.Series[0].AddXY(t,0);
small_pulse_no := small_pulse_no + 1;
small_pulse_array[small_pulse_no] := low_time;
t := t + low_time_ms;
form2.Chart2.Series[0].AddXY(t,0);

form2.Chart2.Series[0].AddXY(t,1);
small_pulse_no := small_pulse_no + 1;
small_pulse_array[small_pulse_no] := high_time;
t := t + high_time_ms;
form2.Chart2.Series[0].AddXY(t,1);

count := count +1;
end;

form2.Chart2.Series[0].AddXY(t,0);
 form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
small_pulse_no := small_pulse_no + 1;
//low_time_ms := strtofloat(memo1.Lines[c3]);
  Periode_ms  := strtofloat(memo1.Lines[c3]);
  low_time_ms := Periode_ms - high_time_ms;
c3 := c3+1;
low_time := trunc(low_time_ms * 1000);
small_pulse_array[small_pulse_no] := low_time;
t := t + low_time_ms;
//form2.Chart2.Series[0].AddXY(t,0);

//form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,0);  //test Pulse
 form2.Chart2.Series[1].AddXY(t,1);  //test Pulse
small_pulse_no := small_pulse_no + 1;
small_pulse_array[small_pulse_no] := high_time;
t := t + high_time_ms;
form2.Chart2.Series[0].AddXY(t,1);
form2.Chart2.Series[1].AddXY(t,1);  //test Pulse
 form2.Chart2.Series[1].AddXY(t,0);  //test Pulse

count := count +1;

until (count > max_pulse);

//**********************************************************************************************

//2 convert small protocol low time and high time to temp file in c:/pulse/temp.pmf
assignfile(small_out_file,'c:/pulse/temp.pmf');
rewrite(small_out_file);
c := 1;
size := small_pulse_no;
//writeln(out_file,inttostr(size));

repeat
randomize();
low_time := small_pulse_array[c];
high_time := small_pulse_array[c+1];
//AVR Timer1 11059000 , prescaler 256 -> 1 count = 23.148148uS
low_time := trunc(low_time/ time_scale_value);
low1 := low_time div 256; if low1 = 255 then low1 := 254;
low2 := low_time mod 256; if low2 = 255 then low2 := 254;
high := trunc(high_time / time_scale_value); if high = 255 then high := 254;

writeln(small_out_file,inttostr(low1));
writeln(small_out_file,inttostr(low2));
writeln(small_out_file,inttostr(high));

c := c + 2;
until (c > size);

closefile(small_out_file);

//*********************************************************************************
//3 Upload Small Program to Micro circuit
FNameEdit.Text := 'c:/pulse/temp.pmf';
 serialportng1.SendString(chr(83)); //s char to start
 global_time := 0;
 my_send_click.Enabled := true;

label11.Caption := 'Working Mode: Manual Test';
label11.Font.Color := clred;

 

end;

procedure TForm1.Button12Click(Sender: TObject);
begin
signal_tracer_form.Close;
stop_protocol_form.Show;
       //Stop Advanced DAQ Processor
       stringToSend := 'stop';
        copyDataStruct.dwData := 0; //use it to identify the message contents
        copyDataStruct.cbData := 1 + Length(stringToSend) ;
        copyDataStruct.lpData := PChar(stringToSend) ;
        SendData(copyDataStruct);
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
max_time := strtoint(edit11.Text);
ablation_timer.Enabled := true;
time_counter := 0;
button13.Click;
label11.Caption := 'Working Mode: ON (Ablation)';
label11.Font.Color := clred;
end;

procedure TForm1.ablation_timerTimer(Sender: TObject);
begin
label21.Caption := 'Remainig: ' +inttostr(max_time - time_counter);
time_counter := time_counter + 1;
if time_counter > max_time then
begin
ablation_timer.Enabled := false;
button14.Click;
label11.Caption := 'Working Mode: OFF';
label11.Font.Color := clgreen;
end;


end;

end.
