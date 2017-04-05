inherited frmManPessoas: TfrmManPessoas
  Caption = 'Inclus'#227'o/Altera'#231#227'o Pessoas...'
  ClientHeight = 630
  ClientWidth = 753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnTitulo: TPanel
    Width = 753
  end
  inherited PnDados: TPanel
    Width = 753
    Height = 537
    object lblCodigo: TLabel
      Left = 10
      Top = 6
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
    end
    object lblCPF: TLabel
      Left = 223
      Top = 6
      Width = 22
      Height = 16
      Caption = 'CPF'
    end
    object lblRG: TLabel
      Left = 355
      Top = 6
      Width = 16
      Height = 16
      Caption = 'RG'
    end
    object lblTipoPessoa: TLabel
      Left = 103
      Top = 6
      Width = 69
      Height = 16
      Caption = 'Tipo Pessoa'
    end
    object lblNome: TLabel
      Left = 10
      Top = 54
      Width = 33
      Height = 16
      Caption = 'Nome'
    end
    object lblFantasia: TLabel
      Left = 355
      Top = 54
      Width = 48
      Height = 16
      Caption = 'Fantasia'
    end
    object lblEndereco: TLabel
      Left = 10
      Top = 98
      Width = 53
      Height = 16
      Caption = 'Endere'#231'o'
    end
    object lblNumero: TLabel
      Left = 355
      Top = 98
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
    end
    object lblFoneCom: TLabel
      Left = 127
      Top = 204
      Width = 89
      Height = 16
      Caption = 'Fone Comercial'
    end
    object lblEmail: TLabel
      Left = 10
      Top = 252
      Width = 36
      Height = 16
      Caption = 'E-mail'
    end
    object lblSite: TLabel
      Left = 355
      Top = 252
      Width = 22
      Height = 16
      Caption = 'Site'
    end
    object lblBairro: TLabel
      Left = 454
      Top = 98
      Width = 34
      Height = 16
      Caption = 'Bairro'
    end
    object lblFoneResidencial: TLabel
      Left = 10
      Top = 204
      Width = 96
      Height = 16
      Caption = 'Fone Residencial'
    end
    object lblFoneCel: TLabel
      Left = 242
      Top = 204
      Width = 40
      Height = 16
      Caption = 'Celular'
    end
    object lblTitMunicipio: TLabel
      Left = 10
      Top = 152
      Width = 53
      Height = 16
      Caption = 'Munic'#237'pio'
    end
    object lblMunicipio: TLabel
      Left = 112
      Top = 173
      Width = 5
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTitNaturalidade: TLabel
      Left = 355
      Top = 152
      Width = 72
      Height = 16
      Caption = 'Naturalidade'
      Visible = False
    end
    object lblNaturalidade: TLabel
      Left = 467
      Top = 173
      Width = 5
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object edtCodigo: TEdit
      Left = 10
      Top = 24
      Width = 87
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      Enabled = False
      TabOrder = 0
      Text = 'EDTCODIGO'
    end
    object mskCPF: TMaskEdit
      Left = 223
      Top = 24
      Width = 126
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      EditMask = '999.999.999-99;1;_'
      MaxLength = 14
      TabOrder = 2
      Text = '   .   .   -  '
    end
    object edtRG: TEdit
      Left = 355
      Top = 24
      Width = 98
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 3
      Text = 'EDTRG'
    end
    object CbxTipoPessoa: TComboBox
      Left = 103
      Top = 24
      Width = 114
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      Color = 13565951
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 1
      Text = 'F'#205'SICA'
      Items.Strings = (
        'F'#205'SICA'
        'JUR'#205'DICA')
    end
    object edtNome: TEdit
      Left = 10
      Top = 72
      Width = 339
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 5
      Text = 'EDTNOME'
    end
    object edtFantasia: TEdit
      Left = 355
      Top = 72
      Width = 268
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 6
      Text = 'EDTFANTASIA'
    end
    object edtEndereco: TEdit
      Left = 10
      Top = 117
      Width = 339
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 7
      Text = 'EDTENDERECO'
    end
    object edtNumero: TEdit
      Left = 355
      Top = 117
      Width = 95
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 8
      Text = 'EDTNUMERO'
    end
    object edtBairro: TEdit
      Left = 454
      Top = 117
      Width = 286
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 9
      Text = 'EDTBAIRRO'
    end
    object mskFoneRes: TMaskEdit
      Left = 10
      Top = 222
      Width = 111
      Height = 24
      Color = 13565951
      EditMask = '(99) 9 9999-9999;1;_'
      MaxLength = 16
      TabOrder = 14
      Text = '(  )       -    '
    end
    object mskFoneCom: TMaskEdit
      Left = 127
      Top = 222
      Width = 109
      Height = 24
      Color = 13565951
      EditMask = '(99) 9 9999-9999;1;_'
      MaxLength = 16
      TabOrder = 15
      Text = '(  )       -    '
    end
    object mskCelular: TMaskEdit
      Left = 242
      Top = 222
      Width = 107
      Height = 24
      Color = 13565951
      EditMask = '(99) 9 9999-9999;1;_'
      MaxLength = 16
      TabOrder = 16
      Text = '(  )       -    '
    end
    object edtEmail: TEdit
      Left = 10
      Top = 270
      Width = 339
      Height = 24
      CharCase = ecLowerCase
      Color = 13565951
      TabOrder = 17
      Text = 'edtemail'
    end
    object edtSite: TEdit
      Left = 355
      Top = 270
      Width = 337
      Height = 24
      CharCase = ecLowerCase
      Color = 13565951
      TabOrder = 18
      Text = 'edtsite'
    end
    object GrpBxFis1: TGroupBox
      Left = 457
      Top = 5
      Width = 290
      Height = 61
      TabOrder = 4
      object lblCartaoSUS: TLabel
        Left = 6
        Top = 4
        Width = 66
        Height = 16
        Caption = 'Cart'#227'o SUS'
      end
      object lblCertidao: TLabel
        Left = 153
        Top = 4
        Width = 48
        Height = 16
        Caption = 'Certid'#227'o'
      end
      object edtCartaoSUS: TEdit
        Left = 6
        Top = 22
        Width = 141
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        TabOrder = 0
        Text = 'EDTCARTAOSUS'
      end
      object edtCertidao: TEdit
        Left = 153
        Top = 22
        Width = 131
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        TabOrder = 1
        Text = 'EDTCERTIDAO'
      end
    end
    object GrpBxFis2: TGroupBox
      Left = 10
      Top = 304
      Width = 730
      Height = 147
      TabOrder = 19
      object lblPai: TLabel
        Left = 4
        Top = -1
        Width = 17
        Height = 16
        Caption = 'Pai'
      end
      object lblMae: TLabel
        Left = 345
        Top = 4
        Width = 24
        Height = 16
        Caption = 'M'#227'e'
      end
      object lblSexo: TLabel
        Left = 5
        Top = 46
        Width = 28
        Height = 16
        Caption = 'Sexo'
      end
      object lblNascimento: TLabel
        Left = 102
        Top = 46
        Width = 66
        Height = 16
        Caption = 'Nascimento'
      end
      object lblEstadoCivil: TLabel
        Left = 188
        Top = 46
        Width = 65
        Height = 16
        Caption = 'Estado Civil'
      end
      object lblCor: TLabel
        Left = 347
        Top = 46
        Width = 20
        Height = 16
        Caption = 'Cor'
      end
      object lblCodProfissao: TLabel
        Left = 5
        Top = 90
        Width = 52
        Height = 16
        Caption = 'Profiss'#227'o'
      end
      object lblProfissao: TLabel
        Left = 102
        Top = 107
        Width = 5
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblLocalTrabalho: TLabel
        Left = 347
        Top = 90
        Width = 102
        Height = 16
        Caption = 'Local de Trabalho'
      end
      object edtPai: TEdit
        Left = 4
        Top = 21
        Width = 339
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        TabOrder = 0
        Text = 'EDTPAI'
      end
      object edtMae: TEdit
        Left = 345
        Top = 21
        Width = 268
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        TabOrder = 1
        Text = 'EDTMAE'
      end
      object CbxSexo: TComboBox
        Left = 5
        Top = 61
        Width = 94
        Height = 24
        Style = csDropDownList
        Color = 13565951
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 2
        Text = 'FEMININO'
        Items.Strings = (
          'FEMININO'
          'MASCULINO')
      end
      object mskNascimento: TMaskEdit
        Left = 102
        Top = 61
        Width = 82
        Height = 24
        Color = 13565951
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 3
        Text = '  /  /    '
      end
      object CbxEstadoCivil: TComboBox
        Left = 188
        Top = 61
        Width = 122
        Height = 24
        Style = csDropDownList
        Color = 13565951
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 4
        Text = 'SOLTEIRO(A)'
        Items.Strings = (
          'SOLTEIRO(A)'
          'CASADO(A)'
          'DIVORCIADO(A)'
          'VI'#218'VO(A)')
      end
      object CbxCor: TComboBox
        Left = 345
        Top = 61
        Width = 121
        Height = 24
        Style = csDropDownList
        Color = 13565951
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 5
        Text = 'BRANCO(A)'
        Items.Strings = (
          'BRANCO(A)'
          'PRETO(A)'
          'PARDO(A)'
          'AMARELO(A)'
          'IND'#205'GENA')
      end
      object edtCodProfissao: TEdit
        Left = 4
        Top = 106
        Width = 53
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        TabOrder = 6
        Text = 'EDTCODPROFISSAO'
        OnExit = edtCodProfissaoExit
      end
      object edtLocalTrabalho: TEdit
        Left = 345
        Top = 106
        Width = 200
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        TabOrder = 7
        Text = 'EDTLOCALTRABALHO'
      end
      object BtnBuscaProfissao: TBitBtn
        Left = 63
        Top = 106
        Width = 28
        Height = 24
        TabOrder = 8
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070
          705050508F888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF7070705F5850A0808F6F7080A0A8A0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070705F5850AF88
          8F6F70A03F80DF80A8C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF7070705F5850AF888F7070A03F80D04FB0FFBFE0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090905F5850AF888F7070A03F80
          D04FB0FFA0D0FFFFFFFFFFFFFFFFFFFF8F888F5F605F5050505050506F686F9F
          989F7F787F90787F7070A04080D04FB0FF8FC8FFFFFFFFFFFFFFFFFFFF8F888F
          505050807070CFB0A0DFC0AFCFA890BF98808070708F888F5088CF4FB0FF8FC8
          FFFFFFFFFFFFFFFFFFFF8F888F5050509F807FF0E8DFFFF8D0FFF8D0FFF8D0FF
          F0BFEFC8A0AF888FC0C8D0A0D0FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F70585F
          EFE8D0FFF8FFFFF8FFFFF8E0FFF8D0FFF0BFFFF0BFEFC0A0DFC8CFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF505050B0988FFFF8D0FFF8F0FFF8FFFFF8E0FFF8D0FF
          F0C0FFE0AFFFF0BFDFB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050CFB090
          FFF8D0FFF8E0FFF8E0FFF8E0FFF8D0FFF0BFFFD8A0FFF0C0E0B8A0FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF6F686FCFA88FFFF8D0FFF8D0FFF8D0FFF8D0FFF8CFFF
          E8BFFFE0B0FFF0C0E0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F888FB0907F
          FFF0BFFFF0BFFFF0C0FFF0BFFFE8BFFFE0B0FFF0D0FFF0C0DFB8B0FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF8F7070EFD0A0FFE8BFFFE0AFFFD8A0FFE8BFFF
          F0E0FFF8FFEFD8BFDFC0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B09080F0C8A0FFF0BFFFE8BFFFF8CFFFF8E0EFE0DFD0B8B0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F888FDFB09FDFB09FCFA08FCF
          A89FDFC0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object edtCodMunicipio: TEdit
      Left = 10
      Top = 171
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 10
      Text = 'EDTCODMUNICIPIO'
      OnExit = edtCodMunicipioExit
    end
    object BtnBuscaMunicipio: TBitBtn
      Left = 73
      Top = 171
      Width = 28
      Height = 24
      TabOrder = 11
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070
        705050508F888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7070705F5850A0808F6F7080A0A8A0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070705F5850AF88
        8F6F70A03F80DF80A8C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF7070705F5850AF888F7070A03F80D04FB0FFBFE0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090905F5850AF888F7070A03F80
        D04FB0FFA0D0FFFFFFFFFFFFFFFFFFFF8F888F5F605F5050505050506F686F9F
        989F7F787F90787F7070A04080D04FB0FF8FC8FFFFFFFFFFFFFFFFFFFF8F888F
        505050807070CFB0A0DFC0AFCFA890BF98808070708F888F5088CF4FB0FF8FC8
        FFFFFFFFFFFFFFFFFFFF8F888F5050509F807FF0E8DFFFF8D0FFF8D0FFF8D0FF
        F0BFEFC8A0AF888FC0C8D0A0D0FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F70585F
        EFE8D0FFF8FFFFF8FFFFF8E0FFF8D0FFF0BFFFF0BFEFC0A0DFC8CFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF505050B0988FFFF8D0FFF8F0FFF8FFFFF8E0FFF8D0FF
        F0C0FFE0AFFFF0BFDFB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050CFB090
        FFF8D0FFF8E0FFF8E0FFF8E0FFF8D0FFF0BFFFD8A0FFF0C0E0B8A0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F686FCFA88FFFF8D0FFF8D0FFF8D0FFF8D0FFF8CFFF
        E8BFFFE0B0FFF0C0E0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F888FB0907F
        FFF0BFFFF0BFFFF0C0FFF0BFFFE8BFFFE0B0FFF0D0FFF0C0DFB8B0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF8F7070EFD0A0FFE8BFFFE0AFFFD8A0FFE8BFFF
        F0E0FFF8FFEFD8BFDFC0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B09080F0C8A0FFF0BFFFE8BFFFF8CFFFF8E0EFE0DFD0B8B0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F888FDFB09FDFB09FCFA08FCF
        A89FDFC0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object edtCodNaturalidade: TEdit
      Left = 355
      Top = 171
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      Color = 13565951
      TabOrder = 12
      Text = 'EDTCODNATURALIDADE'
      Visible = False
      OnExit = edtCodNaturalidadeExit
    end
    object BtnBuscaNaturalidade: TBitBtn
      Left = 434
      Top = 171
      Width = 28
      Height = 24
      TabOrder = 13
      Visible = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070
        705050508F888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7070705F5850A0808F6F7080A0A8A0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070705F5850AF88
        8F6F70A03F80DF80A8C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF7070705F5850AF888F7070A03F80D04FB0FFBFE0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090905F5850AF888F7070A03F80
        D04FB0FFA0D0FFFFFFFFFFFFFFFFFFFF8F888F5F605F5050505050506F686F9F
        989F7F787F90787F7070A04080D04FB0FF8FC8FFFFFFFFFFFFFFFFFFFF8F888F
        505050807070CFB0A0DFC0AFCFA890BF98808070708F888F5088CF4FB0FF8FC8
        FFFFFFFFFFFFFFFFFFFF8F888F5050509F807FF0E8DFFFF8D0FFF8D0FFF8D0FF
        F0BFEFC8A0AF888FC0C8D0A0D0FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F70585F
        EFE8D0FFF8FFFFF8FFFFF8E0FFF8D0FFF0BFFFF0BFEFC0A0DFC8CFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF505050B0988FFFF8D0FFF8F0FFF8FFFFF8E0FFF8D0FF
        F0C0FFE0AFFFF0BFDFB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050CFB090
        FFF8D0FFF8E0FFF8E0FFF8E0FFF8D0FFF0BFFFD8A0FFF0C0E0B8A0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F686FCFA88FFFF8D0FFF8D0FFF8D0FFF8D0FFF8CFFF
        E8BFFFE0B0FFF0C0E0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F888FB0907F
        FFF0BFFFF0BFFFF0C0FFF0BFFFE8BFFFE0B0FFF0D0FFF0C0DFB8B0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF8F7070EFD0A0FFE8BFFFE0AFFFD8A0FFE8BFFF
        F0E0FFF8FFEFD8BFDFC0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B09080F0C8A0FFF0BFFFE8BFFFF8CFFFF8E0EFE0DFD0B8B0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F888FDFB09FDFB09FCFA08FCF
        A89FDFC0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GrpBxLogin: TGroupBox
      Left = 9
      Top = 457
      Width = 731
      Height = 75
      Caption = 'Login'
      TabOrder = 20
      Visible = False
      object lblUsuario: TLabel
        Left = 16
        Top = 24
        Width = 43
        Height = 16
        Caption = 'Usu'#225'rio'
      end
      object lblSenha: TLabel
        Left = 191
        Top = 24
        Width = 36
        Height = 16
        Caption = 'Senha'
      end
      object lblConfirmacaoSenha: TLabel
        Left = 348
        Top = 24
        Width = 112
        Height = 16
        Caption = 'Confirma'#231#227'o Senha'
      end
      object edtUsuario: TEdit
        Left = 16
        Top = 41
        Width = 169
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        TabOrder = 0
        Text = 'EDTUSUARIO'
      end
      object edtSenha: TEdit
        Left = 191
        Top = 41
        Width = 153
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        PasswordChar = '*'
        TabOrder = 1
        Text = 'EDTSENHA'
      end
      object edtConfirmacaoSenha: TEdit
        Left = 348
        Top = 41
        Width = 153
        Height = 24
        CharCase = ecUpperCase
        Color = 13565951
        PasswordChar = '*'
        TabOrder = 2
        Text = 'EDTCONFIRMACAOSENHA'
      end
    end
  end
  inherited PnAcoes: TPanel
    Top = 577
    Width = 753
  end
  inherited cdsAux: TClientDataSet
    ProviderName = 'dspAux'
    Left = 568
    Top = 97
  end
  inherited cdsPadrao: TClientDataSet
    Left = 568
    Top = 145
  end
  inherited dspAux: TDataSetProvider
    DataSet = qryAux
    Left = 632
    Top = 97
  end
  inherited dspPadrao: TDataSetProvider
    Left = 632
    Top = 145
  end
  inherited dsAux: TDataSource
    DataSet = cdsAux
    Left = 696
    Top = 97
  end
  inherited dsPadrao: TDataSource
    Left = 696
    Top = 145
  end
  inherited qryAux: TSQLQuery
    DataSource = dsAux
    MaxBlobSize = -1
    SQLConnection = DM.Con
    Left = 504
    Top = 96
  end
  inherited qryPadrao: TSQLQuery
    Left = 504
    Top = 145
  end
end
