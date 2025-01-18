#'compile_model
#'
#' compile or recompile from the original .cpp file
#'
#' @param src_dir source of the model "src/TMB"
#' @param recompile T/F recompile the model
#' @param model model version to compile, default is "VonBEEv1"
#' @export


compile_model <- function(src_dir = "src/TMB",
                          recompile =T,
                          model = "VonBEEv1" ){
  tmpdir <- getwd()
  setwd(src_dir)
  TMB::compile(paste0(model,".cpp") )
  dyn.load(dynlib(model))
  setwd(tmpdir)

}
