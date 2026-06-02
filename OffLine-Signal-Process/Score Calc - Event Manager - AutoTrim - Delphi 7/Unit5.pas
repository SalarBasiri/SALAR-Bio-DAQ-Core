unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tscore_form = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  score_form: Tscore_form;
  file_path: string;
implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure Tscore_form.Button1Click(Sender: TObject);
begin
file_path := multi_chart_show.files_name_list.items[multi_chart_show.files_name_list.itemindex];
memo1.Lines.Clear;
memo1.Lines.Add('Score Calculation for File: '+file_path);
memo1.Lines.Add(label1.Caption);
memo1.Lines.Add(label2.Caption);
memo1.Lines.Add(label3.Caption);
memo1.Lines.Add(label4.Caption);
memo1.Lines.Add(label5.Caption);

memo1.Lines.SaveToFile(file_path+'_Score.txt');
end;

end.
