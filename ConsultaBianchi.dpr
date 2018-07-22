program ConsultaBianchi;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  UFrmConexao in 'UFrmConexao.pas' {FrmConexao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
