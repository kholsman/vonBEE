#' recompiles the model
#'
#'
#' @param model (without the '.cpp'); default is VonBTv1
#'
#' @return list
#'
#' @examples
#' #recompile(model="VonBEEv1")
#' @export
recompile<-function(model="VonBTv1"){
  if(file.exists( paste0(model,'.so')) )
    file.remove( paste0(model,'.so'))
  if(file.exists( paste0(model,'.o')) )
    file.remove( paste0(model,'.o'))

  TMB::compile( paste0(model,'.cpp'))
  # file.copy(from =paste0(model,'.dll'),to =paste0("../",model,'.dll'))
  # file.remove(paste0(model,'.dll'))
}
