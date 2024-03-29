% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pof_labeller.R
\name{pof_labeller}
\alias{pof_labeller}
\title{Label categorical variables from POF microdata}
\usage{
pof_labeller(data_pof, dictionary.file)
}
\arguments{
\item{data_pof}{A tibble of POF microdata read with \code{read_pof} function.}

\item{dictionary.file}{The dictionary file for selected survey available on official website: (select the dictionary and input zip file, according to the appropriated select the dictionary and input zip file, according to the appropriated year, microdata folder and then, inside, documentation) - \url{https://ftp.ibge.gov.br/Orcamentos_Familiares/}.}
}
\value{
A tibble with the data provided from POF survey and its categorical variables as factors with related labels.
}
\description{
This function labels categorical variables from POF microdata.
}
\note{
For more information, visit the survey official website <\url{https://www.ibge.gov.br/estatisticas/sociais/trabalho/9050-pesquisa-de-orcamentos-familiares.html?=&t=o-que-e}> and consult the other functions of this package, described below.
}
\examples{
\donttest{
# Using data read from disk
input_path <- pof_example(path="input_example.txt")
data_path <- pof_example(path="exampledata.txt")
dictionary.path <- pof_example(path="dictionaryexample.xls")
pof.df <- read_pof(microdata=data_path, input_txt=input_path, vars=c("V0407","V0408"))
pof.df <- pof_labeller(data_pof=pof.df, dictionary.file=dictionary.path)}
\donttest{
# Downloading data
pof.df2 <- get_pof(year=2017, selected=FALSE, anthropometry=FALSE, vars=c("V0407","V0408"),
                       labels=FALSE, deflator=FALSE, design=FALSE, savedir=tempdir())
dictionary.path2 <- pof_example(path="dictionaryexample.xls")
pof.df2 <- pof_labeller(data_pof=pof.df2, dictionary.file=dictionary.path2)}
}
\seealso{
\link[POFIBGE]{get_pof} for downloading, labeling, deflating and creating survey design object for POF microdata.\cr \link[POFIBGE]{read_pof} for reading POF microdata.\cr \link[POFIBGE]{pof_deflator} for adding deflator variables to POF microdata.\cr \link[POFIBGE]{pof_design} for creating POF survey design object.\cr \link[POFIBGE]{pof_example} for getting the path of the POF toy example files.
}
