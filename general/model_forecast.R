# Run SAM forecast

# Before: model/assessment/fit.RData
# After: model/forecast/forecast.RData


library(icesTAF)
library(stockassessment)

## housekeeping

# load assessment model 
load(file = "model/assessment/fit.RData")                                      ## load SAM model

# update according to assessment/forecast specifics
base.yr      <- max(fit$data$years)                                       
advice.yr    <- base.yr + 2
int.yr       <- as.character(base.yr + 1)
advice.yrp1  <- as.character(advice.yr + 1)
base.yr      <- as.character(base.yr)                                       
advice.yr    <- as.character(advice.yr) 

# laod reference points and TAC
refpts_path    <-"boot/data/reference_points/refpts.RData"                     ## path to the reference points
TAC_path       <- "boot/data/other/TAC.RData"                                     ## path to historic TACs

if(file.exists(refpts_path)){
  load(file = refpts_path)     
} else {
  ## Reference points input values
  # Fmsy = ; Fmsy_lw = ; Fmsy_up = ; Fpa = ; Flim = ; Blim = ; MSYBtrigger = ; Bpa = 
}
if(file.exists(TAC_path)){
  load(file = TAC_path)                                                        ## named vector [years] with TAC values
  TAC <- TAC[as.character(int.yr)]
} else {
  # TAC = 
}

# define intermediate year Fsq assumption; adjust accordingly
Flast3 <- fbartable(fit)[as.character(as.numeric(base.yr)-c(2:0)),"Estimate"]

if(all(diff(Flast3)<0)|all(diff(Flast3)>0)){
  Fsq <- Flast3[3]
}  else {
  Fsq <- mean(Flast3)
}


# define forecast settings; modify accordingly see: help(forecast)

nosim = 10000
year.base = as.numeric(base.yr)                                                
ave.years = max(fit$data$years) + (-4:0)                                       
rec.years = max(fit$data$years) + (-9:0)                                       
savesim = T
NA_vec = rep(NA, length(year.base:as.numeric(advice.yrp1)))
names(NA_vec) <- c(base.yr, int.yr, advice.yr, advice.yrp1)

forecast_args <- list(
  fit = fit,
  fscale = NA_vec,
  catchval.exact = NA_vec,
  fval = NA_vec,
  nextssb = NA_vec,
  landval = NA_vec,
  # cwF = NA_vec,
  nosim = nosim,
  year.base = year.base,
  ave.years = ave.years,
  rec.years = rec.years,
  label = NULL,
  # overwriteSelYears = NULL,
  # deterministic = FALSE,
  # processNoiseF = TRUE,
  # customWeights = NULL,
  # customSel = NULL,
  # lagR = FALSE,
  splitLD = TRUE,
  # addTSB = FALSE,
  useSWmodel = (fit$conf$stockWeightModel >= 1),
  useCWmodel = (fit$conf$catchWeightModel >= 1),
  useMOmodel = (fit$conf$matureModel >= 1),
  useNMmodel = (fit$conf$mortalityModel >= 1),
  savesim = savesim
  # cf.cv.keep.cv = matrix(NA, ncol = 2 * sum(fit$data$fleetTypes == 0), nrow =
  #                          length(catchval)),
  # cf.cv.keep.fv = matrix(NA, ncol = 2 * sum(fit$data$fleetTypes == 0), nrow =
  #                          length(catchval)),
  # cf.keep.fv.offset = matrix(0, ncol = sum(fit$data$fleetTypes == 0), nrow =
  #                              length(catchval)),
  # estimate = median
)


## wrapper to make sure the same seed for random number generation is used
do_forecast <- function(forecast_args){
  set.seed(123)
  do.call('forecast', forecast_args)
}

## test intermediate year assumption
forecast_args$fscale[] <- c(1,rep(NA,3))
forecast_args$fval[]   <- c(NA, rep(Fsq,3))

Fsq_int.yr             <-  do_forecast(forecast_args) 

Fsq_catch_int.yr <- attributes(Fsq_int.yr)$shorttab["catch",int.yr]
if(Fsq_catch_int.yr > TAC){
  forecast_args$catchval.exact[int.yr] <- TAC
  forecast_args$fval[int.yr] <- NA
}

## baseline arguments for forecast
forecast_args_baseline <- forecast_args

## SSB at beginning of advice year
forecast_args     <- forecast_args_baseline
forecast_ssb      <- do_forecast(forecast_args) 
ssb_advice_yr     <- attributes(forecast_ssb)$shorttab["ssb", advice.yr]
F_int_yr          <- attributes(forecast_ssb)$shorttab["fbar", int.yr]

## compute F values (ICES Harvest Control Rule)
F_MSY_approach    <- Fmsy * ifelse(ssb_advice_yr/MSYBtrigger > 1, 1, ssb_advice_yr/MSYBtrigger)
F_MSY_lw_approach <- Fmsy_lw * ifelse(ssb_advice_yr/MSYBtrigger > 1, 1, ssb_advice_yr/MSYBtrigger)

### define catch options (adjust accordingly)
catch_scenarios    <- c("MSY_approach","Fmsy","MSY_approach_lw","Fmsy_lower","Fmsy_upper","F=0","Fpa","Flim","F=Fint","SSBintplus2=Blim","SSBintplus2=Bpa","SSBintplus2=MSYBtrigger")
ls.forecast        <- vector(mode = "list", length = length(catch_scenarios))
names(ls.forecast) <- catch_scenarios

### forecast

## F targets
# MSY approach
forecast_args                    <- forecast_args_baseline
forecast_args$fval[advice.yr]    <- F_MSY_approach
forecast_args$label              <- "MSY_approach"
ls.forecast[["MSY_approach"]]    <- do_forecast(forecast_args)

# Fmsy
if(F_MSY_approach != Fmsy){
  forecast_args                    <- forecast_args_baseline
  forecast_args$fval[advice.yr]    <- Fmsy
  forecast_args$label              <- "Fmsy"
  ls.forecast[["Fmsy"]]            <- do_forecast(forecast_args)
} else {
  ls.forecast[["Fmsy"]]            <- ls.forecast[["MSY_approach"]] 
}

# MSY approach lower
forecast_args                    <- forecast_args_baseline
forecast_args$fval[advice.yr]    <- F_MSY_lw_approach
forecast_args$label              <- "MSY_approach_lw"
ls.forecast[["MSY_approach_lw"]] <- do_forecast(forecast_args)

# Fmsy lower
if(F_MSY_lw_approach != Fmsy_lw){
  forecast_args                    <- forecast_args_baseline
  forecast_args$fval[advice.yr]    <- Fmsy_lw
  forecast_args$label              <- "Fmsy_lower"
  ls.forecast[["Fmsy_lower"]]      <- do_forecast(forecast_args)
} else {
  ls.forecast[["MSY_approach_lw"]] <- ls.forecast[["Fmsy_lower"]]
}


# Fmsy upper
forecast_args                    <- forecast_args_baseline
forecast_args$fval[advice.yr]    <- Fmsy_up
forecast_args$label              <- "Fmsy_upper"
ls.forecast[["Fmsy_upper"]]      <- do_forecast(forecast_args)

# F=0
forecast_args                    <- forecast_args_baseline
forecast_args$fval[advice.yr]    <- NA
forecast_args$fscale[advice.yr]  <- 0
forecast_args$label              <- "F=0"
ls.forecast[["F=0"]]             <- do_forecast(forecast_args)
ssb_fzero                        <- attributes(ls.forecast[["F=0"]])$shorttab[grepl("ssb", rownames(attributes(ls.forecast[["F=0"]])$shorttab)),advice.yrp1]

# Fpa
forecast_args                    <- forecast_args_baseline
forecast_args$fval[advice.yr]    <- Fmsy_up
forecast_args$label              <- "Fpa"
ls.forecast[["Fpa"]]             <- do_forecast(forecast_args)

# Flim
forecast_args                    <- forecast_args_baseline
forecast_args$fval[advice.yr]    <- Fmsy_up
forecast_args$label              <- "Flim"
ls.forecast[["Flim"]]            <- do_forecast(forecast_args)

# F = Fint
forecast_args                    <- forecast_args_baseline
forecast_args$fval[advice.yr]    <- F_int_yr
forecast_args$label              <- "F=Fint"
ls.forecast[["F=Fint"]]          <- do_forecast(forecast_args)

## SSB targets 
# SSBintplus2=Blim
if(Blim < ssb_fzero){
  forecast_args                     <- forecast_args_baseline
  forecast_args$fval[advice.yr]     <- NA
  forecast_args$nextssb[advice.yr]  <- Blim
  forecast_args$label               <- "SSBintplus2=Blim"
  ls.forecast[["SSBintplus2=Blim"]] <- do_forecast(forecast_args)
}

# SSBintplus2=Bpa
if(Bpa < ssb_fzero){
  forecast_args                     <- forecast_args_baseline
  forecast_args$fval[advice.yr]     <- NA
  forecast_args$nextssb[advice.yr]  <- Bpa
  forecast_args$label               <- "SSBintplus2=Bpa"
  ls.forecast[["SSBintplus2=Bpa"]]  <- do_forecast(forecast_args)
}

# SSBintplus2=MSYBtrigger
if(MSYBtrigger < ssb_fzero){
  forecast_args                            <- forecast_args_baseline
  forecast_args$fval[advice.yr]            <- NA
  forecast_args$nextssb[advice.yr]         <- MSYBtrigger
  forecast_args$label                      <- "SSBintplus2=MSYBtrigger"
  ls.forecast[["SSBintplus2=MSYBtrigger"]] <- do_forecast(forecast_args)
}

save(ls.forecast, file = "model/forecast/forecast.RData")


### explore range of F options 
F_range        <- seq(0, 1, 0.01) 

ls.forecast_F_range     <- lapply(F_range, function(x){
  forecast_args                 <- forecast_args_baseline
  forecast_args$savesim         <- F
  forecast_args$fval[advice.yr] <- x
  do_forecast(forecast_args)
})
save(ls.forecast_F_range, file = "model/forecast/forecast_F_range.RData")
