% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cropNC.R
\name{cropNC}
\alias{cropNC}
\title{Crop NetCDF file}
\usage{
cropNC(file, ext, outfile)
}
\arguments{
\item{file}{\code{character}. Filepath, which should lead to NetCDF files.}

\item{ext}{\code{integer}. Extent object.}

\item{outfile}{\code{character}. Output filename of the croped data.}
}
\value{
A NetCDF file containing the croped data.
}
\description{
Crop NetCDF file
}
\examples{
\dontrun{
file <- list.files(paste0(system.file(package="processNC"), "/extdata"), 
                   pattern=".nc", full.names=TRUE)[1]
temp <- tempfile(fileext=".nc")
cropNC(file=file, ext=c(9, 13, 49, 51), outfile=temp)
raster::plot(raster::stack(temp)) 
}
}
