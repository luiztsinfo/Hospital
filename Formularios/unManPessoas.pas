unit unManPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, unCadastros, FMTBcd, SqlExpr,
  DB, Provider, DBClient, StdCtrls, Buttons,
  ExtCtrls, Mask, unFuncoes;

type
  TfrmManPessoas = class(TfrmCadastros)
    lblCodigo: TLabel;
    lblCPF: TLabel;
    lblRG: TLabel;
    lblTipoPessoa: TLabel;
    lblNome: TLabel;
    lblFantasia: TLabel;
    lblEndereco: TLabel;
    lblNumero: TLabel;
    lblFoneCom: TLabel;
    lblEmail: TLabel;
    lblSite: TLabel;
    lblBairro: TLabel;
    lblFoneResidencial: TLabel;
    lblFoneCel: TLabel;
    edtCodigo: TEdit;
    mskCPF: TMaskEdit;
    edtRG: TEdit;
    CbxTipoPessoa: TComboBox;
    edtNome: TEdit;
    edtFantasia: TEdit;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    edtBairro: TEdit;
    mskFoneRes: TMaskEdit;
    mskFoneCom: TMaskEdit;
    mskCelular: TMaskEdit;
    edtEmail: TEdit;
    edtSite: TEdit;
    GrpBxFis1: TGroupBox;
    edtCartaoSUS: TEdit;
    lblCartaoSUS: TLabel;
    edtCertidao: TEdit;
    lblCertidao: TLabel;
    GrpBxFis2: TGroupBox;
    edtPai: TEdit;
    lblPai: TLabel;
    edtMae: TEdit;
    lblMae: TLabel;
    lblSexo: TLabel;
    lblNascimento: TLabel;
    lblEstadoCivil: TLabel;
    lblCor: TLabel;
    lblCodProfissao: TLabel;
    lblProfissao: TLabel;
    CbxSexo: TComboBox;
    mskNascimento: TMaskEdit;
    CbxEstadoCivil: TComboBox;
    CbxCor: TComboBox;
    edtCodProfissao: TEdit;
    lblLocalTrabalho: TLabel;
    edtLocalTrabalho: TEdit;
    BtnBuscaProfissao: TBitBtn;
    lblTitMunicipio: TLabel;
    edtCodMunicipio: TEdit;
    BtnBuscaMunicipio: TBitBtn;
    lblMunicipio: TLabel;
    lblTitNaturalidade: TLabel;
    lblNaturalidade: TLabel;
    edtCodNaturalidade: TEdit;
    BtnBuscaNaturalidade: TBitBtn;
    GrpBxLogin: TGroupBox;
    lblUsuario: TLabel;
    edtUsuario: TEdit;
    lblSenha: TLabel;
    lblConfirmacaoSenha: TLabel;
    edtSenha: TEdit;
    edtConfirmacaoSenha: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edtCodMunicipioExit(Sender: TObject);
    procedure edtCodNaturalidadeExit(Sender: TObject);
    procedure edtCodProfissaoExit(Sender: TObject);
  private

    loFuncoes: TFuncoes;
    procedure configuraCampos;
    procedure incluir; override;
    procedure alterar; override;
    function ExistePessoa: boolean;
  public
    iCategoria: integer; // 0 - paciente
  end;

var
  frmManPessoas: TfrmManPessoas;

implementation

{$R *.dfm}

uses unPrincipal, unDM;


{ TfrmManPessoas }

function TfrmManPessoas.ExistePessoa: boolean;
var
  bRet: boolean;
begin
  bRet := False;

  with qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT nome, cpf FROM pessoa');
      SQL.Add('WHERE nome = :nome OR ((cpf = :cpf) AND (cpf <> :vazio))');
      ShowMessage(SQL.Text);
      qryAux.ParamByName('nome').AsString := edtNome.Text;
      ParamByName('cpf').AsString := mskCPF.Text;

      if CbxTipoPessoa.ItemIndex = 0 then
        ParamByName('vazio').AsString := '   .   .   -  '
      else
        ParamByName('vazio').AsString := '  .   .   /    -  ';

      Open;
    end;

  cdsAux.Close;
  cdsAux.Open;

  if (cdsAux.FieldByName('nome').AsString = edtNome.Text) or ((cdsAux.FieldByName('cpf').AsString = mskCPF.Text) and (cdsAux.FieldByName('cpf').AsString <> ('   .   .   -  ')) and (cdsAux.FieldByName('cpf').AsString <> ('  .   .   /    -  ')))  then
    begin
      MessageDlg('Pessoa j� cadastrada no sistema!',mtWarning,[mbOk],0);
      bRet := True;
    end;

  Result := bRet;
end;

procedure TfrmManPessoas.alterar;
begin
  inherited;

end;

procedure TfrmManPessoas.configuraCampos;
begin
  if iCategoria = 0 then
    begin
      frmManPessoas.Caption := 'Inclus�o/Altera��o Paciente...';
      GrpBxFis1.Visible := True;
      GrpBxFis2.Visible := True;
      lblFantasia.Visible := False;
      edtFantasia.Visible := False;
      lblTitNaturalidade.Visible := True;
      edtCodNaturalidade.Visible := True;
      BtnBuscaNaturalidade.Visible := True;
      lblNaturalidade.Visible      := True;
    end;
end;

procedure TfrmManPessoas.edtCodMunicipioExit(Sender: TObject);
begin
  inherited;
  if edtCodMunicipio.Text <> trim('') then
    begin
      lblMunicipio.Caption := loFuncoes.BuscaFk(edtCodMunicipio.Text,'municipio','nome');

      if lblMunicipio.Caption = trim('') then
        begin
          edtCodMunicipio.Clear;
          BtnBuscaMunicipio.SetFocus;
        end
      else
        if iCategoria = 0 then
          edtCodNaturalidade.SetFocus
        else
          mskFoneRes.SetFocus;
    end;
end;

procedure TfrmManPessoas.edtCodNaturalidadeExit(Sender: TObject);
begin
  inherited;
  if edtCodNaturalidade.Text <> trim('') then
    begin
      lblNaturalidade.Caption := loFuncoes.BuscaFk(edtCodNaturalidade.Text,'municipio','nome');

      if lblNaturalidade.Caption = trim('') then
        begin
          edtCodNaturalidade.Clear;
          BtnBuscaNaturalidade.SetFocus;
        end
      else
        mskFoneRes.SetFocus;
    end;
end;

procedure TfrmManPessoas.edtCodProfissaoExit(Sender: TObject);
begin
  inherited;
  if edtCodProfissao.Text <> trim('') then
    begin
      lblProfissao.Caption := loFuncoes.BuscaFk(edtCodProfissao.Text,'profissao','descricao');

      if lblProfissao.Caption = trim('') then
        begin
          edtCodProfissao.Clear;
          BtnBuscaProfissao.SetFocus;
        end
      else
        edtLocalTrabalho.SetFocus;
    end;
end;

procedure TfrmManPessoas.FormShow(Sender: TObject);
begin
  inherited;
  configuraCampos;
end;

procedure TfrmManPessoas.incluir;
begin
  inherited;
  if ExistePessoa = true then
    Exit;

  with qryPadrao, SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO pessoa (cpf,rg,nome,endereco,numero,bairro,fonecom,fonecel,email,codusuario');

      if (iCategoria > 0) then
        Add(',categoria');

      if ((edtCodMunicipio.Text <> trim('')) and (edtCodMunicipio.Text <> trim('0'))) then
        Add(',codmunicipio');

      if CbxTipoPessoa.ItemIndex <> 0 then
        Add(',tipopessoa');

      if CbxTipoPessoa.ItemIndex = 0 then
        begin
          Add(',certidao,cartaosus,pai,mae,foneresid,localtrabalho');

          if CbxSexo.ItemIndex <> 0 then
            Add(',sexo');

          if mskNascimento.Text <> '  /  /    ' then
            Add(',nascimento');

          if ((edtCodNaturalidade.Text <> trim('')) and (edtCodNaturalidade.Text <> trim('0'))) then
            Add(',codnaturalidade');

          if CbxEstadoCivil.ItemIndex <> 0 then
            Add(',estadocivil');

          if CbxCor.ItemIndex <> 0 then
            Add(',cor');

          if ((edtCodProfissao.Text <> trim('')) and (edtCodProfissao.Text <> trim('0'))) then
            Add(',codprofissao');
        end;

      if CbxTipoPessoa.ItemIndex = 1 then
        begin
          Add(',site,fantasia');
        end;

      Add(')');

      Add('VALUES (:cpf,:rg,:nome,:ende,:bai,:num,:fcom,:fcel,:cel,:emai,:cusu');

      if (iCategoria > 0) then
        Add(',:cate');

      if ((edtCodMunicipio.Text <> trim('')) and (edtCodMunicipio.Text <> trim('0'))) then
        Add(',:muni');

      if CbxTipoPessoa.ItemIndex <> 0 then
        Add(',:pess');

      if CbxTipoPessoa.ItemIndex = 0 then
        begin
          Add(',:cert,:cart,:pai,:mae,:fres,:loca');

          if CbxSexo.ItemIndex <> 0 then
            Add(',:sexo');

          if mskNascimento.Text <> '  /  /    ' then
            Add(',:nasc');

          if ((edtCodNaturalidade.Text <> trim('')) and (edtCodNaturalidade.Text <> trim('0'))) then
            Add(',:natu');

          if CbxEstadoCivil.ItemIndex <> 0 then
            Add(',:esta');

          if CbxCor.ItemIndex <> 0 then
            Add(',:cor');

          if ((edtCodProfissao.Text <> trim('')) and (edtCodProfissao.Text <> trim('0'))) then
            Add(',:prof');
        end;

      if CbxTipoPessoa.ItemIndex = 1 then
        begin
          Add(',:site,:fant');
        end;

      Add(')');

      ParamByName('cpf').AsString := mskCPF.Text;
      ParamByName('rg').AsString  := edtRG.Text;
      ParamByName('nome').AsString:= edtNome.Text;
      ParamByName('ende').AsString:= edtEndereco.Text;
      ParamByName('num').AsString := edtNumero.Text;
      ParamByName('bai').AsString := edtBairro.Text;
      ParamByName('fcom').AsString:= mskFoneCom.Text;
      ParamByName('fcel').AsString:= mskCelular.Text;
      ParamByName('emaI').AsString:=edtEmail.Text;
      ParamByName('cusu').AsInteger:= frmPrincipal.iCodUsuario;

      if (iCategoria > 0) then
        ParamByName('cate').AsInteger := iCategoria;

      if ((edtCodMunicipio.Text <> trim('')) and (edtCodMunicipio.Text <> trim('0'))) then
        ParamByName('muni').AsInteger := StrToInt(edtCodMunicipio.Text);

      if CbxTipoPessoa.ItemIndex <> 0 then
        ParamByName('pess').AsInteger := CbxTipoPessoa.ItemIndex;

      if CbxTipoPessoa.ItemIndex = 1 then
        begin

          ParamByName('cert').AsString := edtCertidao.Text;
          ParamByName('cart').AsString := edtCartaoSUS.Text;
          ParamByName('pai').AsString  := edtPai.Text;
          ParamByName('mae').AsString  := edtMae.Text;
          ParamByName('fres').AsString := mskFoneRes.Text;
          ParamByName('loca').AsString := edtLocalTrabalho.Text;

          if CbxSexo.ItemIndex <> 0 then
            ParamByName('sexo').AsInteger := CbxSexo.ItemIndex;

          if mskNascimento.Text <> '  /  /    ' then
            ParamByName('nasc').AsDate := StrToDate(mskNascimento.Text);

          if ((edtCodNaturalidade.Text <> trim('')) and (edtCodNaturalidade.Text <> trim('0'))) then
            ParamByName('natu').AsInteger := StrToInt(edtCodNaturalidade.Text);

          if CbxEstadoCivil.ItemIndex <> 0 then
            ParamByName('esta').AsInteger := CbxEstadoCivil.ItemIndex;

          if CbxCor.ItemIndex <> 0 then
            ParamByName('cor').AsInteger := CbxCor.ItemIndex;

          if ((edtCodProfissao.Text <> trim('')) and (edtCodProfissao.Text <> trim('0'))) then
            ParamByName('prof').AsInteger := StrToInt(edtCodProfissao.Text);
        end;


      SQL.SaveToFile('C:\teste.txt');
      ExecSQL();
    end;
end;

end.
