unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tsdc_daq_dialog_form = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Button1: TButton;
    Defaults: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DefaultsClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sdc_daq_dialog_form: Tsdc_daq_dialog_form;

implementation

uses Unit1;

{$R *.dfm}

procedure Tsdc_daq_dialog_form.Button1Click(Sender: TObject);
begin
if ((combobox1.ItemIndex <> -1) and (combobox1.ItemIndex <> -1) and (combobox1.ItemIndex <> -1)) then
begin
 form1.button20.click;


end
else
begin
 showmessage('Select Proper Channel for Stimulus, MAP and Contraction.');

end;

end;

procedure Tsdc_daq_dialog_form.DefaultsClick(Sender: TObject);
begin
combobox1.ItemIndex := 0;
combobox2.ItemIndex := 1;
combobox3.ItemIndex := 3;

end;

procedure Tsdc_daq_dialog_form.Button2Click(Sender: TObject);
begin
 sdc_daq_dialog_form.Close;
end;

end.
