#' @title Make semantic search against positive and negative word vectors
#' @description
#' The function loops through each word in the input vector and compares it with
#' predetermined vectors with semantically labeled as positive or negative words
#' producing/or not matches that are registered as "positive" or "negative" elements
#' in the output vector. words_vector could come from the preproc_text()
#' function output or can be a vector with english words as
#' single elements. positive_words and negative_words are internal
#' package vector data that are called by their names.
#'
#' @param words_vector Output form preproc_text() function, a vector containing
#' strings as elements.
#' @param positive_words Internal package vector data that is called by its name.
#' @param negative_words Internal package vector data that is called by its name.
#'
#' @return pos_neg_vector which is a string vector for each positive and negative word matches
#'
#' @examples
#' match_pos_neg(words_vector, positive_words, negative_words)
#'
# Function to match words vector with positive and negative word vectors
# Define the function
match_pos_neg <- function(words_vector, positive_words, negative_words) {

  # Initialize a vector to store results
  results <- character(length(words_vector))

  # Loop through each word in the word_vec
  for (i in seq_along(words_vector)) {
    word <- words_vector[i]

    # Initialize a flag to track if a match is found
    match_found <- FALSE

    # Check if the word matches any positive word with suffix handling
    for (p_word in positive_words) {
      if (grepl(paste0("^", gsub("\\*", ".*", p_word), "$"), word)) {
        results[i] <- "positive"
        match_found <- TRUE
        break  # Exit loop once we find a positive match
      }
    }

    # If no match found in positive, check for negative
    if (!match_found) {
      for (n_word in negative_words) {
        if (grepl(paste0("^", gsub("\\*", ".*", n_word), "$"), word)) {
          results[i] <- "negative"
          match_found <- TRUE
          break  # Exit loop once we find a negative match
        }
      }
    }
  }

  #Remove any empty elements in the words vector
  pos_neg_vector <- results[results != ""]
  return(pos_neg_vector)
}

