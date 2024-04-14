program FullTank;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal},
  DBService.connection in 'src\services\DBService.connection.pas' {ServiceDBConn: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceDBConn, ServiceDBConn);
  Application.Run;
end.
