program Comp_Sig_Calc;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {score_form};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Compelete Signal Score';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tscore_form, score_form);
  Application.Run;
end.
