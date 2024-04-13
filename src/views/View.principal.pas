unit View.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TViewPrincipal = class(TForm)
    topPanel: TPanel;
    closeButton: TButton;
    menuPanel: TPanel;
    backgroundPanel: TPanel;
    footerPanel: TPanel;
    contentPanel: TPanel;
    logoPanel: TPanel;
    lineLogoPanel: TPanel;
    contentLogoPanel: TPanel;
    Logo: TImage;
    Label1: TLabel;
    descriptionPanel: TPanel;
    projectDescription: TLabel;
    technologiesDescription: TLabel;
    procedure closeButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.closeButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  projectDescription.Caption := 'Sistema de Gerenciamento de Abastecimento' + #13#10 + ' do Posto ABC';
end;
end.
