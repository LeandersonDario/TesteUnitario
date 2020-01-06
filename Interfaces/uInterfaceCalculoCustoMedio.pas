unit uInterfaceCalculoCustoMedio;

interface
uses
  System.Generics.Collections,
  SysUtils,
  classes;

type
  iCalculoCustoMedio = interface
  ['{CF6ACFDF-1BAA-4F48-B319-3AD749523321}']
    function Calcula_custo_medio(pQtde_Estoque_Anterior, pCusto_Medio_Anterior, pQuantidade_comprada, pVl_Reposicao, pQtde_Anterior, pQtd_Comprada : Double)
: double;
end;

implementation

end.
