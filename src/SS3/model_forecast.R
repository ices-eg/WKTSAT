# model_forecast_SS3.R - running short-term forecast with Stock Synthesis

# Code based on previous works by: 
# - Francesco Masnadi (CNR-IRBIM & UNIBO, Ancona)
# - Massimiliano Cardinale (SLU Aqua, Lysekil)
# - Christopher Griffiths (SLU Aqua, Lysekil)


#==============================================================================
# LIBRARIES                                                                ----
#==============================================================================

# library(icesTAF)

require(icesTAF)
require(icesAdvice)
require(r4ss)
require(ss3diags)

require(dplyr) # to be removed

require(parallel)
require(doParallel)

## pre-register parallel function 
doParallel::registerDoParallel(2)



#========================================================º======================
# GLOBAL VARIABLES                                                         ----
#==============================================================================

## set seed for reproducivle results
set.seed(1234)


#! to be updated for each case study

main_dir <- getwd()
ref_dir  <- file.path(main_dir, "src","SS3") #! UPDATE
dtyr     <- 2024      # last year of data (assessment year - 1)
nfleet   <- 1


## SS assessment files --------------------------------------------------------

run        <- "ss3"               # final assessment model folder (should be inside model folder)
ssexe_file <- "ss_3.30.22.1"  # NOTE : ss.exe for Windows / ss for Linux
ssexe_dir  <- file.path("boot","initial","software")


## ICES reference points ------------------------------------------------------

Blim      <- 61563
Bpa       <- 78405
Flim      <- 0.734	# not defined anymore in ICES
# Fpa       <- 0.537
Fmsy      <- 0.243
FmsyLower <- 0.147  # MAP range Flower
FmsyUpper <- 0.370	# MAP range Fupper
# Bmsy      <- 78405

# TAC  <- xx # interim year TAC


# Set model executable ----------------------------------------------------

if(os.linux()) {
  exe <- normalizePath(file.path(ref_dir, ssexe_dir, ssexe_file))
} else if(os.windows()) {
  exe <- normalizePath(file.path(ref_dir, ssexe_dir, paste0(ssexe_file,".exe")))
} else {
  stop()
}


## Other variables
intYr <- dtyr + 1


#==============================================================================
# DIRECTORIES                                                              ----
#==============================================================================

mod_path <- file.path(ref_dir, "model", run) 
stf_path <- file.path(ref_dir, "model","stf")     # folder with STF files and results

forecastTAC_dir <- file.path(stf_path,"stf_files")
fored_dir     <- file.path(stf_path, "info_models")
tablefore_dir <- file.path(stf_path, "tables")
plotfore_dir  <- file.path(stf_path, "plots")

clean(stf_path)

mkdir(forecastTAC_dir)
mkdir(fored_dir)
mkdir(tablefore_dir)
mkdir(plotfore_dir)


#==============================================================================
# STF SETTINGS                                                             ----
#==============================================================================


## Values of F in the intermediate year ---------------------------------------

## As the average of the values in the Naver years.
Naver <- 3 # number of average years


## Sequence of Fmult for intYr+1 (see variable fsq)
#  (## To set Fmult values authomatically, otherwise directly define fmult vector by hand)

# Number of models in the Fmult sequence between:
# - (s1) 0 and FmsyLower, 
# - (s2) FmsyLower+0.01 and FmsyUpper, and 
# - (s3) FmsyUpper and Flim+0.05.
s1 <- 5#0
s2 <- 5#0
s3 <- 5#0

## intYr+2 use the multiplier for Fmsy not the previous sequence


#==============================================================================
# 1) Create scenarios                                                      ----
#==============================================================================

file.copy(file.path(mod_path, "forecast.ss"),
          file.path(forecastTAC_dir, "forecast.ss"))

## read forecast from forecast folder
fore <- r4ss::SS_readforecast(file = file.path(forecastTAC_dir, "forecast.ss"),
                              verbose = FALSE)

## Look for values of apical F for intermediate year dtyr+1 (report:14)
replist <- SS_output(dir = mod_path, verbose=TRUE, printstats=TRUE) ## read

# interim year ----------------------------------------------------------------

## prepare intermediate year data 
dat <- replist$exploitation
# keep year, seas and fleets
dat <- dat %>% select(-Seas_dur, -F_std, -annual_F, -annual_M)
# head(dat) 

# Number of forecast years
Nfor <- fore$Nforecastyrs

## average of the last 3 years across seasons and fleets
startyear <- max(dat$Yr)-Nfor-Naver+1
endyear   <- max(dat$Yr)-Nfor
data_int <- dat %>% filter(Yr>=startyear & Yr<=endyear) %>% 
  select(-Yr) %>% group_by(Seas) %>% 
  summarise_all(mean)

## input intermediate year data
dimen <- dim(data_int)
Year  <- rep(endyear+1,dimen[1]*(dimen[2]-1))
fore_dat_int       <- data.frame(Year)
fore_dat_int$Seas  <- data_int$Seas
fore_dat_int$Fleet <- rep(1:nfleet, each = length(data_int$Seas))
fore_dat_int$F     <- as.vector(as.matrix(data_int[,-which(names(data_int)=="Seas")]))

# define Fmult ---------------------------------------------------------------- 

# From reference points html
datmul <- replist$exploitation
datmul <- datmul %>% filter((Yr >= intYr-Naver) & (Yr <= intYr-1)) %>% 
  filter(!is.na(F_std)) %>% # whole year F stored in 1st season
  select(Yr, F_std)

# Mean of all Naver years
fsq <- mean(datmul$F_std)

# Fishing mortality multipliers
fmult_msyl <- FmsyLower/fsq
fmult_msyu <- FmsyUpper/fsq
fmult_lim  <- Flim/fsq
fmult_msy  <- Fmsy/fsq

fmult <- c( seq(0, fmult_msyl, length.out=s1), 
            seq(fmult_msyl+0.01, fmult_msyu, length.out=s2), 
            seq(fmult_msyu+0.01, fmult_lim+0.05, length.out=s3), 
            c(3, 4, 5, 6, 7, 1))
fmult <- sort(unique(fmult))

Fmult_names <- paste0("Fmult_",fmult)

save(fmult, Fmult_names, file = file.path(fored_dir, "fmult.RData"))

## create data for following forecast years using int year and Fmult

for (i in 1:length(fmult)) {
  
  fore_dat <- aux_fore <- fore_dat_int
  
  # Forecast year (alternative Fs)
  for(j in 2:(Nfor-1)){
    aux_fore$Year <- endyear+j
    aux_fore$F    <- fmult[i]*fore_dat_int$F
    fore_dat <- rbind(fore_dat, aux_fore)
  }
  
  # Last year Fmsy
  j <- Nfor
  aux_fore$Year <- endyear+j
  aux_fore$F    <- fmult_msy*fore_dat_int$F
  fore_dat <- rbind(fore_dat, aux_fore)
  
  # input ------------------------------------------------------------------------
  
  fore$InputBasis <- 99 # options: 99 for F, 2 for Catch
  fore$ForeCatch  <- fore_dat # input ForeCatch(orF) data
  
  ## write all forecast files/scenarios
  r4ss::SS_writeforecast(fore, dir = forecastTAC_dir, 
                         file = paste0("forecast_",Fmult_names[i], ".ss"), 
                         overwrite = TRUE, verbose = FALSE)
  
}


#==============================================================================
# 2) Run STF                                                               ----
#==============================================================================

# Forecast runs ----------------------------------------------------------------

## FIRST generate forecast scenarios/files with script "prepare forecast.R"

tacs <- paste0("Fmult_",fmult) # TAC levels for forecast

# Note: we set different F levels. 
# As in case of fixing catches, we force each fleet catching an specific catch percentage.
# However, the fleets' catches depend on their selectivity. Consequently is better to set F values.

# fmult specific directory
for(j in 1:length(tacs)){
  
  dir.tacN <- file.path(stf_path,tacs[j])
  dir.create(path=dir.tacN, showWarnings = T, recursive = T)
  
  # # copy ss executable
  # file.copy(file.path(ssexe_dir, ssexe_file), file.path(dir.tacN, ssexe_file))
  
  # copy the SS base files in specific TAC subfolder
  copy_SS_inputs(dir.old = mod_path, dir.new = dir.tacN, create.dir = TRUE,
                 overwrite = TRUE, copy_par = TRUE, verbose = TRUE)
  
  # copy the right forecast file from the "forecast_TAC" folder
  file.copy(paste(forecastTAC_dir,  paste0("forecast_",tacs[j], ".ss") , sep="/"),
            paste(dir.tacN, "forecast.ss", sep="/"), overwrite = TRUE)
  
  # Edit "starter.ss" 
  starter <- SS_readstarter(file.path(dir.tacN, "starter.ss"), verbose = FALSE)
  # - use ss.par estimates (0=use init values in control file; 1=use ss.par)
  starter$init_values_src <- 1 # to use the parameters estimates 
  
  starter$minyr_sdreport <- dtyr+1
  starter$maxyr_sdreport <- dtyr+3
  
  # Save file
  SS_writestarter(starter, dir = dir.tacN, verbose = FALSE, overwrite = TRUE)
  
}

# NOTE select one or the other depending on computation resources available

## If using parallel computing
# mc.cores <- length(tacs) # set the number of cores as number of scenarios
# parallel::mclapply( file.path(paste0(stf_path,"/",tacs)),
#                     r4ss::run, extras = "-nohess -maxfn 0 -phase 99", exe = exe, skipfinished = FALSE,
#                     mc.cores = mc.cores)

## Else
for (sc in 1:length(tacs)) {
  
  print(paste0("---- ", tacs[sc], " ----"))
  
  command <- "-maxfn 0 -phase 99" # To run SS using ss.par information
  # command <- "ss -nohess -maxfn 0 -phase 99" # if not interested in pBlim (use this instead)
  
  # setwd(file.path(stf_path,tacs[sc]))
  # system(paste(exe, command), intern = TRUE, invisible = TRUE)
  # setwd(main_dir)
  
  r4ss::run(dir = file.path(stf_path,tacs[sc]), exe = exe, extras = command, 
            show_in_console = TRUE, skipfinished = FALSE)
  
}


# Forecast outputs ------------------------------------------------------------

forecastModels <- SSgetoutput(dirvec=file.path(stf_path, Fmult_names))
names(forecastModels) <- Fmult_names

save(forecastModels, file=file.path(fored_dir, "forecast.RData"))


#==============================================================================
# 3) Summarise outputs                                                     ----
#==============================================================================

foreSum   <- r4ss::SSsummarize(forecastModels)

foreOut <- foreMVLN <- list()
for (i in 1:length(fmult)) { 
  foreOut[[Fmult_names[i]]]  <- r4ss::SS_output(dir = file.path(stf_path, Fmult_names[i]), forecast=TRUE)
  foreMVLN[[Fmult_names[i]]] <- ss3diags::SSdeltaMVLN(foreOut[[Fmult_names[i]]] , mc=500, catch.type='Exp', plot=FALSE, verbose=FALSE) #! PENDING
}


# Forecast tables -------------------------------------------------------------

fmultTabIY <- setNames(data.frame(matrix(0,ncol=7,nrow=1)), 
                        c(paste0("SSB",intYr+1), 
                          paste0("F",intYr), 
                          paste0("Rec",intYr), paste0("Rec",intYr+1),
                          paste0("Catches",intYr), 
                          paste0("Landings",intYr), paste0("Discards",intYr)))

fmultTab <- setNames(data.frame(matrix(0,ncol=7,nrow=length(Fmult_names))), 
                        c("Fmult", 
                          paste0("SSB",intYr+2),
                          paste0("F",intYr+1),
                          paste0("Catches",intYr+1),
                          paste0("Landings",intYr+1),
                          paste0("Discards",intYr+1),
                          paste0("Catches",intYr+2)))

fmultTab$Fmult <- round(fmult,4)

# SSB -------------------------------------------------------------------------

SSB   <- as.data.frame(foreSum[["SpawnBio"]])
SSBiy <- SSB[which(SSB$Yr == intYr + 1), 1]
SSBly <- unlist(SSB[which(SSB$Yr == intYr + 2), !(names(SSB) %in% c("Label", "Yr"))])

fmultTabIY[,paste0("SSB",intYr+1)] <- SSBiy
fmultTab[,paste0("SSB",intYr+2)]   <- SSBly

# probablity below Blim

SSB.sd <- foreSum[["SpawnBioSD"]] 

SSBly.sd <- unlist(SSB.sd[which(SSB.sd$Yr == intYr+2), !(names(SSB.sd) %in% c("Label", "Yr"))])

# - lognormal distribution

logSSBly.mu    <- log(SSBly^2 / sqrt(SSBly^2 + SSBly.sd^2))
logSSBly.sigma <- sqrt(log(1 + SSBly.sd^2/SSBly^2))

fmultTab[,paste0("pBlim_",intYr+2)] <- plnorm(Blim, mean = logSSBly.mu, sd = logSSBly.sigma)


# F ----------------------------------------------------------------------------
# Note that F is from intermediate year

Fvalue <- as.data.frame(foreSum[["Fvalue"]])

fmultTabIY[,paste0("F",intYr)] <- Fvalue[which(Fvalue$Yr == intYr), 1]
fmultTab[,paste0("F",intYr+1)] <- unlist(Fvalue[which(Fvalue$Yr == intYr+1), !(names(Fvalue) %in% c("Label", "Yr"))])


# Rec -------------------------------------------------------------------------
# Note constant recruitment!

Recr <- as.data.frame(foreSum[["recruits"]])

fmultTabIY[,paste0("Rec",intYr)]   <- Recr[which(Recr$Yr == intYr), 1]
fmultTabIY[,paste0("Rec",intYr+1)] <- Recr[which(Recr$Yr == intYr+1), 1]


# Catches ----------------------------------------------------------------------

for (i in 1:length(Fmult_names)){
  
  output <- forecastModels[[i]]
  
  fltnms <- setNames(output$definitions$Fleet_name, output$fleet_ID)
  
  ## Catch
  
  cat_df <- output$timeseries
  
  catch <- cat_df[which(cat_df$Era == "FORE"), 
                  c("Yr",
                    "Seas",
                    grep("^obs_cat", names(cat_df), value = TRUE),
                    grep("^retain\\(B\\)", names(cat_df), value = TRUE),
                    grep("^dead\\(B\\)", names(cat_df), value = TRUE)), 
                  drop = FALSE]
  
  names(catch) <- c("year",
                    "season",
                    paste("LanObs", fltnms[1:nfleet], sep = "_"),
                    paste("LanEst", fltnms[1:nfleet], sep = "_"),
                    paste("CatEst", fltnms[1:nfleet], sep = "_"))
  
  
  # - discards
  cat_cols <- grep("^CatEst", names(catch), value = TRUE)
  lan_cols <- grep("^LanEst", names(catch), value = TRUE)
  aux1 <- catch[, cat_cols, drop = FALSE] - catch[, lan_cols, drop = FALSE]
  names(aux1) <- paste("DisEst", fltnms[1:nfleet], sep = "_")
  
  catch <- cbind(catch, aux1)
  
  value_cols <- names(catch)[-(1:2)]
  
  catch_long <- reshape(catch, 
                        direction = "long", 
                        idvar = c("year", "season"), 
                        varying = value_cols,
                        v.names = "value",
                        timevar = "id", 
                        times = value_cols,
                        sep       = "")
  row.names(catch_long) <- NULL
  
  catch_long$indicator <- substr(catch_long$id, 1, 6)
  catch_long$fleet     <- substr(catch_long$id, 8, nchar(catch_long$id))
  catch_long$year      <- as.factor(catch_long$year)
  
  catch_long <- catch_long[, c("year", "season", "fleet", "indicator", "value")]
  
  Landings <- aggregate(value ~ year,
                        data = catch_long[catch_long$indicator == "LanEst", ],
                        FUN = sum)
  names(Landings)[2] <- "land"
  
  # NOTE: if no discards in any of the fleets --> set discards to 0
  dd <- catch_long[catch_long$indicator == "DisEst", ]
  if (nrow(dd)==0) {
    Discards <- within(Landings, {disc <- 0; land <- NULL})
  } else {
    Discards <- aggregate(value ~ year,
                          data = catch_long[catch_long$indicator == "DisEst", ],
                          FUN = sum)
    names(Discards)[2] <- "disc"
  }
  
  Cat <- aggregate(value ~ year,
    data = catch_long[catch_long$indicator == "CatEst", ],
    FUN = sum)
  names(Cat)[2] <- "cat"
  
  fmultTabIY[,paste0("Catches",intYr)]  <- Cat[which(Cat$year == intYr),"cat"]
  fmultTabIY[,paste0("Landings",intYr)] <- Landings[which(Landings$year == intYr),"land"]
  fmultTabIY[,paste0("Discards",intYr)] <- Discards[which(Discards$year == intYr),"disc"]
  
  fmultTab[i,paste0("Catches",intYr+1)]  <- Cat[which(Cat$year == intYr+1),"cat"]
  fmultTab[i,paste0("Landings",intYr+1)] <- Landings[which(Landings$year == intYr+1),"land"]
  fmultTab[i,paste0("Discards",intYr+1)] <- Discards[which(Discards$year == intYr+1),"disc"]
  
  fmultTab[i,paste0("Catches",intYr+2)]  <- Cat[which(Cat$year == intYr+2),"cat"]
  
}


# ICES rounding  --------------------------------------------------------------

fmultTabIYR <- fmultTabIY

F_cols <- grepl("^F", names(fmultTabIYR))

fmultTabIYR[F_cols]  <- lapply(fmultTabIYR[F_cols], 
                               function(x) suppressWarnings(as.numeric(icesRound(x))))
fmultTabIYR[!F_cols] <- lapply(fmultTabIYR[!F_cols], 
                               function(x) if (is.numeric(x)) round(x) else x)

write.csv(fmultTabIY, file.path(tablefore_dir, "fmultTabIYmediate_year.csv"), row.names = FALSE)
write.csv(fmultTabIYR, file.path(tablefore_dir, "fmultTabIYmediate_year_icesRound.csv"), row.names = FALSE)
write.csv(fmultTab, file.path(tablefore_dir, "fmultTab.csv"), row.names = FALSE)



#==============================================================================
# 4) Catch option table                                                    ----
#==============================================================================

## Function to interpolate -----------------------------------------------------

# Interpolate relevant figures for STF

interpolatefmultTab <- function (colName, varVal, rowName, fmultTab){
  # colName  : variable to be interpolated (valid variable names "Fmult", "F", "Yield", "Catch", "Bio", "SSB")
  # varVal   : quantity to interpolate
  # rowName  : text with reference value to identify (e.g. "Fmsy")
  # fmultTab : table produced with a grid of Fmult
  # It returns a line with the df strulture with all the variables interpolated
  
  varNames <- names(fmultTab)
  stopifnot(colName %in% varNames)
  
  # Identify upper and lower row indices regarding colName
  vec <- fmultTab[,colName]
  stopifnot(varVal>min(vec) & varVal < max(vec))
  if (which(vec>varVal)[1] == 1) iLow <- max(which(vec>varVal)) 
  else iLow <- max(which(vec<varVal))
  iUp <- iLow + 1
  
  # variabbles to estimate (all but varName)
  x1 <- fmultTab[iLow, colName]
  x2 <- varVal
  x3 <- fmultTab[iUp, colName]
  y2List <- list()
  for (i in varNames) {
    if (i == colName) y2List[i] <- varVal else {
      y1 <- fmultTab[iLow, i]
      y3 <- fmultTab[iUp, i]
      y2List[i] <- y1 + (x2-x1) * (y3-y1) / (x3 - x1)  # function to interpolate
    }
  }
  newLine <- as.data.frame(y2List)
  row.names(newLine) <- rowName
  return(newLine)  # data frame (same structure than fmultTab with the required line)
}


#==============================================================================
# CATCH OPTION TABLE (with interpolation - for Advice Sheet)               ----
#==============================================================================

## Catch option table ---------------------------------------------------------

ssbYr <- intYr + 2
catYr <- intYr + 1

# Fmsy
basis <- "MSY approach = FMSY"
df1 <- interpolatefmultTab(colName=paste0("F",intYr+1), 
                           varVal=Fmsy, rowName=basis, fmultTab)

# EU MAP
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), 
                                      varVal=Fmsy, rowName="EU MAP: FMSY", fmultTab))
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), 
                                      FmsyLower, "F = FMSY lower", fmultTab))
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), 
                                      FmsyUpper, "F = FMSY upper", fmultTab))


# F = 0
xx <- fmultTab[1,]
rownames(xx) <- "F = 0"
df1 <- rbind(df1, xx)

# PA
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), 
                                      Fpa, "F = Fpa", fmultTab))
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("SSB",intYr+2), 
                                      Blim, paste0("SSB (", ssbYr, ") = Blim"), fmultTab))
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("SSB",intYr+2), 
                                      Bpa, paste0("SSB (", ssbYr, ") = Bpa"), fmultTab))
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("SSB",intYr+2), 
                                      Bpa, paste0("SSB (", ssbYr, ") = MSY Btrigger"), fmultTab))

# F range -------------------------------------------------------------------
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), FmsyLower, "F = FMSY lower", fmultTab))
frng <- seq(FmsyLower+0.01, FmsyUpper-0.01, by=0.01)
for(f in frng){
  basis <- paste0("F = FMSY lower differing by ", round(f - FmsyLower, 2))
  df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), f, basis, fmultTab))
}
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), FmsyUpper, "F = FMSY upper", fmultTab))

# Equal SSB, F or TAC
SSBint <- fmultTabIY[,paste0("SSB",intYr+1)]
Fint   <- fmultTabIY[,paste0("F",intYr)]

df1 <- rbind(df1, interpolatefmultTab(colName=paste0("SSB",intYr+2), 
                                      SSBint, paste0("SSB (", ssbYr, ") = SSB (", ssbYr-1, ")"), fmultTab))
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("F",intYr+1), 
                                      Fint, paste0("F = F (", catYr-1, ")"), fmultTab))
df1 <- rbind(df1, interpolatefmultTab(colName=paste0("Catches",intYr+1), 
                                      TAC, paste0("Catch (", catYr, ") = TAC (", catYr-1, ")"), fmultTab))

# # Management plan
# 
# df1 <- rbind(df1, interpolatefmultTab(colName= paste0("Catches",intYr+1), TAC, "equal TAC", fmultTab))
# #ForeCatch_2022 10809.5 1264.79
# ForeCatch_2022=10809.5
# catches_fmsy=df1[1,4]
# if(catches_fmsy>ForeCatch_2022*1.2){
#   df1 <- rbind(df1, interpolatefmultTab(colName= paste0("Catches",intYr+1), ForeCatch_2022*1.2, paste0("MP Fmsy",intYr), fmultTab))
# } else {
#   
# }
# 
# TAC=7836
# if(catches_fmsy>TAC*1.2){
#   df1 <- rbind(df1, interpolatefmultTab(colName= paste0("Catches",intYr+1), TAC*1.2, "MP TAC*1.2 (7836)", fmultTab))
# }

df1 <- df1 %>% mutate(Fland = !!as.name(paste0("F",catYr)) * !!as.name(paste0("Landings",catYr))/!!as.name(paste0("Catches",catYr)),
                      Fdisc = !!as.name(paste0("F",catYr)) * !!as.name(paste0("Discards",catYr))/!!as.name(paste0("Catches",catYr))) %>% 
  rename(!!paste0("Fland",intYr+1) := Fland, !!paste0("Fdisc",intYr+1) := Fdisc) %>% 
  mutate_at(vars(-paste0("pBlim_",intYr+2)), ~replace(., is.na(.), 0)) # keep NA for cases without Hessian runs (i.e. only values for sc.prob)

# Reformat

df2 <- df1 %>% mutate(SSBchg = (!!as.name(paste0("SSB",ssbYr))/SSBint-1)*100, 
                      ADVchg = (!!as.name(paste0("Catches",catYr))/TACadvice-1)*100, 
                      TACchg = (!!as.name(paste0("Catches",catYr))/TAC-1)*100) %>% 
  mutate_at(vars(-paste0("pBlim_",intYr+2)), ~replace(., is.na(.), 0)) %>% # keep NA for cases without Hessian runs (i.e. only values for sc.prob)
  select(paste0("Catches",catYr), paste0("Landings",catYr), paste0("Discards",catYr), 
         paste0("F",catYr), paste0("Fland",catYr), paste0("Fdisc",catYr), 
         paste0("SSB",ssbYr), SSBchg, ADVchg, TACchg, paste0("pBlim_",ssbYr))

write.csv (df2, file.path(tablefore_dir,"catchOptTab.csv"), row.names = TRUE) # keep row.names, as correspond to scenarios

for (v in names(df2))
  if (v %in% c(paste0(c("F","Fland","Fdisc"),intYr+1), paste0("pBlim_",ssbYr))) {
    df2[,v] <- icesRound(df2[,v])
  } else
    df2[,v] <- round(df2[,v])

write.csv (df2, file.path(tablefore_dir, "catchOptTab_ICESround.csv"), row.names = TRUE)


#==============================================================================
# CATCH OPTION TABLE (runs output - for Report with Advice Sheet values)   ----
#==============================================================================

# Reformat for report - rename columns

stfTab <- fmultTab %>% 
  mutate(Fland = !!as.name(paste0("F",intYr+1)) * 
           !!as.name(paste0("Landings",intYr+1))/!!as.name(paste0("Catches",intYr+1)), 
         Fdisc = !!as.name(paste0("F",intYr+1)) * 
           !!as.name(paste0("Discards",intYr+1))/!!as.name(paste0("Catches",intYr+1))) %>% 
  mutate_at(vars(-paste0("pBlim_",intYr+2)), ~replace(., is.na(.), 0)) %>% # keep NA for cases without Hessian runs (i.e. only values for sc.prob)
  select(Fmult, paste0("F",intYr+1), Fland, Fdisc, 
         paste0("Catches",intYr+1), paste0("Landings",intYr+1), paste0("Discards",intYr+1), 
         paste0("SSB",intYr+2), paste0("pBlim_",intYr+2)) %>% 
  rename(!!paste0("Fland",intYr+1) := Fland, !!paste0("Fdisc",intYr+1) := Fdisc)


# Incorporate Advice Sheet values

stfTab <- stfTab %>% mutate(scenario = "") %>% 
  filter(Fmult != 0) %>% # already in df1
  bind_rows(df1 %>% select(-paste0("Catches",intYr+2)) %>% mutate(scenario = rownames(df1))) %>% 
  arrange(Fmult)


# Reformat for report - rounding

for (v in names(stfTab)[sapply(stfTab,class) != "character"])
  if (v %in% c(paste0(c("F","Fland","Fdisc"),intYr+1), paste0("pBlim_",intYr+2))) {
    stfTab[,v] <- icesRound(stfTab[,v])
  } else if (v %in% c("Fmult")) {
    stfTab[,v] <- round(stfTab[,v],2)
  } else
    stfTab[,v] <- round(stfTab[,v])

write.csv (stfTab, file.path(tablefore_dir, "catchOptTab_runs.csv"), row.names = FALSE)



#==============================================================================
# CATCH OPTION TABLE - Plots                                               ----
#==============================================================================

# Renaming function


rename_colnam <- function(df, pattern, new_name) {
  idx <- which(grepl(pattern, names(df)))
  if (length(idx) != 1L) stop(sprintf("Expected one match for '%s', got %d", pattern, length(idx)))
  names(df)[idx] <- new_name
  df
}

fmultTab <- rename_colnam(fmultTab, paste0("^SSB",      catYr + 1, "$"), "SSB")
fmultTab <- rename_colnam(fmultTab, paste0("^F",        catYr,     "$"), "F")
fmultTab <- rename_colnam(fmultTab, paste0("^Catches",  catYr,     "$"), "Catch")
fmultTab <- rename_colnam(fmultTab, paste0("^Landings", catYr,     "$"), "Yield")
# fmultTab <- fmultTab[which(fmultTab$Fmult < 4),] # NOTE: cap if necessary


png(height=600, width=600,  file=file.path(plotfore_dir, "ShortTermProj.png"))

  par(mfrow=c(2,1), mar=c(3,3,2,2), mgp=c(2,0.8,0), oma=c(2,1.5,1.5,1.5))
  
  ### Plot F-Yield ---------------------------------------------------------------
  plot(fmultTab$Fmult, fmultTab$Yield, xlab="F mult", ylab=paste0("Yield ", intYr), type="l",lty=2, lwd= 1.5)
  lines (fmultTab$Fmult, fmultTab$Catch)
  abline(v=Fmsy/Fint, lty=3, col=2)
  abline(v=Fint/Fint, lty=3, col=4)
  text(x=Fmsy/Fint*1.5, y=150000, labels=paste0("Fmsy=", round(Fmsy,2)), col=2, cex=0.9)
  text(x=0.5, y=150000, labels=paste0("Fsq=", round(Fint, 2)), col=4, cex=0.9)
  legend (5, 100000, c("Catch", "Land"), col=1, cex=1.2, lty=c(1, 2), bty="n", lwd= 2)
  
  ### Plot F-SSB -----------------------------------------------------------------
  plot(fmultTab$Fmult, fmultTab$SSB, xlab="F mult", ylab=paste0("SSB ", intYr+1), type="l", ylim=c(0, max(fmultTab$SSB)))
  abline(v=Fmsy/Fint, lty=3, col=2)
  abline(v=Fint/Fint, lty=3, col=4)
  abline(h=Blim, lty=3, col=2)
  text(x=2.5, y=Blim*1.1, labels=paste0("Blim=", round(Blim, 0)), col=2, cex=0.9)
  abline(h=Bpa, lty=3, col=2)
  text(x=2.5, y=Bpa*1.1, labels=paste0("Bpa=", round(Bpa, 0)), col=2, cex=0.9)
  
  mtext("Short Term Projections",  outer=T, cex=1.3)
  
dev.off()

