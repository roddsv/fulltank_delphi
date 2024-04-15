program FullTank;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal},
  DBService.connection in 'src\services\DBService.connection.pas' {ServiceDBConn: TDataModule},
  DBService.consultas in 'src\services\DBService.consultas.pas' {DBServiceConsultas: TDataModule},
  View.base in 'src\views\View.base.pas' {ViewBase},
  View.base.listas in 'src\views\View.base.listas.pas' {ViewBaseListas},
  View.abastecimentos in 'src\views\View.abastecimentos.pas' {ViewAbastecimentos},
  View.bombas in 'src\views\View.bombas.pas' {ViewBombasETanques};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceDBConn, ServiceDBConn);
  Application.CreateForm(TDBServiceConsultas, DBServiceConsultas);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewAbastecimentos, ViewAbastecimentos);
  Application.CreateForm(TViewBombasETanques, ViewBombasETanques);
  Application.Run;
end.
