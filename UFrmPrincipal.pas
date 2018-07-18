unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.ExtCtrls, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvExStdCtrls, JvEdit, JvExExtCtrls, JvRadioGroup, Vcl.Buttons, JvExButtons,
  JvBitBtn;

type
  TFrmPrincipal = class(TForm)
    Menu: TMainMenu;
    mmFuncionalidades: TMenuItem;
    mmConfigurarConexao: TMenuItem;
    N1: TMenuItem;
    mmSair: TMenuItem;
    Conexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
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
    procedure mmSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.mmSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
