object FrmConexao: TFrmConexao
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o do Servidor'
  ClientHeight = 361
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lstConfigBD: TValueListEditor
    Left = 0
    Top = 0
    Width = 484
    Height = 311
    Align = alClient
    KeyOptions = [keyEdit, keyAdd, keyDelete]
    TabOrder = 0
    TitleCaptions.Strings = (
      'Chave'
      'Valor')
    ColWidths = (
      150
      328)
    RowHeights = (
      18
      18)
  end
  object pnlInferior: TPanel
    Left = 0
    Top = 311
    Width = 484
    Height = 50
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    object btnGravar: TSpeedButton
      Left = 389
      Top = 4
      Width = 81
      Height = 37
      Caption = 'Gravar'
      OnClick = btnGravarClick
    end
    object btnTestar: TSpeedButton
      Left = 302
      Top = 4
      Width = 81
      Height = 37
      Caption = 'Testar'
    end
  end
end
