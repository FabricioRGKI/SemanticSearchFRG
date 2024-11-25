#' @title Semantic Search package
#'
#' @description
#' The function runs the whole set of functions in the Semantic Search package.
#' Accepts as input a .txt file.
#'
#' @param file_path path to the data, e.g. "./test_data/Example_negative.txt"
#'
#' @return summary table with counts of "positive" and "negative" cases and
#' positive/negative ratio
#'
#' @examples
#' sem_srch("./test_data/Example_negative.txt")
#'
sem_srch<- function(file_path) {
  # Call the functions in sequence: preproc_text -> match_pos_neg -> summarize_pos_neg
  preprocessed_text <- preproc_text(file_path)
  matched_results <- match_pos_neg(preprocessed_text)
  summary <- summarize_pos_neg(matched_results)
  return(summary)
}
