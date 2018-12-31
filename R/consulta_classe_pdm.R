#' Retorna os PDM de uma determinada classe
#'
#' @param classe - O número da classe (QUATRO dígitos)
#'
#' @return Um Dataframe com todos os PDM dentro de uma classe
#' @export
#'
#' @examples

consulta_classe_pdm<-function(classe) {
  if (nchar(trunc(classe))!=4) {
    stop("Classe tem que ter quatro dígitos")
  }
  Final_url<-paste0("http://compras.dados.gov.br/materiais/v1/pdms?codigo_classe=",classe)
  temp<-jsonlite::fromJSON(Final_url)
  temp2<-temp[2]$`_embedded`$pdms
  if(length(temp2)>0) {
    temp2<-jsonlite::flatten(temp2,recursive=TRUE)
  }
  return(temp2)
}
