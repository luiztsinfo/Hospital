object frmConsultas: TfrmConsultas
  Left = 516
  Top = 244
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'frmConsultas'
  ClientHeight = 411
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 55
    Align = alTop
    Caption = 'Consulta...'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object PnConsulta: TPanel
    Left = 0
    Top = 55
    Width = 670
    Height = 60
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 6
      Width = 131
      Height = 16
      Caption = 'Op'#231#245'es de consulta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 156
      Top = 6
      Width = 7
      Height = 45
    end
    object Label2: TLabel
      Left = 476
      Top = 32
      Width = 21
      Height = 13
      Caption = '- F6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtConsulta: TEdit
      Left = 186
      Top = 23
      Width = 283
      Height = 31
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object PnDados: TPanel
    Left = 0
    Top = 115
    Width = 670
    Height = 247
    Align = alClient
    TabOrder = 2
  end
  object PnAcoes: TPanel
    Left = 0
    Top = 362
    Width = 670
    Height = 49
    Align = alBottom
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 3
    object BtnIncluir: TBitBtn
      Left = 17
      Top = 12
      Width = 82
      Height = 30
      Caption = '&INCLUIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnIncluirClick
    end
    object BtnAlterar: TBitBtn
      Left = 104
      Top = 12
      Width = 81
      Height = 30
      Caption = '&ALTERAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnAlterarClick
    end
    object BtnExcluir: TBitBtn
      Left = 192
      Top = 12
      Width = 82
      Height = 30
      Caption = '&EXCLUIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object BtnSair: TBitBtn
      Left = 528
      Top = 11
      Width = 83
      Height = 30
      Caption = 'SAIR - ESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnSairClick
    end
  end
  object qryDados: TSQLQuery
    DataSource = dsDados
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Con
    Left = 16
    Top = 16
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 72
    Top = 16
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDados'
    Left = 120
    Top = 16
  end
  object dspDados: TDataSetProvider
    DataSet = qryDados
    Left = 176
    Top = 16
  end
end
