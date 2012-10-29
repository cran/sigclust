\name{plot-methods}
\docType{methods}
\alias{plot.sigclust}
\alias{plot-methods}
\alias{plot,sigclust-method}
\alias{plot,sigclust,missing-method}

\title{SigClust plot}
\description{ Diagnostics and p-value plots from a
  sigclust object.  }
\usage{
\S4method{plot}{sigclust,missing}(x,y,arg="all",...)
}
\arguments{
  \item{x}{An object of class \code{sigclust}. }
  \item{y}{not used}
  \item{arg}{Type of the individual plot: "background": make background
    standard deviation diagnostic plots. These plots contain the raw data
    points as well as the corresponding density plots using kernel and
    robust Gaussian fits; "qq": the QQ plot assessing the quality of robust
    fit of a Gaussian distribution; "diag": make a null distribution
    covariance estimation diagnostic plot; "pvalue": make a clustering
    significance pvalue plot; "all": make all above plots (default).}
  \item{\dots}{further arguments for \code{\link{plot}}.}
}
\details{
  SigClust diagnostic plots are suggested to monitor the
  performance of the SigClust method for a given dataset.
}

\references{ Liu, Yufeng, Hayes, David Neil, Nobel, Andrew and Marron,
  J. S, 2008, \emph{Statistical Significance of Clustering for
    High-Dimension, Low-Sample Size Data}, \emph{Journal of the American
    Statistical Association} \bold{103}(483)
  1281--1293.
  See also the vignette included with this package.
}
\author{ Hanwen Huang: \email{hanwenh@email.unc.edu}; Yufeng Liu:
  \email{yfliu@email.unc.edu}; J. S. Marron: \email{marron@email.unc.edu}
}
\seealso{\code{\link{sigclust}}.}
\examples{ 
## Simulate a dataset from a collection of mixtures of two
## multivariate Gaussian distributions with different means.

mu <- 5
n <- 30
p <- 500
dat <- matrix(rnorm(p*2*n),2*n,p)
dat[1:n,1] <- dat[1:n,1]+mu
dat[(n+1):(2*n),1] <- dat[(n+1):(2*n),1]-mu

nsim <- 1000
nrep <- 1
icovest <- 3
pvalue <- sigclust(dat,nsim=nsim,nrep=nrep,labflag=0,icovest=icovest)
#sigclust plot
plot(pvalue)
}
\keyword{ hplot }

