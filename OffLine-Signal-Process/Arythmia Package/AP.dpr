program AP;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Main_Form},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain_Form, Main_Form);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
