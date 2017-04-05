inherited frmPacientes: TfrmPacientes
  Left = 411
  Top = 187
  Caption = 'PACIENTES'
  ClientHeight = 464
  ClientWidth = 769
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited PnTitulo: TPanel
    Width = 769
    Caption = 'Busca de Pacientes...'
  end
  inherited PnConsulta: TPanel
    Width = 769
    Height = 58
    inherited Label1: TLabel
      Top = -2
    end
    inherited Bevel1: TBevel
      Left = 209
      Height = 60
    end
    inherited Label2: TLabel
      Left = 528
    end
    inherited edtConsulta: TEdit
      Left = 239
      Height = 26
      OnKeyPress = edtConsultaKeyPress
    end
    object RdBtnCodigo: TRadioButton
      Left = 24
      Top = 18
      Width = 49
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object RdBtnNome: TRadioButton
      Left = 24
      Top = 36
      Width = 49
      Height = 13
      Caption = '&Nome'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
    end
    object RdBtnCartaoSUS: TRadioButton
      Left = 77
      Top = 19
      Width = 85
      Height = 13
      Caption = 'Ca&rt'#227'o SUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object RdBtnCPF: TRadioButton
      Left = 77
      Top = 36
      Width = 85
      Height = 13
      Caption = '&CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object RdBtnRG: TRadioButton
      Left = 77
      Top = 53
      Width = 85
      Height = 13
      Caption = '&RG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited PnDados: TPanel
    Top = 113
    Width = 769
    Height = 302
    object GrdPacientes: TDBGrid
      Left = 1
      Top = 1
      Width = 767
      Height = 300
      Align = alClient
      DataSource = dsDados
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -10
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = GrdPacientesDrawColumnCell
      OnTitleClick = GrdPacientesTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 273
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NASCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nascimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 158
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CARTAOSUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cart'#227'o SUS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  inherited PnAcoes: TPanel
    Top = 415
    Width = 769
  end
end
