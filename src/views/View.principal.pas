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
    procedure btnAbastecimentosClick(Sender : TObject);
    procedure btnBombasETanquesClick(Sender : TObject);
    procedure btnRelatoriosClick(Sender : TObject);
    procedure btnConfiguracoesClick(Sender : TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure GetLineMenu(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnAbastecimentosClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.btnBombasETanquesClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.btnRelatoriosClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.closeButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  GetLineMenu(btnAbastecimentos);
end;

procedure TViewPrincipal.GetLineMenu(Sender: TObject);
begin
  ShapeMenu.Left := 0;
  ShapeMenu.Top := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height;
  ShapeMenu.Top := TSpeedButton(Sender).Top;
  menuShapePanel.Repaint;

end;

end.
