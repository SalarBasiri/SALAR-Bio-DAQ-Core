unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, ExtCtrls, jpeg, TeEngine, Series,
  TeeProcs, Chart, MPlayer;

type
  TMain_Form = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Setting1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    VideoHelp1: TMenuItem;
    ServerSetting1: TMenuItem;
    PortSetting1: TMenuItem;
    DAQSetting1: TMenuItem;
    SaveProject1: TMenuItem;
    LoadProject1: TMenuItem;
    SaveRAWdata1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Step1: TGroupBox;
    step1_1_groupbox: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Memo1: TMemo;
    step1_2_groupbox: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Step1_3_groupbox: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Memo2: TMemo;
    Step2: TGroupBox;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    step3_map_groupbox: TGroupBox;
    map_chart: TChart;
    beat_ms_chart: TChart;
    Series2: TLineSeries;
    GroupBox4: TGroupBox;
    temp_chart: TChart;
    Series1: TLineSeries;
    Label13: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Label14: TLabel;
    Label15: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox5: TGroupBox;
    Label16: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    Label17: TLabel;
    Label18: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ph_chart: TChart;
    LineSeries1: TLineSeries;
    RadioButton7: TRadioButton;
    RadioButton9: TRadioButton;
    GroupBox7: TGroupBox;
    Label22: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    UpDown7: TUpDown;
    UpDown8: TUpDown;
    Label23: TLabel;
    Label24: TLabel;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    ec_chart: TChart;
    LineSeries3: TLineSeries;
    GroupBox8: TGroupBox;
    Label25: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    UpDown9: TUpDown;
    UpDown10: TUpDown;
    Label26: TLabel;
    Label27: TLabel;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    pressure_chart: TChart;
    LineSeries4: TLineSeries;
    GroupBox9: TGroupBox;
    Label28: TLabel;
    Edit19: TEdit;
    Edit20: TEdit;
    UpDown11: TUpDown;
    UpDown12: TUpDown;
    Label29: TLabel;
    Label30: TLabel;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    opacity_chart: TChart;
    LineSeries5: TLineSeries;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    GroupBox10: TGroupBox;
    step4_map_groupbox: TGroupBox;
    Chart2: TChart;
    Series3: TPointSeries;
    Series5: TLineSeries;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label34: TLabel;
    Edit23: TEdit;
    Label35: TLabel;
    ComboBox3: TComboBox;
    Label36: TLabel;
    Edit24: TEdit;
    Label37: TLabel;
    Edit25: TEdit;
    Label38: TLabel;
    Edit26: TEdit;
    Label39: TLabel;
    Edit27: TEdit;
    Button6: TButton;
    Label40: TLabel;
    Edit28: TEdit;
    UpDown13: TUpDown;
    Label41: TLabel;
    Label42: TLabel;
    GroupBox6: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    flow_chart: TChart;
    LineSeries2: TLineSeries;
    RadioButton8: TRadioButton;
    Label43: TLabel;
    Edit29: TEdit;
    UpDown14: TUpDown;
    GroupBox3: TGroupBox;
    GroupBox11: TGroupBox;
    Button7: TButton;
    save_memo: TMemo;
    OpenDialog1: TOpenDialog;
    Image2: TImage;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label44: TLabel;
    Series4: TLineSeries;
    Image3: TImage;
    Chart1: TChart;
    LineSeries6: TLineSeries;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Series6: TPointSeries;
    GroupBox12: TGroupBox;
    Label45: TLabel;
    GroupBox13: TGroupBox;
    Edit30: TEdit;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    SaveDialog1: TSaveDialog;
    MediaPlayer1: TMediaPlayer;
    GroupBox14: TGroupBox;
    Label47: TLabel;
    Edit31: TEdit;
    Button8: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SaveProject1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main_Form: TMain_Form;

implementation

uses Unit2;

{$R *.dfm}

procedure TMain_Form.ComboBox1Change(Sender: TObject);
begin
{Rabbit
Rat
Sheep
Cat
Dog}

if combobox1.ItemIndex = 0 then image1.Picture.LoadFromFile('..\Arythmia Package\rabbit2.jpg');
if combobox1.ItemIndex = 1 then image1.Picture.LoadFromFile('..\Arythmia Package\rat2.jpg');
if combobox1.ItemIndex = 2 then image1.Picture.LoadFromFile('..\Arythmia Package\sheep2.jpg');
if combobox1.ItemIndex = 3 then image1.Picture.LoadFromFile('..\Arythmia Package\cat2.jpg');
if combobox1.ItemIndex = 4 then image1.Picture.LoadFromFile('..\Arythmia Package\dog2.jpg');
if combobox1.ItemIndex = 5 then image1.Picture.LoadFromFile('..\Arythmia Package\mice2.jpg');
if combobox1.ItemIndex = 6 then image1.Picture.LoadFromFile('..\Arythmia Package\gpig2.jpg');



end;

procedure TMain_Form.FormShow(Sender: TObject);
begin
edit7.Text := datetostr(now);
edit8.Text := timetostr(now);
end;

procedure TMain_Form.PageControl1Change(Sender: TObject);
begin

if pagecontrol1.TabIndex = 2 then map_chart.Parent := step3_map_groupbox;
if pagecontrol1.TabIndex = 3 then map_chart.Parent := step4_map_groupbox;
 
end;

procedure TMain_Form.Button7Click(Sender: TObject);
begin
form2.show;
end;

procedure TMain_Form.SaveProject1Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.Add(edit1.Text);
save_memo.Lines.Add(edit2.Text);
save_memo.Lines.Add(edit3.Text);
save_memo.Lines.Add(edit4.Text);
save_memo.Lines.Add(edit5.Text);
save_memo.Lines.Add(edit6.Text);
save_memo.Lines.Add(edit7.Text);
save_memo.Lines.Add(edit8.Text);
save_memo.Lines.Add(edit9.Text);
save_memo.Lines.Add(edit10.Text);
save_memo.Lines.Add(edit11.Text);
save_memo.Lines.Add(edit12.Text);
save_memo.Lines.Add(edit13.Text);
save_memo.Lines.Add(edit14.Text);
save_memo.Lines.Add(edit15.Text);
save_memo.Lines.Add(edit16.Text);
save_memo.Lines.Add(edit17.Text);
save_memo.Lines.Add(edit18.Text);
save_memo.Lines.Add(edit19.Text);
save_memo.Lines.Add(edit20.Text);
save_memo.Lines.Add(edit21.Text);
save_memo.Lines.Add(edit22.Text);
save_memo.Lines.Add(edit23.Text);
save_memo.Lines.Add(edit24.Text);
save_memo.Lines.Add(edit25.Text);
save_memo.Lines.Add(edit26.Text);
save_memo.Lines.Add(edit27.Text);
save_memo.Lines.Add(edit28.Text);


save_memo.Lines.Add(inttostr(combobox1.ItemIndex));
save_memo.Lines.Add(inttostr(combobox2.ItemIndex));
save_memo.Lines.Add(inttostr(combobox3.ItemIndex));


save_memo.Lines.Add(booltostr(radiobutton1.Checked));
save_memo.Lines.Add(booltostr(radiobutton2.Checked));
save_memo.Lines.Add(booltostr(radiobutton3.Checked));
save_memo.Lines.Add(booltostr(radiobutton4.Checked));
save_memo.Lines.Add(booltostr(radiobutton5.Checked));
save_memo.Lines.Add(booltostr(radiobutton6.Checked));
save_memo.Lines.Add(booltostr(radiobutton7.Checked));
save_memo.Lines.Add(booltostr(radiobutton8.Checked));
save_memo.Lines.Add(booltostr(radiobutton9.Checked));
save_memo.Lines.Add(booltostr(radiobutton10.Checked));
save_memo.Lines.Add(booltostr(radiobutton11.Checked));
save_memo.Lines.Add(booltostr(radiobutton12.Checked));
save_memo.Lines.Add(booltostr(radiobutton13.Checked));
save_memo.Lines.Add(booltostr(radiobutton14.Checked));
save_memo.Lines.Add(booltostr(radiobutton15.Checked));
save_memo.Lines.Add(booltostr(radiobutton16.Checked));
save_memo.Lines.Add(booltostr(radiobutton17.Checked));
save_memo.Lines.Add(booltostr(radiobutton18.Checked));

save_memo.Lines.Add(memo1.Lines[0]);


save_memo.Lines.SaveToFile(savedialog1.FileName+'.sbi');



end;

end;

procedure TMain_Form.ComboBox3Change(Sender: TObject);
begin

if combobox3.ItemIndex = 0 then image2.Picture.LoadFromFile('..\Arythmia Package\heart.jpg');
if combobox3.ItemIndex = 1 then image2.Picture.LoadFromFile('..\Arythmia Package\brain.jpg');
if combobox3.ItemIndex = 2 then image2.Picture.LoadFromFile('..\Arythmia Package\lung.jpg');

end;

procedure TMain_Form.Button6Click(Sender: TObject);
begin

if opendialog1.Execute then
begin


save_memo.Lines.LoadFromFile(opendialog1.FileName);

edit1.Text := save_memo.Lines[0];
edit2.Text := save_memo.Lines[1];
edit3.Text := save_memo.Lines[2];
edit4.Text := save_memo.Lines[3];
edit5.Text := save_memo.Lines[4];
edit6.Text := save_memo.Lines[5];
edit7.Text := save_memo.Lines[6];
edit8.Text := save_memo.Lines[7];
edit9.Text := save_memo.Lines[8];
edit10.Text := save_memo.Lines[9];
edit11.Text := save_memo.Lines[10];
edit12.Text := save_memo.Lines[11];
edit13.Text := save_memo.Lines[12];
edit14.Text := save_memo.Lines[13];
edit15.Text := save_memo.Lines[14];
edit16.Text := save_memo.Lines[15];
edit17.Text := save_memo.Lines[16];
edit18.Text := save_memo.Lines[17];
edit19.Text := save_memo.Lines[18];
edit20.Text := save_memo.Lines[19];
edit21.Text := save_memo.Lines[20];
edit22.Text := save_memo.Lines[21];
edit23.Text := save_memo.Lines[22];
edit24.Text := save_memo.Lines[23];
edit25.Text := save_memo.Lines[24];
edit26.Text := save_memo.Lines[25];
edit27.Text := save_memo.Lines[26];
edit28.Text := save_memo.Lines[27];


combobox1.ItemIndex := strtoint(save_memo.Lines[28]);
combobox2.ItemIndex := strtoint(save_memo.Lines[29]);
combobox3.ItemIndex := strtoint(save_memo.Lines[30]);


radiobutton1.Checked := strtobool(save_memo.Lines[31]);
radiobutton2.Checked := strtobool(save_memo.Lines[32]);
radiobutton3.Checked := strtobool(save_memo.Lines[33]);
radiobutton4.Checked := strtobool(save_memo.Lines[34]);
radiobutton5.Checked := strtobool(save_memo.Lines[35]);
radiobutton6.Checked := strtobool(save_memo.Lines[36]);
radiobutton7.Checked := strtobool(save_memo.Lines[37]);
radiobutton8.Checked := strtobool(save_memo.Lines[38]);
radiobutton9.Checked := strtobool(save_memo.Lines[39]);
radiobutton10.Checked := strtobool(save_memo.Lines[40]);
radiobutton11.Checked := strtobool(save_memo.Lines[41]);
radiobutton12.Checked := strtobool(save_memo.Lines[42]);
radiobutton13.Checked := strtobool(save_memo.Lines[43]);
radiobutton14.Checked := strtobool(save_memo.Lines[44]);
radiobutton15.Checked := strtobool(save_memo.Lines[45]);
radiobutton16.Checked := strtobool(save_memo.Lines[46]);
radiobutton17.Checked := strtobool(save_memo.Lines[47]);
radiobutton18.Checked := strtobool(save_memo.Lines[48]);



end;
end;

end.
