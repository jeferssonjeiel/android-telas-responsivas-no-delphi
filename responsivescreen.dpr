program responsivescreen;

uses
  System.StartUpCopy,
  FMX.Forms,
  unt_main in 'unt_main.pas' {frm_app};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_app, frm_app);
  Application.Run;
end.
