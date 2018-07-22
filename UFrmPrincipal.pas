unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvExStdCtrls, JvEdit, JvExExtCtrls, JvRadioGroup, Vcl.Buttons, JvExButtons,
  JvBitBtn, UFrmConexao, Data.DB, Vcl.ExtCtrls, Data.SqlExpr, Data.DBXFirebird,
  Datasnap.Provider, Datasnap.DBClient, Data.FMTBcd;

type
  TFrmPrincipal = class(TForm)
    Menu: TMainMenu;
    mmFuncionalidades: TMenuItem;
    mmConfigurarConexao: TMenuItem;
    N1: TMenuItem;
    mmSair: TMenuItem;
    pnlTopo: TPanel;
    pnlBaixo: TPanel;
    gridPrincipal: TJvDBGrid;
    lblPeriodoAnalise: TLabel;
    edtDataInicial: TJvDatePickerEdit;
    edtDataFinal: TJvDatePickerEdit;
    rdgEstadoPedidos: TJvRadioGroup;
    rdgTipoPesquisa: TJvRadioGroup;
    gbxFiltros: TGroupBox;
    edtConsultor: TJvEdit;
    lblConsultor: TLabel;
    edtCliente: TJvEdit;
    lblCliente: TLabel;
    edtCarga: TJvEdit;
    lblCarga: TLabel;
    edtUnidadeFabril: TJvEdit;
    lblUnidadeFabril: TLabel;
    btnBuscar: TJvBitBtn;
    Conexao: TSQLConnection;
    DS: TDataSource;
    CDS: TClientDataSet;
    DSP: TDataSetProvider;
    SQLDS: TSQLDataSet;
    procedure mmSairClick(Sender: TObject);
    procedure mmConfigurarConexaoClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gridPrincipalTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnBuscarClick(Sender: TObject);
begin
  CDS.Open;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Conexao.Params.Clear;
  Conexao.LoginPrompt := False;
  Conexao.DriverName := 'Firebird';
  Conexao.Params.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ServerConfig.ini');
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  CDS.Free;
end;

procedure TFrmPrincipal.gridPrincipalTitleClick(Column: TColumn);
begin
  CDS.IndexFieldNames := Column.FieldName;
end;

procedure TFrmPrincipal.mmConfigurarConexaoClick(Sender: TObject);
begin
  frmConexao := TfrmConexao.Create(Self);
  frmConexao.ShowModal;
  frmConexao.FreeOnRelease;
end;

procedure TFrmPrincipal.mmSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
