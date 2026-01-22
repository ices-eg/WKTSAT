# ===============================================================================
# Prepare intercatch data for SAM assessment
# Authors: participants of workshop on the validation of new tool for refpts
#     Sofie Nimmegeers (ILVO) <sofie.nimmegeers@ilvo.vlaanderen.be>
#     Klaas Sys (ILVO) <klaas.sys@ilvo.vlaanderen.be>
#
# Distributed under the terms of the MIT
# ===============================================================================

# Run SAM, write model results

# Before: data/data.stock.rds
# After: model/assessment/fit.rds

library(icesTAF)
library(stockassessment)

mkdir("model/assessment")

# ====================================================================
# Load data
# ====================================================================

data <- readRDS("data/data.stock.rds") # ouput from stockassessment::setup.sam.data()
#cfg_path <- "boot/data/sam_config/model.cfg" # path to the cfg file

# ====================================================================
# Model configuration
# ====================================================================

if(exists("cfg_path") && file.exists(cfg_path)) {
  cfg <- loadConf(data, cfg_path, patch = TRUE)
} else {
  # create conf object
  cfg <- defcon(data)
  # and adjust accordingly (see help(sam.fit))
  # an example is given below as an illustration

  # define the fbar range
  cfg$fbarRange <- c(3, 8)

  # correlation between F-at-age
  # Correlation of fishing mortality across ages (0 independent, 1 compound symmetry, or 2 AR(1)
  cfg$corFlag <- 2

  # number of parameters describing F-at-age
  cfg$keyLogFsta[1, ] <- c(0, 1, 2, 3, 3, 3, 4, 4, 5, 5)

  # number of parameters in the suryey processes
  cfg$keyLogFpar[2, ] <- c(0, 1, 2, 3, 3, -1, -1, -1, -1, -1)

  # variance of parameters on F
  # use a single parameter!!!
  # coupling of process variance parameters for log(F)-process (nomally only first row is used)
  cfg$keyVarF[1, ]

  # variance parameters on the observations
  cfg$keyVarObs[1, 1:2] <- 0
  cfg$keyVarObs[1, 3:10] <- 1
  cfg$keyVarObs[2, 1:5] <- max(cfg$keyVarObs[1, ]) + c(1, 2, 2, 3, 3)
  cfg$keyVarObs[3:7, 1] <- (max(cfg$keyVarObs[2, ]) + 1):(max(cfg$keyVarObs[2, ]) + 5)

  # correlation at age between observations
  cfg$obsCorStruct <- factor(c("AR", "ID", "ID", "ID", "ID", "ID", "ID"), levels = c("ID", "AR", "US"))

  # Coupling of correlation parameters can only be specified if the AR(1) structure is chosen above.
  # NA's indicate where correlation parameters can be specified (-1 where they cannot).
  cfg$keyCorObs[1, ] <- 0
}

# define initial parameters
par <- defpar(data, cfg)

# ====================================================================
# Fit and save model
# ====================================================================

fit <- sam.fit(data, cfg, par)

# Convergence checks
fit$opt$convergence # zero
fit$opt$message # "relative convergence (4)"

saveRDS(fit, file = "model/assessment/fit.rds")
