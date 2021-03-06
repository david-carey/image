% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkg.R
\name{image_denoise_nlmeans}
\alias{image_denoise_nlmeans}
\title{Image Denoising using Non-Local Means}
\usage{
image_denoise_nlmeans(image, sigma = 10, win = 1, bloc = 10,
  filter = 0.4)
}
\arguments{
\item{image}{an object of class \code{magick-image} in 8-bit sRGB colorspace}

\item{sigma}{sigma noise parameter (type numeric)}

\item{win}{Half size of comparison window (type integer)}

\item{bloc}{Half size of research window (type integer)}

\item{filter}{filtering parameter (type numeric)}
}
\value{
an object of class \code{magick-image} with the denoised image, 
in the comments the algorithm arguments sigma, filter, window and bloc are provided.
}
\description{
Image Denoising using Non-Local Means
}
\note{
Function is provided for scientific and education only. 
May be linked to the EP patent 1,749,278 by A. Buades, T. Coll and J.M. Morel.
}
\examples{
library(magick)
f <- system.file(package = "image.DenoiseNLMeans", "extdata", "img_garden.png")
img <- image_read(f)
img
denoised <- image_denoise_nlmeans(img)
denoised
x <- image_noise(img, noisetype = "Poisson")
x
denoised <- image_denoise_nlmeans(x, sigma = 40)
denoised
denoised <- image_denoise_nlmeans(x, sigma = 10, win = 2, bloc = 10, filter = 0.4)
denoised
image_comment(denoised)
}
\references{
For details on the algorithm, check the paper http://www.ipol.im/pub/art/2011/bcm_nlm.
}
