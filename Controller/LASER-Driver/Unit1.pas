unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, SerialNG, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button5: TButton;
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    terminal: TMemo;
    Button9: TButton;
    SerialNG1: TSerialPortNG;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    off_image1: TImage;
    on_image1: TImage;
    Button10: TButton;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Timer1: TTimer;
    Label2: TLabel;
    procedure TrackBar1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button9Click(Sender: TObject);
    procedure SerialNG1RxClusterEvent(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s : string;
  on_counter : integer;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
edit1.Text := inttostr(trackbar1.Position);

if button1.Caption = 'On' then s := chr(255) + 'a'+chr(strtoint(edit1.Text));
if button1.Caption = 'Off' then s := chr(255) + 'A'+chr(strtoint(edit1.Text));

serialng1.SendString(s);

end;

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


end;

procedure TForm1.SerialNG1RxClusterEvent(Sender: TObject);
begin
  if SerialNG1.NextClusterSize >= 0 then
    begin
     s :=SerialNG1.ReadNextClusterAsString;
     terminal.Lines.Add(s);
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if button1.Caption = 'On' then
begin
if strtoint(edit1.Text) > 100 then edit1.Text := '100';
s := chr(255) + 'A'+chr(strtoint(edit1.Text));
serialng1.SendString(s);
button1.Caption := 'Off';
on_image1.visible := true;
off_image1.Visible := false;


on_counter := strtoint(edit1.Text);
timer1.Enabled := true;


end
else
begin
if strtoint(edit1.Text) > 100 then edit1.Text := '100';
s := chr(255) + 'a'+chr(strtoint(edit1.Text));
serialng1.SendString(s);
button1.Caption := 'On';
on_image1.visible := false;
off_image1.Visible := true;

on_counter := 0;
timer1.Enabled := false;
end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
s := chr(255) + 'bb';
serialng1.SendString(s);

end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
s := chr(255) + 'BB';
serialng1.SendString(s);

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
on_counter := on_counter - 1;
 label2.Caption := 'Auto off in : ' + inttostr(on_counter) + ' s';
 if on_counter <= 0 then
 begin

 button1.Click;
 timer1.Enabled := false;


 end;

end;

end.
