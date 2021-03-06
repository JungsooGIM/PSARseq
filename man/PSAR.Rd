% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PSARseq_version03.R
\name{PSAR}
\alias{PSAR}
\title{One-step function performing differential expression analysis adjusting population stratification}
\usage{
PSAR(Obj, grps, n.factor = 2)
}
\arguments{
\item{Obj}{An input object: SeqExpressionSet (EDASeq), DGEList (edgeR) or raw count in "matrix" class are available}

\item{grps}{A vector or data.frame indicating the variable to be tested (in case of data.frame, the first column should be the variable to be tested)}

\item{n.factor}{The number of factors in non-negative factorization (default = 2)}
}
\value{
\item{resOut}{a list of including two variables: dgeset (DGEList) and fit (glmFit)}
}
\description{
One-step function performing differential expression analysis adjusting population stratification
}
\details{
See the referenced paper.
}
\examples{
cnts <- matrix(rnbinom(1000, mu=10, size=1), nrow=100)
grps <- factor(rep(c("a", "b"), each=5))
res <- PSAR(cnts, grps, n.factor=1)
head(DEGs(res))
}
\references{
Jungsoo Gim and Christoph Lange, PSARseq (2017)
}
\author{
Jungsoo Gim
}
