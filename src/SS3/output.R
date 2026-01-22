# output_ss3.R: EXTRACT SS3 outputs, generate tables

# Before: boot/data/... (reference to all the ss3 input model files, minimum 4, maximum...?)
# After: model/run/... (reference to all the ss3 model outputs)

# Load packages and results -----------------------------------------------

library(ss3om)
library(ss3diags)
library(flextable)

source("utilities.R")

load("model/model.rda")

# FLStock

stk <- readFLSss3("model/ss3")

# Uncertainty ------------------------------------------------------------

mvln <- SSdeltaMVLN(out, mc=500, catch.type='Exp', plot=FALSE, verbose=FALSE)

metsci <- mvlnFLQuants(mvln)

plot(metsci)


# Tables

tabs <- metrics(stk, list(catch=catch, landings=landings, discards=discards,
  catch.n=catch.n, landings.n=landings.n, discards.n=discards.n,
  catch.wt=catch.wt, landings.wt=landings.wt, discards.wt=discards.wt,
  stock.n=stock.n, stock.wt=stock.wt,
  m=m, f=harvest, ssb=ssb, rec=rec))

tables <- lapply(tabs, as_flextable)

# SAG


# Save -------------------------------------------------------------------
