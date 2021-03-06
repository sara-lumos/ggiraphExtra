% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggCor.R
\name{ggCor}
\alias{ggCor}
\title{Draw a heatmap of correlation test}
\usage{
ggCor(data, what = 1, label = 0, colors = NULL, title = TRUE,
  mode = 2, digits = 2, interactive = FALSE, yreverse = TRUE,
  xangle = 45, yangle = 0, use.label = FALSE, ...)
}
\arguments{
\item{data}{A data.frame}

\item{what}{if 1, correlation, if 2, partial correlation, if 3, semi-partial correlation}

\item{label}{if 0, no label(default), if 1, use r value as label, if 2, use r value with significant mark as label}

\item{colors}{colors for low, mid and high correlation values}

\item{title}{if true, add title to the heatmap}

\item{mode}{1 or 2}

\item{digits}{The number of decimal place}

\item{interactive}{A logical value. If TRUE, an interactive plot will be returned}

\item{yreverse}{If true, reverse y axis}

\item{xangle}{x-axis text angle}

\item{yangle}{y-axis text angle}

\item{use.label}{Logical whether or not use label in case of labelled data}

\item{...}{further arguments to be passed to cor.test}
}
\description{
Draw a heatmap of correlation test
}
\examples{
require(mycor)
require(ggplot2)
require(ggiraph)
require(ppcor)
ggCor(iris,digits=3,label=3)
ggCor(iris,what=3,digits=3,label=3)
ggCor(iris,label=3,interactive=TRUE)
ggCor(mtcars,interactive=TRUE)
ggCor(mtcars,mode=2,interactive=TRUE)
ggCor(iris,method="pearson",interactive=TRUE)
}
