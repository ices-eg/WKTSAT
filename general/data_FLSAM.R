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


read.ices.taf <- function(...) {
  read.ices(taf.data.path(...))
}

### ============================================================================
### Read the input data
### ============================================================================


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

dmns <- FLQuant(NA, dimnames = list(
  age    = colnames(catage),
  year   = rownames(catage),
  unit   = "unique",
  season = "all",
  area   = "unique",
  iter   = 1
))

STK <- FLStock(m = dmns)

STK@catch.n[]      <- t(catage)
STK@landings.n[]   <- t(catage)
STK@discards.n[]   <- 0

STK@catch.wt[]     <- t(wcatch)
STK@discards.wt[]  <- t(wdiscards)
STK@landings.wt[]  <- t(wlandings)

STK@mat[]          <- t(maturity)
STK@m[]            <- t(natmort)

STK@harvest.spwn[] <- t(propf)
STK@m.spwn[]       <- t(propm)

STK@stock.wt[]     <- t(wstock)

STK@catch          <- computeCatch(STK)
STK@landings       <- computeLandings(STK)
STK@discards       <- computeDiscards(STK)

# Handle ICES missing value convention
STK@catch.n[STK@catch.n == -1] <- NA

# Set units
units(STK)[1:17] <- as.list(c(rep(c("tonnes","thousands","kg"),4),
                             rep("NA",2),"f",rep("NA",2)))

# Set stock metadata
STK@name <- paste0("STOCK_FLSAM_", range(STK)["maxyear"] + 1)
range(STK)[c("minfbar","maxfbar")] <- c(6, 14)



### ============================================================================
### Setup FLIndices (tuning fleets)
### ============================================================================

STK.tun <- FLIndices()

for(i in names(surveys)) {

  if(colnames(surveys[[i]])[[1]] == -1) {
    ageDims <- "all"
  } else {
    ageDims <- colnames(surveys[[i]])
  }

  STK.tun[[i]] <- FLIndex(index = FLQuant(NA, dimnames = list(
    age    = ageDims,
    year   = rownames(surveys[[i]]),
    unit   = "unique",
    season = "all",
    area   = "unique",
    iter   = 1
  )))

  STK.tun[[i]]@index[] <- t(surveys[[i]])

  if(ageDims[1] == "all") {
    type(STK.tun[[i]]) <- "biomass"
  } else {
    type(STK.tun[[i]]) <- "number"
  }

  STK.tun[[i]]@name <- i
  range(STK.tun[[i]])[c("startf","endf")] <- attr(surveys[[i]], "time")
}


### ============================================================================
###- Save the input data
### ============================================================================
save(STK, STK.tun, file = "data/data.RData")

cat("✔ FLSAM data objects saved to data/data.RData\n")
