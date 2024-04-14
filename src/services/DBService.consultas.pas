unit DBService.consultas;

interface

uses
  System.SysUtils, System.Classes, DBService.connection, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDBServiceConsultas = class(TDataModule)
    QRY_abastecimentos: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBServiceConsultas: TDBServiceConsultas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
