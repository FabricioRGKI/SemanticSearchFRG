% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sem_srch.R
\name{sem_srch}
\alias{sem_srch}
\title{Semantic Search package}
\usage{
sem_srch(file_path)
}
\arguments{
\item{file_path}{path to the data, e.g. "./test_data/Example_negative.txt"}
}
\value{
summary table with counts of "positive" and "negative" cases and
positive/negative ratio
}
\description{
The function runs the whole set of functions in the Semantic Search package.
Accepts as input a .txt file.
}
\examples{
sem_srch("./test_data/Example_negative.txt")

}
