# Script information ------------------------------------------------------

# run stock assessment in stock synthesis (SS3)
# it assumes that the folders model/run where created before in model.R script

# Before: boot/data/... (reference to all the ss3 input model files, minimum 4, maximum...?)
# After: model/run/... (reference to all the ss3 model outputs)


# Load packages -----------------------------------------------------------
library(icesTAF)
library(r4ss)

# Get input files --------------------------------------------------------

cp("boot/data/stockname.dat", "model/run")
cp("boot/data/stockname.ctl", "model/run")
cp("boot/data/forecast.ss", "model/run")
cp("boot/data/starter.ss", "model/run")
cp("boot/data/wtatage.ss", "model/run")

# Get model executable ----------------------------------------------------
cp("boot/software/ss3.exe", "model/run") # download of the specific release (version and platform) should be in boot/initial/software?
# https://github.com/nmfs-ost/ss3-source-code/releases

# Run SS3 ------------------------------------------------------------------

r4ss::run(dir = "model/run", exe = "ss3", skipfinished = FALSE)

# Fit bias ramp -------------------------------------------------------------
# This might be specific for some stock assessment models, how to include?
# if (fit_bias_ramp == TRUE){...}
# where to set TRUE or FALSE?

out <- r4ss::SS_output(dir = "model/run", forecast=FALSE)

SS_fitbiasramp(out, newctl="model/run/stockname_new.ctl", oldctl="model/run/stockname.ctl")

starter <- r4ss::SS_readstarter(file='model/run/starter.ss',verbose = TRUE)

starter$ctlfile <- "stockname_new.ctl"

r4ss::SS_writestarter(starter, dir = "model/run", overwrite = TRUE)

r4ss::run(dir = "model/run", exe = "ss3", skipfinished = FALSE)

# Session info ------------------------------------------------------------

sessionInfo()

# End of script -----------------------------------------------------------

rm(list=ls())
