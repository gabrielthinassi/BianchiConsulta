object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consulta Bianchi'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 150
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object lblPeriodoAnalise: TLabel
      Left = 16
      Top = 7
      Width = 168
      Height = 19
      Caption = 'Per'#237'odo de An'#225'lise'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtDataInicial: TJvDatePickerEdit
      Left = 16
      Top = 32
      Width = 81
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 0
    end
    object edtDataFinal: TJvDatePickerEdit
      Left = 103
      Top = 32
      Width = 81
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 1
    end
    object rdgEstadoPedidos: TJvRadioGroup
      Left = 16
      Top = 59
      Width = 168
      Height = 83
      Caption = 'Estado dos Pedidos'
      ItemIndex = 0
      Items.Strings = (
        'Abertos'
        'Faturados')
      TabOrder = 2
    end
    object rdgTipoPesquisa: TJvRadioGroup
      Left = 200
      Top = 7
      Width = 113
      Height = 135
      Caption = 'Tipo de Pesquisa'
      ItemIndex = 0
      Items.Strings = (
        'Consultor'
        'Cliente')
      TabOrder = 3
    end
    object edtConsultor: TJvEdit
      Left = 319
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 4
      Text = ''
    end
    object edtCliente: TJvEdit
      Left = 319
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 5
      Text = ''
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 461
    Width = 784
    Height = 100
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
  end
  object gridPrincipal: TJvDBGrid
    Left = 0
    Top = 150
    Width = 784
    Height = 311
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object Menu: TMainMenu
    Left = 704
    Top = 8
    object mmFuncionalidades: TMenuItem
      Caption = '&Funcionalidades'
      object mmConfigurarConexao: TMenuItem
        Caption = '&Configurar Conex'#227'o'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mmSair: TMenuItem
        Caption = '&Sair'
        OnClick = mmSairClick
      end
    end
  end
  object Conexao: TFDConnection
    Left = 704
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 624
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 624
    Top = 56
  end
end