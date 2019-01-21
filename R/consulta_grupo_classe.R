#' Retornando as classes para um determinado grupo
#'
#' @param grupo - codigo de grupo de produtos (DOIS digitos) - se comecar com um zero, colocar entre aspas.
#'
#' @return Dataframe com a lista de classes dentro de um determinado produto
#' @export
#'
#' @examples
#'
consulta_grupo_classe<-function(grupo) {
  if (nchar(as.character(grupo))!=2) {
    stop("Classe tem que ter dois dígitos")
  }

  final_url<-paste0("http://compras.dados.gov.br/materiais/v1/classes.json?codigo_grupo=",grupo)
  temp<-jsonlite::fromJSON(final_url)
  temp2<-temp[2]$`_embedded`$classes
  if(length(temp2)>0) {
    temp2<-jsonlite::flatten(temp2,recursive=TRUE)
  }
  return(temp2)

}
