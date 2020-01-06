unit uTXT;

interface

Uses
  classes,
  forms,
  dialogs,
  SysUtils,
  uInterfaceTXT;

type
  tTxt = class(TInterfacedObject, iTxt)

  Public
    //Cria lista com as informações do TXT
    function Obter_diretorio_Arquivo_TXT() : string;
    function Buscar_diretorio_Arquivo_TXT(): TStringList;
    function Carrega_Configuracao_Diretorio_Arquivo_TXT(pNomeArquivo : string): TStringList;

end;

implementation

{ tTxt }

{ Recurso 'ExtractFileDir e ChangeFileExt' da SysUtils, tem que ser adicionado na uses
  retorna apenas a parte do diretório e nome do arquivo
}
function tTxt.Obter_diretorio_Arquivo_TXT() : string;
begin
  Result := ExtractFileDir(Application.ExeName) +'/'+ ChangeFileExt(ExtractFileName(Application.ExeName), '.txt');
end;

{Função carrega e obtem as informações do diretório}
function tTxt.Buscar_diretorio_Arquivo_TXT() : TStringList;
begin
  Result := Carrega_Configuracao_Diretorio_Arquivo_TXT(Obter_diretorio_Arquivo_TXT);
end;

function tTxt.Carrega_Configuracao_Diretorio_Arquivo_TXT(pNomeArquivo: string): TStringList;
var
I :integer;
begin
  Result := TStringList.Create;
  result.LoadFromFile(pNomeArquivo); //LoadFromFile - Preenche a lista com as linhas de texto em um arquivo especificado.

  for I := 0 to result.Count -1 do
  Begin
   Result.ValueFromIndex[i] := TrimLeft(Result.ValueFromIndex[i]);
   Result.ValueFromIndex[i] := TrimRight(Result.ValueFromIndex[i]);

  End;
end;

end.
