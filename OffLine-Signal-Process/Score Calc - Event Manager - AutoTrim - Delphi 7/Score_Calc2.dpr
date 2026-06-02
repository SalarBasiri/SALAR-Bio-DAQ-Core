program Score_Calc2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Multi_Chart_Show},
  Unit4 in 'Unit4.pas' {zoom_form},
  Unit5 in 'Unit5.pas' {score_form},
  Unit6 in 'Unit6.pas' {sdc_daq_dialog_form},
  Unit7 in 'Unit7.pas' {About_form};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Scor Arythmia Calculator';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TMulti_Chart_Show, Multi_Chart_Show);
  Application.CreateForm(Tzoom_form, zoom_form);
  Application.CreateForm(Tscore_form, score_form);
  Application.CreateForm(Tsdc_daq_dialog_form, sdc_daq_dialog_form);
  Application.CreateForm(TAbout_form, About_form);
  Application.Run;
end.
