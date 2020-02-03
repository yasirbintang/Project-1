program Project1;

uses
  Forms,
  ufrmInputKasus in 'ufrmInputKasus.pas' {frmInputKasus};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmInputKasus, frmInputKasus);
  Application.Run;
end.
