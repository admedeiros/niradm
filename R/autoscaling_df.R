#' @title Autoscaling 
#' @description funcao para preprocessamento dos espectros
#' @param df Data Frame
#' @usage autoscaling(df)
#' @examples
#' data(nir_seed)
#' df<-autoscaling_df(nir_seed)
#' a<-plotmean_df(nir_seed)
#' b<-plotmean_df(df)
#' library(ggpubr)
#' ggarrange(a, b,
#' labels = c("A", "B"),
#' ncol = 2, nrow = 1)
#' @export

autoscaling_df<-function(df){
  if (! is.data.frame (df)) {stop ("must be a dataframe")}
  if (is.numeric(df[,ncol(df)])) {df<-scale(df)}
  df[,-ncol(df)]<-scale(df[,-ncol(df)])
  
  return(as.data.frame(df))
}


