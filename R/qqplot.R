#'qqplot
#'
#'creates the quantile-quantile plot for a given model
#'
#' @param modIN model from fitted vonBEE
#' @export
#' @importFrom ggplot2  stat_qq_line
#' @importFrom ggplot2  stat_qq
#'
qqplot<-function(modIN){
  df <- modIN$fitted
  df$resid <- log(df$W_hat)-log(df$W_obs)

  plot <- ggplot2::ggplot(df, aes(sample=resid)) +
    stat_qq_line(color = "red",
                 linetype = "dashed")+ theme_bw()+
    stat_qq()
  return(print(plot))
}
