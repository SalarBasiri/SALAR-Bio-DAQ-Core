unit SerialNGSFileDemoMain;

{
  SerialNG SendFile Demo
  This Source demonstrate the handling of larger amount of Data.
  This Program let You open a File and send the contents via a selected
  Com Port.
  How ever there is no protocol implemented and no specific error management.
  To see how to receive larger amount of Data use the SerialNGRFileDemo Project.
}


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, SerialNG, ComCtrls;

type
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
    CheckBox1: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button15: TButton;
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
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button15Click(Sender: TObject);
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
implementation

uses SerialNGBasic, Unit2, Unit9, Unit11;
{$R *.DFM}
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

      //continue last pulse
      s := 'C';
      trackbar1.Position := strtoint(edit5.Text);
      low_time := strtoint(edit5.Text)*1000;
      high_time := strtoint('2000');
      //AVR Timer1 11059000 , prescaler 256 -> 1 count = 23.14uS
      low_time := trunc(low_time/23.14);
      low1 := low_time div 256; if low1 = 255 then low1 := 254;
      low2 := low_time mod 256; if low2 = 255 then low2 := 254;
      high := trunc(high_time / 23.14); if high = 255 then high := 254;


       b1 := low1;
      if b1 = 255 then b1 := 254;


       b2 := low2;
       if b2 = 255 then b2 := 254;


       b3 := high;
       if b3 = 255 then b3 := 254;

       s := s + chr(b1)+chr(b2)+chr(b3);

       a := length(s);
       serialportng1.Sendstring(s);


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
  FileIsOpen := False;
  SerialPortNG1.Active := True;
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
 readln(out_file, s1);
 b1 := strtoint(s1);
 if b1 = 255 then b1 := 254;

 readln(out_file, s1);
 b2 := strtoint(s1);
 if b2 = 255 then b2 := 254;

 readln(out_file, s1);
 b3 := strtoint(s1);
 if b3 = 255 then b3 := 254;

 s := s + chr(b1)+chr(b2)+chr(b3);

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
//AVR Timer1 11059000 , prescaler 256 -> 1 count = 23.14uS
low_time := trunc(low_time/23.14);
low1 := low_time div 256; if low1 = 255 then low1 := 254;
low2 := low_time mod 256; if low2 = 255 then low2 := 254;
high := trunc(high_time / 23.14); if high = 255 then high := 254;

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
checkbox1.Enabled := true;


end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin

serialportng1.SendString(chr(80));

SpeedButton1.Enabled := false;
SpeedButton2.Enabled := false;

SpeedButton3.Enabled := false;
SpeedButton4.Enabled := false;
button11.Enabled := false;



button13.Enabled := false;
button14.Enabled := false;


showmessage('Protocol is running, So some functions are disable. wait until protocol end, or press Stop All');
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
low_time := strtoint(edit5.Text)*1000;
high_time := strtoint('2000');
//AVR Timer1 11059000 , prescaler 256 -> 1 count = 23.14uS
low_time := trunc(low_time/23.14);
low1 := low_time div 256; if low1 = 255 then low1 := 254;
low2 := low_time mod 256; if low2 = 255 then low2 := 254;
high := trunc(high_time / 23.14); if high = 255 then high := 254;


 b1 := low1;
 if b1 = 255 then b1 := 254;


 b2 := low2;
 if b2 = 255 then b2 := 254;


 b3 := high;
 if b3 = 255 then b3 := 254;

 s := s + chr(b1)+chr(b2)+chr(b3);

  a := length(s);
  serialportng1.Sendstring(s);


end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
edit5.Text := inttostr(trackbar1.Position);
if checkbox1.Checked then button11.Click;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin

serialportng1.SendString(chr(255));

      SpeedButton1.Enabled := true;
      SpeedButton2.Enabled := true;

      button13.Enabled := true;
      button14.Enabled := true;

      SpeedButton3.Enabled := true;
      SpeedButton4.Enabled := true;
      button11.Enabled := true;


end;

procedure TForm1.Button13Click(Sender: TObject);
begin
serialportng1.SendString(chr(72));
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
serialportng1.SendString(chr(76));
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
button11.Click;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
if form1.Width > 500 then form1.Width := 400
else form1.Width := 1500

end;

end.
