#' @title Selected Features Measure
#'
#' @usage NULL
#' @name mlr_measures_selected_features
#' @format [R6::R6Class()] inheriting from [Measure].
#' @include Measure.R
#'
#' @description
#' Measures the number of selected features by extracting it from learners with property `"selected_features"`.
#' If the learner does not support this, `NA` is returned.
#'
#' This measure requires the [Task] and the [Learner] for scoring.
#'
#' @section Construction:
#' ```
#' MeasureSelectedFeatures$new(normalize = FALSE)
#' mlr_measures$get("selected_features")
#' msr("selected_features")
#' ```
#'
#' * `normalize` :: `logical(1)`\cr
#' If `normalize` is set to `TRUE`, divides the number of features by the total number of features.
#'
#' @section Meta Information:
#' * Type: `NA`
#' * Range: \eqn{[0, \infty)}{[0, Inf)}
#' * Minimize: `TRUE`
#' * Required prediction: 'response'
#'
#' @template seealso_measure
#' @export
MeasureSelectedFeatures = R6Class("MeasureSelectedFeatures",
  inherit = Measure,
  public = list(
    normalize = NULL,

    initialize = function(normalize = FALSE) {
      super$initialize(
        id = "selected_features",
        task_type = NA_character_,
        properties = c("requires_task", "requires_learner"),
        predict_type = "response",
        range = c(0, Inf),
        minimize = TRUE,
        man = "mlr3::mlr_measures_selected_features"
      )
      self$normalize = assert_flag(normalize)
    },

    score_internal = function(prediction, task, learner, ...) {
      if ("selected_features" %nin% learner$properties) {
        return(NA_integer_)
      }
      n = length(learner$selected_features())
      if (self$normalize) {
        n = n / length(task$feature_names)
      }
      n
    }
  )
)

#' @include mlr_measures.R
mlr_measures$add("selected_features", MeasureSelectedFeatures)
