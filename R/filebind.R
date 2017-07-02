#'
#' combine all file under specified directory with pattern into one dataframe
#' @param path This is working directory.
#' @param pattern The file type need to be maanged.
#' @keywords
#' @export
#' @examples
#' output <-  filerbind("/folder","*.csv")
# should specify a output dataframe when function called
filebind <- function(path,pattern){
  temp= list.files(path=path,pattern=pattern)
  datalist = list()
  setwd(path)
  for (i in 1:length(temp)) {
    dat <- read.csv(temp[i],sep="\t",header=T)
    dat$date <- regmatches(temp[i],regexpr("[0-9]+",temp[i]))
    datalist[[i]] <- dat
  }
  output <- do.call(rbind,datalist)
}


