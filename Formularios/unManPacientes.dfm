inherited frmManPessoas: TfrmManPessoas
  Caption = 'Inclus'#227'o/Altera'#231#227'o Pessoas...'
  ClientHeight = 542
  ClientWidth = 753
  ExplicitWidth = 759
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnTitulo: TPanel
    Width = 753
  end
  inherited PnDados: TPanel
    Width = 753
    object lblCodigo: TLabel
      Left = 8
      Top = 6
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
    end
    object lblCPF: TLabel
      Left = 215
      Top = 6
      Width = 22
      Height = 16
      Caption = 'CPF'
    end
    object lblRG: TLabel
      Left = 327
      Top = 6
      Width = 16
      Height = 16
      Caption = 'RG'
    end
    object lblTipoPessoa: TLabel
      Left = 95
      Top = 6
      Width = 69
      Height = 16
      Caption = 'Tipo Pessoa'
    end
    object lblCertidao: TLabel
      Left = 601
      Top = 6
      Width = 48
      Height = 16
      Caption = 'Certid'#227'o'
    end
    object lblCartaoSUS: TLabel
      Left = 454
      Top = 6
      Width = 66
      Height = 16
      Caption = 'Cart'#227'o SUS'
    end
    object Label7: TLabel
      Left = 616
      Top = 112
      Width = 37
      Height = 16
      Caption = 'Label7'
    end
    object Label8: TLabel
      Left = 624
      Top = 136
      Width = 37
      Height = 16
      Caption = 'Label8'
    end
    object Label9: TLabel
      Left = 632
      Top = 160
      Width = 37
      Height = 16
      Caption = 'Label9'
    end
    object Label10: TLabel
      Left = 632
      Top = 176
      Width = 44
      Height = 16
      Caption = 'Label10'
    end
    object Label11: TLabel
      Left = 632
      Top = 192
      Width = 44
      Height = 16
      Caption = 'Label11'
    end
    object Label12: TLabel
      Left = 640
      Top = 216
      Width = 44
      Height = 16
      Caption = 'Label12'
    end
    object Label13: TLabel
      Left = 648
      Top = 232
      Width = 44
      Height = 16
      Caption = 'Label13'
    end
    object Label14: TLabel
      Left = 640
      Top = 248
      Width = 44
      Height = 16
      Caption = 'Label14'
    end
    object Label15: TLabel
      Left = 632
      Top = 264
      Width = 44
      Height = 16
      Caption = 'Label15'
    end
    object Label16: TLabel
      Left = 624
      Top = 288
      Width = 44
      Height = 16
      Caption = 'Label16'
    end
    object Label17: TLabel
      Left = 624
      Top = 304
      Width = 44
      Height = 16
      Caption = 'Label17'
    end
    object Label18: TLabel
      Left = 616
      Top = 320
      Width = 44
      Height = 16
      Caption = 'Label18'
    end
    object Label19: TLabel
      Left = 624
      Top = 336
      Width = 44
      Height = 16
      Caption = 'Label19'
    end
    object Label20: TLabel
      Left = 632
      Top = 360
      Width = 44
      Height = 16
      Caption = 'Label20'
    end
    object Label21: TLabel
      Left = 632
      Top = 376
      Width = 44
      Height = 16
      Caption = 'Label21'
    end
    object Label22: TLabel
      Left = 632
      Top = 400
      Width = 44
      Height = 16
      Caption = 'Label22'
    end
    object Label23: TLabel
      Left = 640
      Top = 416
      Width = 44
      Height = 16
      Caption = 'Label23'
    end
    object Label24: TLabel
      Left = 688
      Top = 352
      Width = 44
      Height = 16
      Caption = 'Label24'
    end
    object Label25: TLabel
      Left = 688
      Top = 368
      Width = 44
      Height = 16
      Caption = 'Label25'
    end
    object Label26: TLabel
      Left = 696
      Top = 384
      Width = 44
      Height = 16
      Caption = 'Label26'
    end
    object edtCodigo: TEdit
      Left = 8
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
      Text = 'EDTCODIGO'
    end
    object mskCPF: TMaskEdit
      Left = 215
      Top = 24
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      EditMask = '999.999.999-99;1;_'
      MaxLength = 14
      TabOrder = 1
      Text = '   .   .   -  '
    end
    object edtRG: TEdit
      Left = 327
      Top = 24
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      Text = 'EDTRG'
    end
    object CbxTipoPessoa: TComboBox
      Left = 95
      Top = 24
      Width = 114
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 3
      Text = 'F'#205'SICA'
      Items.Strings = (
        'F'#205'SICA'
        'JUR'#205'DICA')
    end
    object edtCertidao: TEdit
      Left = 601
      Top = 24
      Width = 139
      Height = 24
      TabOrder = 4
      Text = 'edtCertidao'
    end
    object edtCartaoSUS: TEdit
      Left = 454
      Top = 24
      Width = 141
      Height = 24
      TabOrder = 5
      Text = 'edtCartaoSUS'
    end
  end
  inherited PnAcoes: TPanel
    Width = 753
  end
  inherited cdsAux: TClientDataSet
    Left = 432
    Top = 209
  end
  inherited cdsPadrao: TClientDataSet
    Left = 432
  end
  inherited dspAux: TDataSetProvider
    Left = 496
    Top = 209
  end
  inherited dspPadrao: TDataSetProvider
    Left = 496
  end
  inherited dsAux: TDataSource
    Left = 560
    Top = 209
  end
  inherited dsPadrao: TDataSource
    Left = 560
  end
  inherited qryAux: TSQLQuery
    Left = 368
    Top = 208
  end
  inherited qryPadrao: TSQLQuery
    Left = 368
  end
end
