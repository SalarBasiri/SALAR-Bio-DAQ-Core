program Simple_chart;

uses
  Forms,
  SerialNGBasicDemoMain in 'SerialNGBasicDemoMain.pas' {Form1},
  SerialNGBasic in 'SerialNGBasic.pas' {SerialNGBasicDLG};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Simple Serial Chart';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSerialNGBasicDLG, SerialNGBasicDLG);
  Application.Run;
end.
