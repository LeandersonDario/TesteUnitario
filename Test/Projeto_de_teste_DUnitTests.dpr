program Projeto_de_teste_DUnitTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestuFrmCalculaCustoMedio in 'GuiTesteFormulario\TestuFrmCalculaCustoMedio.pas',
  uFrmCalculaCustoMedio in '..\TesteFomulario\uFrmCalculaCustoMedio.pas',
  uCalculoCustoMedio in '..\Classes\uCalculoCustoMedio.pas',
  uInterfaceCalculoCustoMedio in '..\Interfaces\uInterfaceCalculoCustoMedio.pas' {/TestuFrmCalculaCustoMedio in 'TestuFrmCalculaCustoMedio.pas';},
  TestClasseCalculoCustoMedio in 'TesteClasse\TestClasseCalculoCustoMedio.pas',
  uTXT in '..\Classes\uTXT.pas',
  uInterfaceTXT in '..\Interfaces\uInterfaceTXT.pas';

{*.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

