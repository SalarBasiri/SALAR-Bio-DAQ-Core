unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  Tsignal_tracer_form = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Shape1: TShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  signal_tracer_form: Tsignal_tracer_form;

implementation

{$R *.dfm}

end.
