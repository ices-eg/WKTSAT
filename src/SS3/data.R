# Read SS3 model files (4 main files are control, data, starter and forecast; there can be more)
# and write CSV data tables

# Before running the script in folder ./boot/initial/data we have: 
#         forecast.ss 
#         sardine.ctl
#         sardine.dat
#         starter.ss
#         wtatage.ss
#         and other files needed later
# After running the script in folder ./data we have:
#         inputData.RData with r4ss input object and TAF .csv data tables:
#         natmort, catage, catch, natage_idx_b1plus, ntotal_idx_b1plus,
#         survey_DEPM, survey_recruits, waca, west, fecundity, maturity

rm(list=ls())

# load libraries
library(icesTAF)
library(r4ss)

# Working directory and folders -------------------------------------------

# working directory
# User to edit
# setwd("./ices-eg/WKTSAT")

# create data folder using the function mkdir in icesTAF

mkdir("data")

# Read model files --------------------------------------------------------------
inputs <- r4ss::SS_read(dir = "boot/initial/data/ss3_data", verbose = TRUE)

# Prepare TAF tables ------------------------------------------------------
# the selection of data to save in the form of CSV should be user defined
# It is recommended to save at least: catches, surveys, ....

# natural maturity table
natmort <- inputs$ctl$natM

# numbers at age catch table
catage <- subset(inputs$dat$agecomp,fleet==1 & year>=(inputs$dat$styr) & year<(inputs$dat$endyr),c("year","a0","a1","a2","a3","a4","a5","a6"))

# total catch table (tonnes)
catch <- subset(inputs$dat$catch, year>=(inputs$dat$styr), c('year','catch'))

# numbers at age in the acoustic survey 
natage_idx_b1plus <- subset(inputs$dat$agecomp,fleet==2 & year%in% inputs$dat$styr:inputs$dat$endyr,c("year","a0","a1","a2","a3","a4","a5","a6"))

# total numbers in the acoustic survey 
ntotal_idx_b1plus <- subset(inputs$dat$CPUE,index==2,c("year","obs"))

# ssb estimated in the DEPM survey (biomass)
survey_DEPM <- subset(inputs$dat$CPUE,index==3,c("year","obs"))

# total numbers in the recruit survey 
survey_recruits <- subset(inputs$dat$CPUE,index==4,c("year","obs"))

# weight at age in the catch
waca <- subset(inputs$wtatage, fleet=="1" & year %in% inputs$dat$styr:inputs$dat$endyr,c("year","0","1","2","3","4","5","6"))

# weight at age in the stock
west <- subset(inputs$wtatage, fleet=="3" & year %in% inputs$dat$styr:inputs$dat$endyr,c("year","0","1","2","3","4","5","6"))

# fecundity
fecundity <- subset(inputs$wtatage, fleet=="-2" & year %in% inputs$dat$styr:inputs$dat$endyr,c("year","0","1","2","3","4","5","6"))

# maturity
maturity <- cbind(year=inputs$dat$styr:inputs$dat$endyr, fecundity[,-1]/west[,-1])
maturity[,2] <- 0


# Write TAF tables in data folder -----------------------------------------

write.taf(
  list(
    natmort=natmort, catage = catage, catch = catch, 
    natage_idx_b1plus = natage_idx_b1plus, ntotal_idx_b1plus = ntotal_idx_b1plus,
    survey_DEPM = survey_DEPM, survey_recruits = survey_recruits, waca = waca,
    west = west, fecundity = fecundity, maturity = maturity
  ),
  dir="./data"
)

# Save data in RData file  in data folder ----------------------------------

save.image("./data/inputData.RData")

# Script info -------------------------------------------------------------

sessionInfo()

# End of script -----------------------------------------------------------

rm(list=ls())
