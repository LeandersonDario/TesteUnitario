unit TestuFrmCalculaCustoMedio;
{
 Desenvolvida por Dario projeto Piloto o princípio AAA – Arrange, Act e Assert.

 Principios
 Siga o princípio AAA – Arrange, Act e Assert.
 Arrange – preparar todas as condições necessárias para a execução do teste.
 Act – executar o que será testado.
 Assert – validar as informações depois do teste...
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
    FedtQtde_Estoque_Anterior: TEdit;
    FedtCusto_Médio_Anterior: TEdit;
    FedtQuantidade_comprada: TEdit;
    FedtVl_Reposicao: TEdit;
    FedtQtde_Anterior: TEdit;
    FedtQtd_Comprada: TEdit;
    FedtResultado: TEdit;

  public
    procedure SetUp(); override;
    procedure TearDown(); override;
  published
    [Test]
    procedure Valida_btnCalcularClick();
    procedure Valida_Digitacao_Edit();
    procedure Valida_SetFocus_Tela();
    procedure Valida_TabOrder();

  end;

implementation

procedure TestTfrmCalculaCusto.SetUp();
begin
  FfrmCalculaCusto := TfrmCalculaCusto.Create(Application);
  FfrmCalculaCusto.Show;
  FcalculoCustoMedio := tCalucoCustoMedio.Create;
  ActionDelay := 1000;
end;

procedure TestTfrmCalculaCusto.TearDown();
begin
  FfrmCalculaCusto.Free;
  FfrmCalculaCusto := nil;
end;

procedure TestTfrmCalculaCusto.Valida_Digitacao_Edit();
begin
  ActionDelay := 1000;
  FedtQtde_Estoque_Anterior := FindControl('edtQtde_Estoque_Anterior') as TEdit;
  FedtQtde_Estoque_Anterior.Text := '10';
  CheckEquals('10', FedtQtde_Estoque_Anterior.Text,'Teste de digitação edtQtde_Estoque_Anterior' );

  FedtCusto_Médio_Anterior := FindControl('edtCusto_Médio_Anterior') as TEdit;
  FedtCusto_Médio_Anterior.Text := '10';
  CheckEquals('10', FedtCusto_Médio_Anterior.Text,'Teste de digitação edtCusto_Médio_Anterior.Text' );

  FedtQuantidade_comprada := FindControl('edtQuantidade_comprada') as TEdit;
  FedtQuantidade_comprada.Text := '10';
  CheckEquals('10', FedtQuantidade_comprada.Text,'Teste de digitação edtQuantidade_comprada' );

  FedtVl_Reposicao := FindControl('edtVl_Reposicao') as TEdit;
  FedtVl_Reposicao.Text := '10';
  CheckEquals('10', FedtVl_Reposicao.Text, 'Teste de digitação edtVl_Reposicao');

  FedtQtde_Anterior := FindControl('edtQtde_Anterior') as TEdit;
  FedtQtde_Anterior.Text := '10';
  CheckEquals('10', FedtQtde_Anterior.Text, 'Teste de digitação edtQtde_Anterior');

  FedtQtd_Comprada := FindControl('edtQtd_Comprada') as TEdit;
  EnterTextInto(FedtQtd_Comprada, '10');
  Checkequals('10', FedtQtd_Comprada.Text, 'Teste de digitação edtQtd_Comprada');

end;

procedure TestTfrmCalculaCusto.Valida_btnCalcularClick();
Const
  lResultadoEsperado: string = '10';
begin
  ActionDelay := 1000;
  Click('btnCalcular');
  FedtResultado := FindControl('edtResultado') as TEdit;
  CheckEquals(lResultadoEsperado, FedtResultado.Text, ' Resulta no esperado no edtResultado');

end;

procedure TestTfrmCalculaCusto.Valida_SetFocus_Tela();
begin
  FFailsOnNoChecksExecuted := false;
  SetFocus(FfrmCalculaCusto.btnCalcular);
  Check(not IsFocused(FfrmCalculaCusto.btnCalcular), 'Teste com Falha, pois o SetFocus não está no btnCalcular');
  Check(IsFocused(FfrmCalculaCusto.btnCalcular), ' Teste OK, pois verifica que  de fato o SetFocus não está no btnCalcular');
end;

procedure TestTfrmCalculaCusto.Valida_TabOrder;
begin
  FFailsOnNoChecksExecuted := false;
  Tab(0);
  Check(GetFocused = FfrmCalculaCusto.edtQtde_Estoque_Anterior, 'Parametro Tab esperado edtQtde_Estoque_Anterior é 0');
  Tab(2);
  Check(GetFocused = FfrmCalculaCusto.edtCusto_Médio_Anterior,  'Parametro Tab fora do esperado');
  //Melhora a rotina de tab
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTfrmCalculaCusto.Suite);
end.

