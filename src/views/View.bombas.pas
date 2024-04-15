unit View.bombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Vcl.WinXPanels,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DBService.consultas;

type
  TViewBombasETanques = class(TViewBaseListas)
    dsBombas: TDataSource;
    DBGrid_Bombas: TDBGrid;
    dsTanques: TDataSource;
    DBGrid_Tanques: TDBGrid;
  private
    { Private declarations }
  public
    procedure GetBombas;
  end;

var
  ViewBombasETanques: TViewBombasETanques;

implementation
procedure TViewBombasETanques.GetBombas;
begin
  DBServiceConsultas.QRY_bombas.Close;
  DBServiceConsultas.QRY_bombas.SQL.Clear;
  DBServiceConsultas.QRY_bombas.SQL.Add('SELECT * FROM BOMBA');
  DBServiceConsultas.QRY_bombas.Open();
end;

{$R *.dfm}

end.
