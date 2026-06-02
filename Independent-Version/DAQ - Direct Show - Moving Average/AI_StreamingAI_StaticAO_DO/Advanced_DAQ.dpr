program Advanced_DAQ;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  DaqUtils in '..\DaqUtils.pas',
  Unit1 in 'Unit1.pas' {Impedance_form};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TImpedance_form, Impedance_form);
  Application.Run;
end.
