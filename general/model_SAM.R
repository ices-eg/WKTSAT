# Run SAM, write model results

# Before: data/assessment_inputs.RData
# After: model/assessment/fit.RData

library(icesTAF)
library(stockassessment)

mkdir("model/assessment")                                                      ## create subfolder in model folder to store assessment

load("data/assessment_inputs.RData")                                           ## ouput from stockassessment::setup.sam.data()

cfg_path    <-"boot/data/sam_config/model.cfg"                                 ## path to the cfg file

if(file.exists(cfg_path)){
  cfg <- loadConf(data, cfg_path, patch = TRUE)         
} else {
  # create conf object
  cfg <- defcon(data)
  # and adjust accordingly (see help(sam.fit))
}

# define initial parameters
par <- defpar(data, cfg)

# fit SAM model
fit   <- sam.fit(data, cfg, par) 

# save SAM model as RData file in model folder
save(fit, file = "model/assessment/fit.RData")