unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, SerialNG, jpeg, ExtCtrls, Gauges, TeEngine,
  Series, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    terminal: TMemo;
    Button9: TButton;
    SerialNG1: TSerialPortNG;
    Button10: TButton;
    GroupBox6: TGroupBox;
    GroupBox4: TGroupBox;
    TrackBar4: TTrackBar;
    GroupBox3: TGroupBox;
    TrackBar3: TTrackBar;
    GroupBox2: TGroupBox;
    TrackBar2: TTrackBar;
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    GroupBox18: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox19: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Button7: TButton;
    Button8: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button9Click(Sender: TObject);
    procedure SerialNG1RxClusterEvent(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton14Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure RadioButton16Click(Sender: TObject);
    procedure RadioButton17Click(Sender: TObject);
    procedure RadioButton18Click(Sender: TObject);
    procedure RadioButton19Click(Sender: TObject);
    procedure RadioButton20Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s : string;
  sendstr : string;

   s1 , s2 , s3 , s4 : string;
   c1 , l: integer;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
serialng1.Active := false;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
serialng1.CommPort := combobox1.Text;
serialng1.BaudRate := strtoint(combobox2.Text);
serialng1.Active := true;

groupbox1.Enabled := true;
groupbox2.Enabled := true;
groupbox3.Enabled := true;
groupbox4.Enabled := true;

end;

procedure TForm1.SerialNG1RxClusterEvent(Sender: TObject);
begin
  if SerialNG1.NextClusterSize >= 0 then
    begin
     s :=SerialNG1.ReadNextClusterAsString;
     terminal.Lines.Add(s);
     l := length(s);
      if ((s[1] = '#') and (s[2] = 'A') and (s[3] = 'D') and (s[4] = '#') and (l > 10)) then
      begin
       s1 := '';
       s2 := '';
       s3 := '';
       s4 := '';
       c1 := 5;
       repeat
       s1 := s1 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));
       c1 := c1 + 1;
       repeat
       s2 := s2 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));
       c1 := c1 + 1;
       repeat
       s3 := s3 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));
       c1 := c1 + 1;
       repeat
       s4 := s4 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));

       label5.Caption := 'ADC0: '+s1;
       label6.Caption := 'ADC1: '+s2;
        label7.Caption := 'ADC2: '+s3;
        label8.Caption := 'ADC3: '+s4;


        chart1.Series[0].Addy(strtofloat(s1));
        chart1.Series[1].Addy(strtofloat(s2));
        chart1.Series[2].Addy(strtofloat(s3));
        chart1.Series[3].Addy(strtofloat(s4));


      end;


      if ((s[1] = '#') and (s[2] = 'D') and (s[3] = 'I') and (s[4] = '#') and (l > 10)) then
      begin
       s1 := '';
       s2 := '';
       s3 := '';
       s4 := '';
       c1 := 5;
       repeat
       s1 := s1 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));
       c1 := c1 + 1;
       repeat
       s2 := s2 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));
       c1 := c1 + 1;
       repeat
       s3 := s3 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));
       c1 := c1 + 1;
       repeat
       s4 := s4 + s[c1];
       c1 := c1 + 1;
       until ((s[c1] = '#') or (c1 > l));

      if s1 = '0' then shape1.Brush.Color := clred;
      if s1 = '1' then shape1.Brush.Color := clblue;

      if s2 = '0' then shape2.Brush.Color := clred;
      if s2 = '1' then shape2.Brush.Color := clblue;

      if s3 = '0' then shape3.Brush.Color := clred;
      if s3 = '1' then shape3.Brush.Color := clblue;

      if s4 = '0' then shape4.Brush.Color := clred;
      if s4 = '1' then shape4.Brush.Color := clblue;


      end;

    end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
sendstr := chr(255) + 'RA';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
sendstr := chr(255) + 'Ra';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
sendstr := chr(255) + 'RB';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
sendstr := chr(255) + 'Rb';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
sendstr := chr(255) + 'RC';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
sendstr := chr(255) + 'Rc';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin
sendstr := chr(255) + 'RD';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton8Click(Sender: TObject);
begin
sendstr := chr(255) + 'Rd';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton9Click(Sender: TObject);
begin
sendstr := chr(255) + 'Ma';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton10Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mb';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton11Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mc';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton12Click(Sender: TObject);
begin
sendstr := chr(255) + 'Md';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton13Click(Sender: TObject);
begin
sendstr := chr(255) + 'Me';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton14Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mf';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton15Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mg';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton16Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mh';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton17Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mi';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton18Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mj';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton19Click(Sender: TObject);
begin
sendstr := chr(255) + 'Mk';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.RadioButton20Click(Sender: TObject);
begin
sendstr := chr(255) + 'Ml';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
label9.Caption := inttostr(trackbar1.Position);
sendstr := chr(255) + 'S' + chr(trackbar1.Position);
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);

end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
label10.Caption := inttostr(trackbar2.Position);
sendstr := chr(255) + 'T' + chr(trackbar2.Position);
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
label11.Caption := inttostr(trackbar3.Position);
sendstr := chr(255) + 'U' + chr(trackbar3.Position);
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.TrackBar4Change(Sender: TObject);
begin
label12.Caption := inttostr(trackbar4.Position);
sendstr := chr(255) + 'V' + chr(trackbar4.Position);
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Trackbar1.Position := 128;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Trackbar2.Position := 128;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Trackbar3.Position := 128;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Trackbar4.Position := 128;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
sendstr := chr(255) + 'AD';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
sendstr := chr(255) + 'DI';
serialng1.SendString(sendstr);
terminal.Lines.Add('Send @ ' +timetostr(now)+' : ' + sendstr);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
button6.Click;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
button5.Click;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
timer1.Enabled := not timer1.Enabled;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
timer2.Enabled := not timer2.Enabled;
end;

end.
