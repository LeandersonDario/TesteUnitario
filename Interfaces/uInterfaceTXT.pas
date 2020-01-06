unit uInterfaceTXT;

interface

uses
  System.Generics.Collections,
  SysUtils,
  classes;

type
  iTxt = interface
  ['{68D0F23F-1D5D-4F30-AAC8-9A81F052E906}']
    function Obter_diretorio_Arquivo_TXT(): string;
    function Buscar_diretorio_Arquivo_TXT(): TStringList;
    function Carrega_Configuracao_Diretorio_Arquivo_TXT(pNomeArquivo : string): TStringList;


end;

implementation

end.
