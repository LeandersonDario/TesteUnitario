unit TestuFrmCalculaCustoMedio;
{
 Desenvolvida por Dario projeto Piloto o princ�pio AAA � Arrange, Act e Assert.

 Principios
 Siga o princ�pio AAA � Arrange, Act e Assert.
 Arrange � preparar todas as condi��es necess�rias para a execu��o do teste.
 Act � executar o que ser� testado.
 Assert � validar as informa��es depois do teste.
}

interface

uses
  TestFramework,
  DUnitX.TestFramework,
  classes,
  forms,
  dialogs,
  SysUtils,
  uCalculoCustoMedio,
  uInterfaceCalculoCustoMedio,
  TestExtensions,
  GUITesting,
  StdCtrls,
  uFrmCalculaCustoMedio;

type
  // Test methods for class TfrmCalculaCusto

  TestTfrmCalculaCusto = class(TGUITestCase)
  private
    FcalculoCustoMedio : tCalucoCustoMedio;
    FfrmCalculaCusto: TfrmCalculaCusto;
    // formulario   calcula custo
    edtQtde_Estoque_Anterior: TEdit;
    edtCusto_M�dio_Anterior: TEdit;
    edtQuantidade_comprada: TEdit;
    edtVl_Reposicao: TEdit;
    edtQtde_Anterior: TEdit;
    edtQtd_Comprada: TEdit;
    edtResultado: TEdit;

  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    [Test]
    procedure Valida_btnCalcularClick;
    procedure Valida_Digitacao_Edit;
    procedure Valida_SetFocus_Tela;

  end;

implementation

procedure TestTfrmCalculaCusto.SetUp;
begin
  FfrmCalculaCusto := TfrmCalculaCusto.Create(Application);
  FfrmCalculaCusto.Show;
  FcalculoCustoMedio := tCalucoCustoMedio.Create;
end;

procedure TestTfrmCalculaCusto.TearDown;
begin
  FfrmCalculaCusto.Free;
  FfrmCalculaCusto := nil;
end;

procedure TestTfrmCalculaCusto.Valida_Digitacao_Edit;
begin
  edtQtde_Estoque_Anterior := FindControl('edtQtde_Estoque_Anterior') as TEdit;
  edtQtde_Estoque_Anterior.Text := '10';
  CheckEquals('10', edtQtde_Estoque_Anterior.Text,'Teste de digita��o edtQtde_Estoque_Anterior' );

  edtCusto_M�dio_Anterior := FindControl('edtCusto_M�dio_Anterior') as TEdit;
  edtCusto_M�dio_Anterior.Text := '10';
  CheckEquals('10', edtCusto_M�dio_Anterior.Text,'Teste de digita��o edtCusto_M�dio_Anterior.Text' );

  edtQuantidade_comprada := FindControl('edtQuantidade_comprada') as TEdit;
  edtQuantidade_comprada.Text := '10';
  CheckEquals('10', edtQuantidade_comprada.Text,'Teste de digita��o edtQuantidade_comprada' );

  edtVl_Reposicao := FindControl('edtVl_Reposicao') as TEdit;
  edtVl_Reposicao.Text := '10';
  CheckEquals('10', edtVl_Reposicao.Text, 'Teste de digita��o edtVl_Reposicao');

  edtQtde_Anterior := FindControl('edtQtde_Anterior') as TEdit;
  edtQtde_Anterior.Text := '10';
  CheckEquals('10', edtQtde_Anterior.Text, 'Teste de digita��o edtQtde_Anterior');

  edtQtd_Comprada := FindControl('edtQtd_Comprada') as TEdit;
  EnterTextInto( edtQtd_Comprada, '10');
  Checkequals('10', edtQtd_Comprada.Text, 'Teste de digita��o edtQtd_Comprada');

end;

procedure TestTfrmCalculaCusto.Valida_btnCalcularClick;
var
  Sender: TObject;
begin
  ActionDelay := 600;
  Click('btnCalcular');
  edtResultado := FindControl('edtResultado') as TEdit;
  CheckEquals('10', edtResultado.Text, ' resulta no  edtResultado');
  ActionDelay := 500;
end;

procedure TestTfrmCalculaCusto.Valida_SetFocus_Tela;
begin
  FFailsOnNoChecksExecuted := false;
  SetFocus(FfrmCalculaCusto.btnCalcular);
  Check(not IsFocused(FfrmCalculaCusto.btnCalcular), 'Teste com Falha, pois o SetFocus n�o est� no btnCalcular');
  Check(IsFocused(FfrmCalculaCusto.btnCalcular), ' Teste OK, pois verifica que  de fato o SetFocus n�o est� no btnCalcular');


end;



initialization
  // Register any test cases with the test runner
  RegisterTest(TestTfrmCalculaCusto.Suite);
end.
