unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  TImpedance_form = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Chart3: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    SaveDialog1: TSaveDialog;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impedance_form: TImpedance_form;

implementation

uses Main;

{$R *.dfm}

procedure TImpedance_form.Button1Click(Sender: TObject);
begin
mainform.button3.Click;
button2.Enabled := true;
button3.Enabled := true;
button4.Enabled := true;
button5.Enabled := true;
button6.Enabled := true;

end;

procedure TImpedance_form.Button2Click(Sender: TObject);
begin
mainform.Button4.Click;
end;

procedure TImpedance_form.Button3Click(Sender: TObject);
begin
mainform.Button8.Click;
end;

procedure TImpedance_form.Button4Click(Sender: TObject);
begin
chart3.Series[0].Clear;
memo1.Lines.Clear;
end;

procedure TImpedance_form.Button6Click(Sender: TObject);
begin
if savedialog1.Execute then
 memo1.Lines.SaveToFile(savedialog1.FileName+'.txt');
end;

procedure TImpedance_form.Button5Click(Sender: TObject);
begin
if savedialog1.Execute then
  chart3.SaveToBitmapFile(savedialog1.FileName+'.bmp');
end;

end.
