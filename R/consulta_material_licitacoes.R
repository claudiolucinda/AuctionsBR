#' Title
#'
#' @param material - codigo do material -- se comecar com um zero, colocar entre aspas.
#' @param offset - Quantidade de registros ignorados a partir do inicio da lista de resultados ordenando pelo ID. Util para paginar consultas que retornam mais que 500 resultados. Ex.: offset=3000, retorna ate 500 registros ignorando os 3000 primeiros.
#'
#' @return Dataframe com as Licitacoes onde pelo menos um lote era desse produto
#' @export
#'
#' @examples
consulta_material_licitacoes<-function(material, offset=NULL) {
#  if (nchar(as.character(pdm))!=6) {
#    stop("Material tem que ter seis dígitos")
#  }
  if (is.null(offset)) {
    url<-paste0("http://compras.dados.gov.br/licitacoes/v1/licitacoes.json?item_material=",material)
  }
  else {
    url<-paste0("http://compras.dados.gov.br/licitacoes/v1/licitacoes.json?item_material=",material,"&offset=")

  }
  temp<-jsonlite::fromJSON(url)
  temp2<-temp[2]$`_embedded`$licitacoes
  if(length(temp2)>0) {
    temp2<-jsonlite::flatten(temp2,recursive=TRUE)
    temp2$material<-material
  }
  return(temp2)
}
