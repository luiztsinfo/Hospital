unit unCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, FMTBcd, SqlExpr, DB, Provider,
  DBClient, Mask, ComCtrls;

type
  TfrmCadastros = class(TForm)
    PnTitulo: TPanel;
    PnDados: TPanel;
    PnAcoes: TPanel;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    cdsAux: TClientDataSet;
    cdsPadrao: TClientDataSet;
    dspAux: TDataSetProvider;
    dspPadrao: TDataSetProvider;
    dsAux: TDataSource;
    dsPadrao: TDataSource;
    qryAux: TSQLQuery;
    qryPadrao: TSQLQuery;
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public

    iTelaChamando: integer;
    bFecharTela: boolean; // em caso de erro na grava��o n�o fechar a tela, ent�o informar true
    function  VerificaSalva: Boolean; dynamic;
    procedure Incluir; dynamic; abstract;
    procedure Alterar; dynamic; abstract;
    procedure Gravar; dynamic;
    procedure Limpa; dynamic;
  end;

var
  frmCadastros: TfrmCadastros;

implementation

uses unDM, unConsultas, unPrincipal;
 
{$R *.dfm}

procedure TfrmCadastros.BtnGravarClick(Sender: TObject);
begin
  Gravar;

  if bFecharTela = false then
    Close;
end;

procedure TfrmCadastros.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F5 then
    BtnGravarClick(self);

  if key = VK_ESCAPE then
    BtnCancelarClick(self);
end;

procedure TfrmCadastros.limpa;
var
  n : Integer;
  nTotComponentes : Integer;
begin
  nTotComponentes :=  Self.ComponentCount;
    for n := 0 to nTotComponentes-1 do
    begin
      if(Self.Components[n] is TEdit)then
      begin
        (Self.Components[n] as TEdit).Clear;
      end
      else
      if(Self.Components[n] is TMemo)then
      begin
        (Self.Components[n] as TMemo).Clear;
      end
      else
      if(Self.Components[n] is TMaskEdit)then
      begin
        (Self.Components[n] as TMaskEdit).Clear
      end
      else
      if (Self.Components[n] is TComboBox)then
      begin
        (Self.Components[n] as TComboBox).ItemIndex := 0;
        (Self.Components[n] as TComboBox).Text := '';
      end
      else
      if (Self.Components[n] is TRichEdit) then
      begin
        (Self.Components[n] as TRichEdit).Lines.Text := '';
      end;

      end;
end;

procedure TfrmCadastros.FormShow(Sender: TObject);
begin
  if frmPrincipal.iOperacao = 1 then
  begin
    limpa;
  end;
end;

procedure TfrmCadastros.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmCadastros.Gravar;
begin
  if not(verificaSalva) then
  begin
    if frmPrincipal.iOperacao = 1 then
    try
      incluir;
    except
      MessageDlg('Erro ao tentar incluir o registro!',mtError,[mbOk],0);
    end;

    if frmPrincipal.iOperacao = 2 then
    try
      alterar;
    except
      MessageDlg('Erro ao tentar alterar o registro!',mtError,[mbOk],0);
    end;
    end;
end;

function TfrmCadastros.verificaSalva: Boolean;
var
  n: Integer;
  nTotComponentes: integer;
begin

  Result := false;

  nTotComponentes := Self.ComponentCount;

  for n := 0 to ComponentCount - 1 do
    begin
    if (Self.Components[n].ClassType = TEdit) then
      if (TEdit(Self.Components[n]).Text = trim('')) and (TEdit(Self.Components[n]).Tag = 1) then
      begin
        Result := true;
        TEdit(Self.Components[n]).SetFocus;
        Exit;
      end;

      if (Self.Components[n].ClassType = TComboBox) then
        if (TComboBox(Self.Components[n]).Text = trim('')) and (TComboBox(Self.Components[n]).Tag = 1) then
        begin
          Result := true;
          TComboBox(Self.Components[n]).SetFocus;
          Exit;
        end;

      if (Self.Components[n].ClassType = TMemo) then
        if (TMemo(Self.Components[n]).Text = trim('')) and (TMemo(Self.Components[n]).Tag = 1) then
        begin
          Result := true;
          TMemo(Self.Components[n]).SetFocus;
          Exit;
        end;

      if (Self.Components[n].ClassType = TMaskEdit) then
        if ((TMaskEdit(Self.Components[n]).Text = trim('')) or (TMaskEdit(Self.Components[n]).Text = '(  )     -    ') or (TMaskEdit(Self.Components[n]).Text = '  .   -   ') or (TMaskEdit(Self.Components[n]).Text = '  /  /    ')) and (TMaskEdit(Self.Components[n]).Tag = 1) then
        begin
          Result := True;
          TMaskEdit(Self.Components[n]).SetFocus;
          Exit;
        end;
    end;
end;

end.
