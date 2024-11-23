This is a repository dedicated to the package Semantic Search in R, which is intended to be used for finding and summarizing negative
    and positive words in a text document based in two lists of positive or negative words
    stored in the data package. It takes an english language text file in .txt format. 
    The user provides the path of the document to the preproc_text() function. It will
    separate words in the document and store individually in a string vector. Then, the
    user takes the output from the first function and uses it as first argument for the
    match_pos_neg() function. It will compare the words in the input data with the positive
    and negative lists and return a vector with the respective occurences per type.
    Lastly, the user takes the output from the second function and uses it as unique
    argument for the summarize_pos_neg() function, which will return the final summary
    table with total counts per type and positive/negative ratio.
