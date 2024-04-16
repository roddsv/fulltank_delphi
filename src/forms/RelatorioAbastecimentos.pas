unit RelatorioAbastecimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, DBService.consultas;

type
  TfrmRelAbastecimentos = class(TForm)
    RelAbastecimentos: TRLReport;
    dsAbastecimentos: TDataSource;
    Abastecimentos: TRLBand;
    RLName: TRLLabel;
    RLDateTimeGeneration: TRLSystemInfo;
    RLFixedTextGeneration: TRLLabel;
    RLDadosDeAbastecimento: TRLBand;
    RLIdAbastecimento: TRLLabel;
    RLNumeroDaBomba: TRLLabel;
    RLQuantidade: TRLLabel;
    RLDataDoAbastecimento: TRLLabel;
    RLValorFinal: TRLLabel;
    RLIdAbastecimentoValue: TRLDBText;
    RLIdBombaValue: TRLDBText;
    RLDataAbastecimentoValue: TRLDBText;
    RLQtdeAbastecidaValue: TRLDBText;
    RLImposto: TRLLabel;
    RLImpostoValue: TRLDBText;
    RLDBText1: TRLDBText;
    RLRodape: TRLBand;
    RLNumeroDePaginaInfo: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAbastecimentos: TfrmRelAbastecimentos;

implementation

{$R *.dfm}

end.
