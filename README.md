This is a repository dedicated to the package Semantic Search in R, The package is
    intended to be used for finding and summarizing negative
    and positive words in a text document based in two lists of positive or negative
    words stored in the data package.
    The user provides the path of the document, an english language text file in
    .txt format, to the preproc_text() function. It separates words in the document
    and store them individually in a string vector.
    match_pos_neg() uses the output from the first function as first argument. It
    compares the words in the input data with the positive and negative lists and
    return a vector with the respective occurences per type.
    Lastly, summarize_pos_neg() uses the output from the second function as unique
    argument and returns the final summary table with total counts per type and
    positive/negative ratio.
    sem_srch() runs all the functions requiring only the file path from the user.
