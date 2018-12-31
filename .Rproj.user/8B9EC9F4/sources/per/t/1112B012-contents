#' Title
#'
#' @param leilao - Número do leilão - 17 dígitos
#'
#' @return - Dataframe com os seguintes campos:
#' \itemize {
#' \item{decreto_7174}{Decreto 7174}
#' \item{descricao_detalhada_item}{Descrição complementar do item}
#' \item{descricao_item}{Descrição do item}
#' \item{fornecedor_vencedor}{Nome do fornecedor vencedor}
#' \item{margem_preferencial}{Margem Preferencial}
#' \item{menor_lance}{Valor do melhor lance}
#' \item{quantidade_item}{Quantidade do item}
#' \item{situacao_item}{Descrição da situação do item}
#' \item{tratamento_diferenciado}{Tratamento diferenciado}
#' \item{unidade_fornecimento}{Unidade de fornecimento}
#' \item{valor_estimado_item}{Valor estimado do item}
#' \item{valor_negociado}{Valor negociado do item}
#' }
#' @export
#'
#'
#' @examples
consulta_leilao_chars <- function(leilao) {
  if (nchar(trunc(leilao))!=17) {
    stop("Classe tem que ter dezessete dígitos")
  }
  final_url<-paste0("http://compras.dados.gov.br/licitacoes/id/licitacao/",leilao,"/itens.json")
  temp<-jsonlite::fromJSON(final_url)$`_embedded`$itensLicitacao
  return(temp)

}
