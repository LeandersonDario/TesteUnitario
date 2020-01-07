unit uCalculoCustoMedio;

interface

Uses
  classes,
  forms,
  dialogs,
  SysUtils,
  uInterfaceCalculoCustoMedio;

type
  tCalucoCustoMedio = class(TInterfacedObject, iCalculoCustoMedio)

  private
   FQtde_Estoque_Anterior : double;
   FCusto_Medio_Anterior : double;
   FQuantidade_comprada : double;
   FVl_Reposicao :  double;
   FQtde_Anterior : double;
   FQtd_Comprada : double;


  Public
   property Qtde_Estoque_Anterior : double read  FQtde_Estoque_Anterior write FQtde_Estoque_Anterior;
   property Custo_Medio_Anterior : double read  FCusto_Medio_Anterior write FCusto_Medio_Anterior;
   property Quantidade_comprada : double read  FQuantidade_comprada write FQuantidade_comprada;
   property Vl_Reposicao : double read  FVl_Reposicao write FVl_Reposicao;
   property Qtde_Anterior : double read  FQtde_Anterior write FQtde_Anterior;
   property Qtd_Comprada : double read  FQtd_Comprada write FQtd_Comprada;

   constructor create();
   destructor Destroy(); override;

   function Calcula_custo_medio(pQtde_Estoque_Anterior, pCusto_Medio_Anterior, pQuantidade_comprada, pVl_Reposicao, pQtde_Anterior, pQtd_Comprada : Double) : double;
end;

implementation


{ tCalucoCustoMedio }
constructor tCalucoCustoMedio.create();
begin
   Qtde_Estoque_Anterior := 0;
   Custo_Medio_Anterior := 0;
   Quantidade_comprada := 0;
   Vl_Reposicao := 0;
   Qtde_Anterior := 0;
   Qtd_Comprada:= 0;

end;

destructor tCalucoCustoMedio.Destroy();
begin

  inherited;
end;


function tCalucoCustoMedio.Calcula_custo_medio(pQtde_Estoque_Anterior, pCusto_Medio_Anterior, pQuantidade_comprada, pVl_Reposicao, pQtde_Anterior, pQtd_Comprada : Double) : double;
begin
   Qtde_Estoque_Anterior := pQtde_Estoque_Anterior;
   Custo_Medio_Anterior := pCusto_Medio_Anterior;
   Quantidade_comprada := pQuantidade_comprada;
   Vl_Reposicao := pVl_Reposicao;
   Qtde_Anterior := pQtde_Anterior;
   Qtd_Comprada := pQtd_Comprada;

   Result:= (Qtde_Estoque_Anterior * Custo_Medio_Anterior + Quantidade_comprada * Vl_Reposicao) /( Qtde_Anterior + Qtd_Comprada)
end;

end.
