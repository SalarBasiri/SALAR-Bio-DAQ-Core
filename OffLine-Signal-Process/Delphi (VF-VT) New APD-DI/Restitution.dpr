program Restitution;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {di_point_care_form},
  Unit3 in 'Unit3.pas' {apdx_s1s2_form},
  Unit4 in 'Unit4.pas' {apdx_di_form},
  Unit5 in 'Unit5.pas' {apdx_v1v2_form},
  Unit6 in 'Unit6.pas' {s1s2_point_care_form},
  Unit7 in 'Unit7.pas' {apdx_point_care_form},
  Unit8 in 'Unit8.pas' {charts_form},
  Unit9 in 'Unit9.pas' {about_form},
  Unit10 in 'Unit10.pas' {zoom_form},
  Unit11 in 'Unit11.pas' {Def_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Restitution Offline Processor';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdi_point_care_form, di_point_care_form);
  Application.CreateForm(Tapdx_s1s2_form, apdx_s1s2_form);
  Application.CreateForm(Tapdx_di_form, apdx_di_form);
  Application.CreateForm(Tapdx_v1v2_form, apdx_v1v2_form);
  Application.CreateForm(Ts1s2_point_care_form, s1s2_point_care_form);
  Application.CreateForm(Tapdx_point_care_form, apdx_point_care_form);
  Application.CreateForm(Tcharts_form, charts_form);
  Application.CreateForm(Tabout_form, about_form);
  Application.CreateForm(Tzoom_form, zoom_form);
  Application.CreateForm(TDef_Form, Def_Form);
  Application.Run;
end.
