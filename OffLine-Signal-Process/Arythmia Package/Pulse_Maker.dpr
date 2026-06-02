program Pulse_Maker;

uses
  Forms,
  SerialNGSFileDemoMain in 'SerialNGSFileDemoMain.pas' {Form1},
  SerialNGBasic in 'SerialNGBasic.pas' {SerialNGBasicDLG},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {BCL_form},
  Unit4 in 'Unit4.pas' {Recovery_form},
  Unit5 in 'Unit5.pas' {facitilation_form},
  Unit6 in 'Unit6.pas' {wbcl_form},
  Unit7 in 'Unit7.pas' {fatigue_form},
  Unit8 in 'Unit8.pas' {rate_dependency_form},
  Unit9 in 'Unit9.pas' {About_form},
  Unit10 in 'Unit10.pas' {AF_form},
  Unit11 in 'Unit11.pas' {upload_form};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Pulse Maker';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSerialNGBasicDLG, SerialNGBasicDLG);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TBCL_form, BCL_form);
  Application.CreateForm(TRecovery_form, Recovery_form);
  Application.CreateForm(Tfacitilation_form, facitilation_form);
  Application.CreateForm(Twbcl_form, wbcl_form);
  Application.CreateForm(Tfatigue_form, fatigue_form);
  Application.CreateForm(Trate_dependency_form, rate_dependency_form);
  Application.CreateForm(TAbout_form, About_form);
  Application.CreateForm(TAF_form, AF_form);
  Application.CreateForm(Tupload_form, upload_form);
  Application.Run;
end.
