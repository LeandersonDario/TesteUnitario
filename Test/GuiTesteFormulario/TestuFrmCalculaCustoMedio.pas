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
    FedtQtde_Estoque_Anterior: TEdit;
    FedtCusto_M�dio_Anterior: TEdit;
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
  CheckEquals('10', FedtQtde_Estoque_Anterior.Text,'Teste de digita��o edtQtde_Estoque_Anterior' );

  FedtCusto_M�dio_Anterior := FindControl('edtCusto_M�dio_Anterior') as TEdit;
  FedtCusto_M�dio_Anterior.Text := '10';
  CheckEquals('10', FedtCusto_M�dio_Anterior.Text,'Teste de digita��o edtCusto_M�dio_Anterior.Text' );

  FedtQuantidade_comprada := FindControl('edtQuantidade_comprada') as TEdit;
  FedtQuantidade_comprada.Text := '10';
  CheckEquals('10', FedtQuantidade_comprada.Text,'Teste de digita��o edtQuantidade_comprada' );

  FedtVl_Reposicao := FindControl('edtVl_Reposicao') as TEdit;
  FedtVl_Reposicao.Text := '10';
  CheckEquals('10', FedtVl_Reposicao.Text, 'Teste de digita��o edtVl_Reposicao');

  FedtQtde_Anterior := FindControl('edtQtde_Anterior') as TEdit;
  FedtQtde_Anterior.Text := '10';
  CheckEquals('10', FedtQtde_Anterior.Text, 'Teste de digita��o edtQtde_Anterior');

  FedtQtd_Comprada := FindControl('edtQtd_Comprada') as TEdit;
  EnterTextInto(FedtQtd_Comprada, '10');
  Checkequals('10', FedtQtd_Comprada.Text, 'Teste de digita��o edtQtd_Comprada');

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
  Check(not IsFocused(FfrmCalculaCusto.btnCalcular), 'Teste com Falha, pois o SetFocus n�o est� no btnCalcular');
  Check(IsFocused(FfrmCalculaCusto.btnCalcular), ' Teste OK, pois verifica que  de fato o SetFocus n�o est� no btnCalcular');
end;

procedure TestTfrmCalculaCusto.Valida_TabOrder;
begin
  FFailsOnNoChecksExecuted := false;
  Tab(0);
  Check(GetFocused = FfrmCalculaCusto.edtQtde_Estoque_Anterior, 'Parametro Tab esperado edtQtde_Estoque_Anterior � 0');
  Tab(2);
  Check(GetFocused = FfrmCalculaCusto.edtCusto_M�dio_Anterior,  'Parametro Tab fora do esperado');
  //Melhora a rotina de tab
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTfrmCalculaCusto.Suite);
end.

