## Run FLSAM model, write model results

## Before:

## After:

# Load libraries
library(icesTAF)
taf.library(FLCore)
taf.library(stockassessment)
taf.library(FLSAM)

# Ensure model directory exists
mkdir("model")

# Load data objects
load("data/data.RData")   # should contain STK and STK.tun

### ============================================================================
### Setup FLSAM control object
### ============================================================================

CTRL <- FLSAM.control(STK, STK.tun)

# ---- Example control settings (edit for your stock) ----
CTRL@states["catch unique", ] <- c(0:5, rep(6, 11))

# Example survey catchability structures
if (nFLIndices(STK.tun) > 0) {
  CTRL@catchabilities[names(STK.tun)[1], ac(5:10)] <- c(0,1,2,3,4,4)
}

# Example correlation settings
CTRL@cor.obs.Flag[] <- as.factor("AR")

# Update control
CTRL <- update(CTRL)

### ============================================================================
### Run the FLSAM model
### ============================================================================

SAM.fit <- FLSAM(
  STK, STK.tun, CTRL,
  set.pars = data.frame(par = "logN.vars", number = 1, value = log(0.01)),
  return.fit = TRUE
)

### ============================================================================
### Retrospective analysis
### ============================================================================

CTRL@residuals <- FALSE
SAM.retro <- retro(
  STK, STK.tun, CTRL,
  years = 5,
  set.pars = data.frame(par = "logN.vars", number = 1, value = log(0.01))
)

### ============================================================================
### Save model output
### ============================================================================

save(
  STK, STK.tun, CTRL,
  SAM.fit, SAM.retro,
  file = "model/model.RData"
)

cat("✔ FLSAM model objects saved to model/model.RData\n")
