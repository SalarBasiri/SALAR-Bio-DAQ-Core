unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Series, TeEngine, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  Tzoom_form = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zoom_form: Tzoom_form;
  XVal , YVal : double;
         xval_index : int64;
implementation

{$R *.dfm}

end.
