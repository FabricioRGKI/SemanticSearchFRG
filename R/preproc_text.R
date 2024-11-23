#' @title Text preprocessing
#'
#' @description
#' The function works with english language text files in .txt format. It converts
#' all the letters to lower case, removes punctuation, keeps contractions and
#' returns a vector with all the individual words in the text as string elements.
#'
#' @param file_path path to the data, e.g. ".../yourDataFolder/Example_text.txt"
#'
#' @return Strings vector containing all the individual words found in the input text.
#'
#' @examples
#' preproc_text("~yourDataFolder/Example_text.txt")
#'
# Define the function
preproc_text <- function(file_path) {
  # 1. Load the data from the .txt file
  ts_data <- suppressWarnings(read.delim(file_path, header = FALSE, stringsAsFactors = FALSE))

  # 2. Combine all columns into a single string (concatenate all columns in the row)
  text_data <- paste(ts_data[1, ], collapse = " ")

  # 3. Convert the text to lowercase
  text_data <- tolower(text_data)

  # 4. Remove punctuation, keeping contractions like "can't" and "won't"
  # Regular expression that keeps letters, numbers, spaces, and apostrophes for contractions
  stopwords_pattern <- "[^a-z0-9\\s']"  # Only remove non-alphanumeric characters, except for spaces and apostrophes

  # 5. Split the text into words by space and remove punctuation
  words <- strsplit(text_data, split = stopwords_pattern)

  # 6. Unlist to make the result a vector of words
  words_vector <- unlist(words)

  # 7. Remove any empty elements in the words vector
  words_vector <- words_vector[words_vector != ""]

  return(words_vector)
}
