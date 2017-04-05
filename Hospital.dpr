program Hospital;

uses
  Forms,
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unDM in 'unDM.pas' {DM: TDataModule},
  unBusca in 'Heranca\unBusca.pas' {frmBusca},
  unCadastros in 'Heranca\unCadastros.pas' {frmCadastros},
  unConstTelas in 'Heranca\unConstTelas.pas',
  unFuncoes in 'Heranca\unFuncoes.pas',
  unTeste in 'Formularios\unTeste.pas' {frmTeste},
  unConsultas in 'Heranca\unConsultas.pas' {frmConsultas},
  unPacientes in 'Formularios\unPacientes.pas' {frmPacientes},
  unManPessoas in 'Formularios\unManPessoas.pas' {frmManPessoas},
  unConstantes in 'Classes\unConstantes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmConsultas, frmConsultas);
  Application.CreateForm(TfrmPacientes, frmPacientes);
  Application.CreateForm(TfrmManPessoas, frmManPessoas);
  Application.Run;
end.
