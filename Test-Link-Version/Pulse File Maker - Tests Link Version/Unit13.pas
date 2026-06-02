unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tstop_protocol_form = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stop_protocol_form: Tstop_protocol_form;

implementation

uses SerialNGSFileDemoMain;

{$R *.dfm}

procedure Tstop_protocol_form.Button1Click(Sender: TObject);
begin
if radiobutton1.Checked then
begin
      form1.serialportng1.SendString(chr(255));
      form1.SpeedButton1.Enabled := true;
      form1.SpeedButton2.Enabled := true;

      form1.button13.Enabled := true;
      form1.button14.Enabled := true;

      form1.SpeedButton3.Enabled := true;
      form1.SpeedButton4.Enabled := true;
      form1.button11.Enabled := true;

      form1.button11.Click;

end;


if radiobutton2.Checked then
begin
      form1.Edit5.Text := form1.Edit9.Text;
      form1.serialportng1.SendString(chr(255));
      form1.SpeedButton1.Enabled := true;
      form1.SpeedButton2.Enabled := true;

      form1.button13.Enabled := true;
      form1.button14.Enabled := true;

      form1.SpeedButton3.Enabled := true;
      form1.SpeedButton4.Enabled := true;
      form1.button11.Enabled := true;

      form1.button11.Click;

end;


if radiobutton3.Checked then
begin
      form1.serialportng1.SendString(chr(255));
      form1.SpeedButton1.Enabled := true;
      form1.SpeedButton2.Enabled := true;

      form1.button13.Enabled := true;
      form1.button14.Enabled := true;

      form1.SpeedButton3.Enabled := true;
      form1.SpeedButton4.Enabled := true;
      form1.button11.Enabled := true;

      form1.button13.Click;

end;


if radiobutton4.Checked then
begin
      form1.serialportng1.SendString(chr(255));
      form1.SpeedButton1.Enabled := true;
      form1.SpeedButton2.Enabled := true;

      form1.button13.Enabled := true;
      form1.button14.Enabled := true;

      form1.SpeedButton3.Enabled := true;
      form1.SpeedButton4.Enabled := true;
      form1.button11.Enabled := true;

      form1.button14.Click;

end;

if radiobutton5.Checked then
begin
      form1.Edit5.Text := edit1.Text;
      form1.serialportng1.SendString(chr(255));
      form1.SpeedButton1.Enabled := true;
      form1.SpeedButton2.Enabled := true;

      form1.button13.Enabled := true;
      form1.button14.Enabled := true;

      form1.SpeedButton3.Enabled := true;
      form1.SpeedButton4.Enabled := true;
      form1.button11.Enabled := true;

      form1.button11.Click;

end;

stop_protocol_form.Close;

end;

end.
