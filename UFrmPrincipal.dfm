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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
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
      Width = 132
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
      Left = 216
      Top = 7
      Width = 113
      Height = 135
      Caption = 'Exibi'#231#227'o'
      ItemIndex = 0
      Items.Strings = (
        'Por Consultor'
        'Por Cliente'
        'Por Carga'
        'Por Pedido')
      TabOrder = 3
    end
    object gbxFiltros: TGroupBox
      Left = 359
      Top = 7
      Width = 282
      Height = 135
      Caption = 'Filtros'
      TabOrder = 4
      object lblConsultor: TLabel
        Left = 85
        Top = 22
        Width = 54
        Height = 16
        Caption = 'Consultor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCliente: TLabel
        Left = 85
        Top = 49
        Width = 39
        Height = 16
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCarga: TLabel
        Left = 85
        Top = 76
        Width = 34
        Height = 16
        Caption = 'Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblUnidadeFabril: TLabel
        Left = 85
        Top = 103
        Width = 82
        Height = 16
        Caption = 'Unidade Fabril'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtConsultor: TJvEdit
        Left = 13
        Top = 21
        Width = 66
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object edtCliente: TJvEdit
        Left = 13
        Top = 48
        Width = 66
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object edtCarga: TJvEdit
        Left = 13
        Top = 75
        Width = 66
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object edtUnidadeFabril: TJvEdit
        Left = 13
        Top = 102
        Width = 66
        Height = 21
        TabOrder = 3
        Text = ''
      end
    end
    object btnBuscar: TJvBitBtn
      Left = 664
      Top = 35
      Width = 97
      Height = 77
      Caption = '&Buscar'
      TabOrder = 5
      OnClick = btnBuscarClick
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
    DataSource = DS
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = gridPrincipalTitleClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object Menu: TMainMenu
    Left = 608
    Top = 168
    object mmFuncionalidades: TMenuItem
      Caption = '&Funcionalidades'
      object mmConfigurarConexao: TMenuItem
        Caption = '&Configurar Conex'#227'o'
        OnClick = mmConfigurarConexaoClick
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
  object Conexao: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver240.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver240.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=database.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 688
    Top = 169
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 712
    Top = 392
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP'
    Left = 640
    Top = 392
  end
  object DSP: TDataSetProvider
    DataSet = SQLDS
    Left = 568
    Top = 392
  end
  object SQLDS: TSQLDataSet
    CommandText = 
      'select'#13#10'    CIDADE.CODIGO_CIDADE as "C'#243'digo",'#13#10'    CIDADE.DESCRI' +
      'CAO_CIDADE as "Descri'#231#227'o",'#13#10'    CIDADE.STATUS_CIDADE as "Status"' +
      #13#10'from CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 392
  end
end
