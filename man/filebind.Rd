% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filebind.R
\name{filebind}
\alias{filebind}
\title{combine all file under specified directory with pattern into one dataframe}
\usage{
filebind(path, pattern)
}
\arguments{
\item{path}{This is working directory.}

\item{pattern}{The file type need to be maanged.}
}
\description{
combine all file under specified directory with pattern into one dataframe
}
\examples{
output <-  filerbind("/folder","*.csv")
}
