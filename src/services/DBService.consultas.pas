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
    QRY_bombas: TFDQuery;
    QRY_abastecimentosABASTECIMENTO_ID: TIntegerField;
    QRY_abastecimentosBOMBA_ID: TIntegerField;
    QRY_abastecimentosDATA_ABASTECIMENTO: TDateField;
    QRY_abastecimentosQUANTIDADE_LITROS: TFMTBCDField;
    QRY_abastecimentosVALOR_ABASTECIDO: TFMTBCDField;
    QRY_abastecimentosIMPOSTO: TFMTBCDField;
    QRY_bombasBOMBA_ID: TIntegerField;
    QRY_bombasNUMERO_BOMBA: TIntegerField;
    QRY_bombasTANQUE_ID: TIntegerField;
    QRY_tanques: TFDQuery;
    QRY_tanquesTANQUE_ID: TIntegerField;
    QRY_tanquesTANQUE_TIPO_COMBUSTIVEL: TStringField;
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
