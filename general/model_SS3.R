# model_ss3.R: RUN SS3 model fit, retrospective and jitter

# run stock assessment in stock synthesis (SS3)
# it assumes that the folders model/run where created before in model.R script

# Before: boot/data/... (reference to all the ss3 input model files, minimum 4, maximum...?)
# After: model/run/... (reference to all the ss3 model outputs)

# Load packages ----------------------------------------------------------

library(icesTAF)
library(r4ss)

# Get input files --------------------------------------------------------

path <- "model/ss3"
model <- "sardine"

clean(path)
cp("boot/initial/data/ss3", "model/")

# Set model executable ----------------------------------------------------

if(os.linux()) {
  exe <- normalizePath('boot/initial/software/ss_3.30.22.1')
} else if(os.windows()) {
  exe <- normalizePath('boot/initial/software/ss_3.30.22.1.exe')
} else {
  stop()
}

# Run SS3 ------------------------------------------------------------------

r4ss::run(dir = path, exe = exe, show_in_console=TRUE,
  skipfinished=FALSE)

# Fit bias ramp -------------------------------------------------------------
# NOTE: Run only if required for your model

out <- r4ss::SS_output(dir = path, forecast=FALSE)

# FIT bias ramp
SS_fitbiasramp(out, newctl=file.path(path, paste0(model, "_new.ctl")),
  oldctl=file.path(path, paste0(model, ".ctl")))

# MODIFY starter to use new control
starter <- r4ss::SS_readstarter(file=file.path(path, "starter.ss"),verbose = TRUE)

starter$ctlfile <- paste0(model,"_new.ctl")

r4ss::SS_writestarter(starter, dir = path, overwrite = TRUE)

# RUN
r4ss::run(dir = path, exe = exe, show_in_console=TRUE,
  skipfinished=FALSE)

# Run jitter ------------------------------------------------------------

mkdir(file.path(path, "jitter"))

copy_SS_inputs(path, file.path(path, "jitter"))

jitters <- jitter(dir=file.path(path, "jitter"), Njitter=50,
  jitter_fraction=0.10, exe=exe, extras = '-nohess')

# Run retrospective ------------------------------------------------------

retro(path, exe=exe, show_in_console=TRUE, overwrite=FALSE,
  skipfinished=FALSE)

# NOTE: Waiting for https://github.com/r4ss/r4ss/pull/1063
retros <- file.path(path, "retrospectives", paste("retro",0:-5,sep=""))

retroSummary <- SSsummarize(SSgetoutput(dirvec=retros))

# Save --------------------------------------------------------------------

save(out, retroSummary, jitters, file="model/model.rda")

# Session info ------------------------------------------------------------

sessionInfo()

# End of script -----------------------------------------------------------

rm(list=ls())
