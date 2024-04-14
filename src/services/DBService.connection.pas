unit DBService.connection;

interface

uses
  System.SysUtils, System.Classes;

type
  TServiceDBConn = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceDBConn: TServiceDBConn;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
