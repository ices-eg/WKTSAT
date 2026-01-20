# Prepare data, write CSV data tables

# Before:
#   boot/data/intercatch/*.txt
# After:
#   data/data.RData

# load libraries
library(icesTAF)
taf.library(FLCore)
taf.library(stockassessment)
taf.library(FLSAM)

mkdir("data")
# load data

# do work

# write out

### ============================================================================
### Read the input data
### ============================================================================

read.ices.taf <- function(...) {
  read.ices(taf.data.path(...))
}

## Catch numbers at age
catage    <- read.ices.taf("cn.dat")

## Weights at age
wcatch    <- read.ices.taf("cw.dat")
wdiscards <- read.ices.taf("dw.dat")
wlandings <- read.ices.taf("lw.dat")

## Natural mortality
natmort   <- read.ices.taf("nm.dat")

## Maturity ogive
maturity  <- read.ices.taf("mo.dat")

## Proportion before spawning
propf     <- read.ices.taf("pf.dat")
propm     <- read.ices.taf("pm.dat")

## Stock weight
wstock    <- read.ices.taf("sw.dat")

## Landing fraction
landfrac  <- read.ices.taf("lf.dat")

## Survey indices
surveys   <- read.ices.taf("survey.dat")

### ============================================================================
###- Setup FLStock objects with data in there
### ============================================================================






### ============================================================================
###- Save the input data
### ============================================================================

