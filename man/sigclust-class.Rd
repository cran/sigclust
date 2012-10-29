\name{sigclust-class}
\docType{class}
\alias{sigclust-class}
\title{Class sigclust}
\description{
  The class sigclust is the output from the function
  \code{\link{sigclust}}. It is also the input to the plot function
  \code{\link{plot-methods}}.
}
\section{Slots}{
  \describe{
    \item{\code{raw.data}:}{raw data matrix.}
    \item{\code{veigval}:}{vector of sample eigen values.}
    \item{\code{vsimeigval}:}{vector of eigen values used in simulation}
    \item{\code{simbackvar}:}{background variance fit from the data.}
    \item{\code{icovest}:}{covariance estimation type.}
    \item{\code{nsim}:}{number of simulated Gaussian samples.}
    \item{\code{simcindex}:}{vector of cluster indices based on nsim
      simulated data sets.}
    \item{\code{pval}:}{simulated sigclust p-value based on empiriccal
      quantiles.}
    \item{\code{pvalnorm}:}{simulated sigclust p-value based on Gaussian
      quantiles.}
    \item{\code{xcindex}:}{cluster index based on given data set.}
  }
}

\author{Hanwen Huang: \email{hanwenh@email.unc.edu}; Yufeng Liu:
  \email{yfliu@email.unc.edu}; J. S. Marron:
  \email{marron@email.unc.edu}
}

\seealso{\code{\link{sigclust}}, \code{\link{plot-methods}}.}

\keyword{methods}

