unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    NBottton: TButton;
    SButton: TButton;
    procedure NBotttonClick(Sender: TObject);
    procedure SButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.NBotttonClick(Sender: TObject);
begin
if form1.selection_label.Caption = 'vf_end' then form1.episodes_of_nvf_edit.Text := inttostr(strtoint(form1.episodes_of_nvf_edit.Text) + 1);
if form1.selection_label.Caption = 'vt_end' then form1.episodes_of_nvt_edit.Text := inttostr(strtoint(form1.episodes_of_nvt_edit.Text) + 1);
form1.reselect_btn.Click;

form2.Close;



end;

procedure TForm2.SButtonClick(Sender: TObject);
begin
if form1.selection_label.Caption = 'vf_end' then form1.episodes_of_svf_edit.Text := inttostr(strtoint(form1.episodes_of_svf_edit.Text) + 1);
if form1.selection_label.Caption = 'vt_end' then form1.episodes_of_svt_edit.Text := inttostr(strtoint(form1.episodes_of_svt_edit.Text) + 1);
form1.reselect_btn.Click;
form2.Close;
end;

end.
