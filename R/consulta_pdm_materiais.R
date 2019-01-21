#' Title
#'
#' @param pdm - Codigo PDM - CINCO digitos - se comecar com um zero, colocar entre aspas.
#'
#' @return - Materiais no PDM escolhido
#' @export
#'
#' @examples
consulta_pdm_materiais<-function(pdm) {
  if (nchar(as.character(pdm))!=5) {
    stop("PDM tem que ter cinco digitos")
  }

  Final_url<-paste0("http://compras.dados.gov.br/materiais/v1/materiais?pdm=",pdm)
  temp<-jsonlite::fromJSON(Final_url)
  temp2<-temp[2]$`_embedded`$materiais
  if(length(temp2)>0) {
    temp2<-jsonlite::flatten(temp2,recursive=TRUE)
  }
  return(temp2)
}
