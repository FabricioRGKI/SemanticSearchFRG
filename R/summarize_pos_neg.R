#' @title Summarize positive and negative string vectors
#'
#' @description
#' The function summarizes the "positive" and "negative" occurrences in the input
#' vector and gives as output the total count per case and the ratio positive:negative.
#' The function uses the output from match_pos_neg() function.
#' It would also work fine with a vector with variable occurrences of the
#' strings "positive" and "negative".
#'
#' @param pos_neg_vector Output form match_pos_neg() function, which is a vector
#' with multiple "positive" and "negative" strings.
#'
#' @return result_df table with counts of "positive" and "negative" cases and
#' positive/negative ratio
#'
#' @examples
#' summarize_pos_neg(match_pos_neg(preproc_text("./test_data/Example_negative.txt")))
#'
# Function to summarize positive and negative string vectors
# Define the function
summarize_pos_neg <- function(pos_neg_vector) {
  # Count the occurrences of "positive" and "negative"
  positive_count <- sum(pos_neg_vector == "positive")
  negative_count <- sum(pos_neg_vector == "negative")

  # Calculate the ratio
  if (negative_count == 0) {
    ratio <- ifelse(positive_count > 0, Inf, NA)  # Handle division by zero
  } else {
    ratio <- positive_count / negative_count
  }

  # Create the result list
  result_df <- data.frame(
    "positive" = positive_count,
    "negative" = negative_count,
    "ratio_pos_neg" = ratio
  )

  return(result_df)
}
