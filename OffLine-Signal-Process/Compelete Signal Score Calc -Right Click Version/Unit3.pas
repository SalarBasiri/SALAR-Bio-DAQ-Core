unit Unit3;

interface



uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tscore_form = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    score_label: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Edit7: TEdit;
    Label6: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Button3: TButton;
    Memo2: TMemo;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  score_form: Tscore_form;

implementation

uses Unit1;

{$R *.dfm}

procedure Tscore_form.Button3Click(Sender: TObject);
begin
memo1.Lines.add('Total Score: '+score_label.Caption);

memo1.Lines.SaveToFile(form1.label1.Caption + '_Total_Score.txt');

end;

procedure Tscore_form.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
memo2.Lines.Clear;
memo2.Lines.Add(edit1.Text);
memo2.Lines.Add(edit2.Text);
memo2.Lines.Add(edit3.Text);
memo2.Lines.Add(edit4.Text);
memo2.Lines.Add(edit5.Text);
memo2.Lines.Add(edit6.Text);
memo2.Lines.Add(edit7.Text);
memo2.Lines.Add(edit8.Text);
memo2.Lines.Add(edit9.Text);
memo2.Lines.SaveToFile(savedialog1.FileName+'.ssf');
 
end;

end;

procedure Tscore_form.Button1Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
memo2.Lines.LoadFromFile(opendialog1.FileName);
edit1.Text := memo2.Lines[0];
edit2.Text := memo2.Lines[1];
edit3.Text := memo2.Lines[2];
edit4.Text := memo2.Lines[3];
edit5.Text := memo2.Lines[4];
edit6.Text := memo2.Lines[5];
edit7.Text := memo2.Lines[6];
edit8.Text := memo2.Lines[7];
edit9.Text := memo2.Lines[8];





end;

end;

end.
