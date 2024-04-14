unit DBService.connection;

interface

uses
  System.SysUtils,
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, System.IniFiles;

type
  TServiceDBConn = class(TDataModule)
    FirebaseFDConn: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
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

procedure TServiceDBConn.DataModuleCreate(Sender: TObject);
var
  LIniFile : TIniFile;
  LDataBase: string;
  LUsername: string;
  LPassword: string;
  LServer: string;
  LPort: integer;
  LPath: string;

begin
  try
    FirebaseFDConn.Connected := False;

    LPath := ExtractFileDir(ParamStr(0)) + '\Login.ini';

    LIniFile := TIniFile.Create(LPath);

    LDatabase := LIniFile.ReadString('DB_CONNECTION', 'DATABASE', LDatabase);
    LServer := LIniFile.ReadString('DB_CONNECTION', 'SERVER', LServer);
    LPort := LIniFile.ReadInteger('DB_CONNECTION', 'PORT', LPort);

    LUsername := 'SYSDBA';
    LPassword := 'masterkey';

    FirebaseFDConn.Params.Values['DATABASE'] := LDatabase;
    FirebaseFDConn.Params.Values['Username'] := LUsername;
    FirebaseFDConn.Params.Values['Password'] := LPassword;
    FirebaseFDConn.Params.Values['Server'] := LServer;
    FirebaseFDConn.Params.Values['Port'] := LPort.toString;

    FirebaseFDConn.Connected := True;

  finally

  end;
end;

end.
