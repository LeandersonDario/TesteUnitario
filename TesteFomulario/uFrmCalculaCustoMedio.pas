unit uFrmCalculaCustoMedio;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  uCalculoCustoMedio;

type
  TfrmCalculaCusto = class(TForm)
    lblQtde_Estoque_Anterior: TLabel;
    lblCusto_M�dio_Anterior: TLabel;
    lblQuantidade_comprada: TLabel;
    lblVl_Reposicao: TLabel;
    lblQtde_Anterior: TLabel;
    lblQtd_Comprada: TLabel;
    edtQtde_Estoque_Anterior: TEdit;
    edtCusto_M�dio_Anterior: TEdit;
    edtQuantidade_comprada: TEdit;
    edtVl_Reposicao: TEdit;
    edtQtde_Anterior: TEdit;
    edtQtd_Comprada: TEdit;
    pnlTela: TPanel;
    lblResultado: TLabel;
    btnCalcular: TButton;
    edtResultado: TEdit;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculaCusto: TfrmCalculaCusto;

implementation

{$R *.dfm}

procedure TfrmCalculaCusto.btnCalcularClick(Sender: TObject);
var
  lCalculoCustoMedio : tCalucoCustoMedio;
  resultado : double;
begin
  // Adicionado somente para teste e n�o foi aplicado valida��o de campos vazio ou nulo.
  edtQtde_Estoque_Anterior.Text := '10';
  edtCusto_M�dio_Anterior.Text := '10';
  edtQuantidade_comprada.Text:= '10';
  edtVl_Reposicao.Text := '10';
  edtQtde_Anterior.Text := '10';
  edtQtd_Comprada.Text:= '10';

  lCalculoCustoMedio := tCalucoCustoMedio.create;
  resultado := lCalculoCustoMedio.Calcula_custo_medio(StrToFloat(edtQtde_Estoque_Anterior.Text),
                                                                    StrToFloat(edtCusto_M�dio_Anterior.Text),
                                                                    StrToFloat(edtQuantidade_comprada.Text),
                                                                    StrToFloat(edtVl_Reposicao.Text),
                                                                    StrToFloat(edtQtde_Anterior.Text),
                                                                    StrToFloat(edtQtd_Comprada.Text));
 edtResultado.Text :=  FloatToStr(resultado);
end;

end.
