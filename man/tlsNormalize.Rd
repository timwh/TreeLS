% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{tlsNormalize}
\alias{tlsNormalize}
\title{Normalize a TLS point cloud}
\usage{
tlsNormalize(las, min_res = 0.25, keep_ground = TRUE)
}
\arguments{
\item{las}{\code{\link[lidR:LAS]{LAS}} object.}

\item{min_res}{\code{numeric} - minimum resolution of the DTM used for normalization, in point cloud units.}

\item{keep_ground}{\code{logical} - if \code{FALSE} removes the ground points from the output.}
}
\value{
\code{\link[lidR:LAS]{LAS}} object.
}
\description{
Fast normalization of TLS point clouds based on a Digital Terrain Model (DTM) of the ground points. If the input's ground points are not yet classified, the \code{\link[lidR:csf]{csf}} algorithm is applied internally.
}
\examples{
file = system.file("extdata", "pine_plot.laz", package="TreeLS")
tls = readTLS(file)
plot(tls)
rgl::axes3d(col='white')

tls = tlsNormalize(tls, 0.5, FALSE)
plot(tls)
rgl::axes3d(col='white')
}
