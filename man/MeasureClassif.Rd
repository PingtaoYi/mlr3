% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MeasureClassif.R
\name{MeasureClassif}
\alias{MeasureClassif}
\title{Classification Measure}
\format{\link[R6:R6Class]{R6::R6Class} object inheriting from \link{Measure}.}
\description{
This measure specializes \link{Measure} for classification problems.
Predefined measures can be found in the \link[mlr3misc:Dictionary]{mlr3misc::Dictionary} \link{mlr_measures}.
}
\section{Construction}{
\preformatted{m = MeasureClassif$new(id, range, minimize = NA, average = "macro", aggregator = NULL, properties = character(), predict_type = "response",
    predict_sets = "test", task_properties = character(), packages = character(), man = NA_character_)
}

For a description of the arguments, see \link{Measure}.
The \code{task_type} is set to \code{"classif"}.
Possible values for \code{predict_type} are \code{"response"} and \code{"prob"}.
}

\section{Fields}{

See \link{Measure}.
}

\section{Methods}{

See \link{Measure}.
}

\seealso{
Example classification measures: \code{\link[=mlr_measures_classif.ce]{classif.ce}}

Other Measure: 
\code{\link{MeasureRegr}},
\code{\link{Measure}},
\code{\link{mlr_measures}}
}
\concept{Measure}
