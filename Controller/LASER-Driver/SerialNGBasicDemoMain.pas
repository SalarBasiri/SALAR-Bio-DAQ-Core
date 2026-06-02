unit SerialNGBasicDemoMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, SerialNG, TeEngine, Series, TeeProcs, Chart;

type
      my_ar = array [1..10000] of real;
  TForm1 = class(TForm)

    BasicSettingsBtn: TButton;
    Terminal: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    SendBtn: TButton;
    CBAddCRLF: TCheckBox;
    SerialPortNG1: TSerialPortNG;
    Button2: TButton;
    Button3: TButton;
    Timer1: TTimer;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Label4: TLabel;
    Label5: TLabel;
    Button4: TButton;
    Label6: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    Chart2: TChart;
    Series2: TLineSeries;
    Label7: TLabel;
    Label8: TLabel;
    procedure BasicSettingsBtnClick(Sender: TObject);
    procedure SerialPortNG1RxClusterEvent(Sender: TObject);
    procedure SendBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s : string;
  s1,s2,s3 : string;
  c1,c2,c3 : integer;
  zero,loadcell  , scale , dt , my_load , my_flow : real;
  mass_ar , flow_ar : my_ar;
  counter , start_counter : integer;
  sharp_counter,l,c : integer;
implementation

uses SerialNGBasic;
{$R *.DFM}
procedure AddHexString(S : String; Lines : TStrings );
var AddS, HexS, CopyS : String;
    i : Integer;
const SLen = 8;
begin
  while Length(S) > 0 do
    begin
      AddS := Copy(S,1,SLen);
      HexS := '';
      Delete(S,1,SLen);
      for i := 1 to SLen do
        begin
          CopyS := Copy(AddS,i,1);
          if CopyS <> '' then
            HexS := HexS + ' ' + Format('%2.2x',[Byte(CopyS[1])]) //
          else
            HexS := HexS + '   ';
        end;
       while Length(AddS) < SLen do
         AddS := AddS + ' ';
       for i := 1 to SLen do
         case AddS[i] of
           #0..#31 : AddS[i] := '.';
           #127    : AddS[i] := '.';
         end;
       Lines.Add(HexS+' : '+AddS);
    end;
end;

procedure TForm1.BasicSettingsBtnClick(Sender: TObject);
begin
  SerialNGBasicDLG.SetDLGData(SerialPortNG1);
  if SerialNGBasicDLG.ShowModal = mrOK then
    SerialNGBasicDLG.GetDLGData(SerialPortNG1);
end;

procedure TForm1.SerialPortNG1RxClusterEvent(Sender: TObject);



begin
  if SerialPortNG1.NextClusterSize >= 0 then
    begin
      if SerialPortNG1.NextClusterCCError = 0 then
        Terminal.Lines.Add(FormatDateTime('"Rec  " dd.mm.yy hh:mm:ss" :"', Now))
      else
        Terminal.Lines.Add(FormatDateTime('"RecX " dd.mm.yy hh:mm:ss" :"', Now));

     // AddHexString(SerialPortNG1.ReadNextClusterAsString,Terminal.Lines);
     s :=SerialPortNG1.ReadNextClusterAsString;
     terminal.Lines.Add(s);

     sharp_counter := 0;
     l := length(s);
     for c := 1 to l do
       if s[c] = '#' then sharp_counter := sharp_counter + 1;

     if ((length(s) > 12) and (sharp_counter = 4)) then
     begin
       s1 := '';
       s2 := '';
       s3 := '';
       c1 := 2;
       repeat
          s1 := s1 + s[c1];
         c1 := c1+1;
       until (s[c1] = '#');
       c1 := c1 + 1;
       
       repeat
         s2 := s2 + s[c1];
         c1 := c1+1;
       until (s[c1] = '#');

       c1 := c1 + 1;
       repeat
         s3 := s3 + s[c1];
         c1 := c1+1;
       until (s[c1] = '#') ;

        label2.Caption := 'Battery (mV): ' + s3;
        label5.Caption := 'Counter: ' + s1;
        label4.Caption := 'Loadcell: ' + s2;

        loadcell := strtofloat(s2);
         counter := strtoint(s1);

        // my_load := (loadcell-zero)/scale;
        my_load := ((loadcell-zero)/scale) + mass_ar[counter-1] + mass_ar[counter-2]; // + mass_ar[counter-3] + mass_ar[counter-4];
        my_load := my_load / 3;
        my_load := trunc(my_load*2)/2;

         label7.Caption := 'Mass (gr): '+floattostr(my_load);
         mass_ar[counter] := my_load;

         my_flow := ((my_load - mass_ar[counter-1])/ dt) + flow_ar[counter-1] + flow_ar[counter-2]; // + flow_ar[counter-3] +flow_ar[counter-4];
         my_flow := my_flow/3;
         my_flow := trunc(my_flow*10) / 10;
         label8.Caption := 'Flow (ml/s):' + floattostr(my_flow);
         


         if abs(my_flow) > 50 then my_flow := 0;
         if my_flow < 0 then my_flow := 0;
         if abs(my_flow) < 0.2 then my_flow := 0;

         flow_ar[counter] := my_flow;

       try
       if ((zero <> 0) and ((loadcell - zero) < 1000000)) then
       begin
       chart1.Series[0].Addxy(counter,my_load);
       chart2.Series[0].AddXY(counter,my_flow);
       end;

       except
        terminal.Lines.Add('error');
       end;
       
        

     end;

    end;

end;

procedure TForm1.SendBtnClick(Sender: TObject);
var SendStr : String;
begin
  if Length(Edit1.Text) > 0 then
    begin
      Terminal.Lines.Add(FormatDateTime('"Snd " dd.mm.yy hh:mm:ss" :"', Now));
      Terminal.Lines.Add(Edit1.Text);
      SendStr := Edit1.Text;
      if CBAddCRLF.Checked then
        SendStr := SendStr+#$0d#$0a;
      SerialPortNG1.SendString(SendStr);
    end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  SerialPortNG1.Active := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SerialPortNG1.Active := True;
  zero := 0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
timer1.Interval := strtoint(edit2.Text);
timer1.Enabled := true;
chart1.Series[0].Addxy(0,0);
chart2.Series[0].AddXY(0,0);
scale := strtofloat(edit3.Text);
dt := strtofloat(edit2.Text) / 1000;



end;

procedure TForm1.Button3Click(Sender: TObject);
begin
timer1.Enabled := false;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
SendStr : string;
begin
      SendStr := 'q';

      SerialPortNG1.SendString(SendStr);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
chart1.Series[0].Clear;
chart1.Series[0].AddXY(strtoint(s1),0);

chart2.Series[0].Clear;
chart2.Series[0].AddXY(strtoint(s1),0);

zero := strtofloat(s2);

start_counter := counter + 5;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
chart1.Series[0].Clear;
for c1 := start_counter to counter do
chart1.Series[0].AddXY(c1,flow_ar[c1]);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
chart1.Series[0].Clear;
for c1 := start_counter to counter do
chart1.Series[0].AddXY(c1,mass_ar[c1]);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
 memo1.Lines.Clear;
for c1 := start_counter to counter do
memo1.Lines.Add(inttostr(c1)+chr(9)+floattostr(flow_ar[c1]));

memo1.Lines.SaveToFile(savedialog1.FileName+'.xls');



end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
 memo1.Lines.Clear;
for c1 := start_counter to counter do
memo1.Lines.Add(inttostr(c1)+chr(9)+floattostr(mass_ar[c1]));

memo1.Lines.SaveToFile(savedialog1.FileName+'.xls');



end;
end;

end.
