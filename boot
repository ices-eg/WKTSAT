# bootstrap.R

# set the path to Rtools
# writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")

# check whether make can be found
# Sys.which("make")

library(icesTAF)

taf.bootstrap()  # e.g. install relevant software from software.bib
