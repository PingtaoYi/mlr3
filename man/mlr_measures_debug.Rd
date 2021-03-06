% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MeasureDebug.R
\name{mlr_measures_debug}
\alias{mlr_measures_debug}
\alias{MeasureDebug}
\title{Debug Measure}
\format{\code{\link[R6:R6Class]{R6::R6Class()}} inheriting from \link{Measure}.}
\description{
This measure returns the number of observations in the \link{Prediction} object.
Its main purpose is debugging.
}
\section{Construction}{
\preformatted{MeasureDebug$new(na_ratio = 0)
mlr_measures$get("debug")
msr("debug")
}
\itemize{
\item \code{na_ratio} :: \code{numeric(1)}\cr
Ratio of scores which should be \code{NA}.
Default is 0.
}
}

\section{Fields}{

\itemize{
\item \code{na_ratio} :: \code{numeric(1)}.
}
}

\section{Meta Information}{

\itemize{
\item Type: \code{NA}
\item Range: \eqn{[0, \infty)}{[0, Inf)}
\item Minimize: \code{NA}
\item Required prediction: 'response'
}
}

\examples{
task = tsk("wine")
learner = lrn("classif.featureless")
measure = msr("debug")
rr = resample(task, learner, rsmp("cv", folds = 3))
rr$score(measure)
}
\seealso{
\link[mlr3misc:Dictionary]{Dictionary} of \link[=Measure]{Measures}: \link{mlr_measures}

\code{as.data.table(mlr_measures)} for a complete table of all (also dynamically created) \link{Measure} implementations.
}
