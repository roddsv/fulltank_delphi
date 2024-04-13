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
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

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
    projectName: TLabel;
    descriptionPanel: TPanel;
    footerLicenseText: TLabel;
    menuShapePanel: TPanel;
    ShapeMenu: TShape;
    menuDataPanel: TPanel;
    btnAbastecimentos: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnBombasETanques: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    procedure closeButtonClick(Sender: TObject);
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

end.
