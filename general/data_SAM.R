# Prepare data, write CSV data tables

# Before:
#   boot/data/intercatch/*.txt
# After:
#   data/data.RData

# load libraries
library(icesTAF)
library(stockassessment)

# load data
file_names<-c("dn.txt","dw.txt","la.txt", "ln.txt", "lw.txt", "mo.txt","nm.txt","pf.txt","pm.txt","sw.txt")
names(file_names)  <- gsub(".txt","", file_names)

read.ices.from.disk <- function(dat_extension, stock_input_path){
  return(read.ices(file.path(stock_input_path, dat_extension)))
}

stock_data     <- lapply(file_names[1:10], read.ices.from.disk, stock_input_path = file.path("boot/initial/data/"))

file_names<-c("di.txt")
names(file_names)  <- gsub(".txt","", file_names)
stock_data_dis     <- lapply(file_names[1:1], read.ices.from.disk, stock_input_path = file.path("boot/initial/data/"))

# SOP correction
# DISCARDS - Calculate SOP factor and sopcorrect
subdis <- stock_data$dn*stock_data$dw
subdis2 <- rowSums(subdis)
sopdis <- subdis2/stock_data_dis$di[,1]            #gives SOP factor per year
stock_data$dn <- sweep(stock_data$dn,1,sopdis,"/")        #sop correct the numbers at age

subdis <- (stock_data$dn*stock_data$dw)
subdis2 <- rowSums(subdis)
test<-subdis2/stock_data_dis$di[,1]

# LANDINGS - Calculate SOP factor and sopcorrect
sublan <- stock_data$ln*stock_data$lw
sublan2 <- rowSums(sublan)
soplan <- sublan2/stock_data$la[,1]            #gives SOP factor per year
stock_data$ln <- sweep(stock_data$ln,1,soplan,"/")        #sop correct the numbers at age

sublan <- (stock_data$ln*stock_data$lw)
sublan2 <- rowSums(sublan)
test<-sublan2/stock_data$la[,1]

## Define MIN and MAX age
min_age    <- 1
plus_group <- 10

## Make sam_data object
sam_data <- list()

sam_data$dn              <- stock_data$dn[,min_age:plus_group]
sam_data$dn[,plus_group] <- rowSums(stock_data$dn[,plus_group:ncol(stock_data$dn)])
sam_data$dw              <- stock_data$dw[,min_age:plus_group]
sam_data$dw[,plus_group] <- rowSums(stock_data$dw[,plus_group:ncol(stock_data$dw)]  * sweep(stock_data$dn[,plus_group:ncol(stock_data$dn)],1, FUN = "/", rowSums(stock_data$dn[,plus_group:ncol(stock_data$dn)],na.rm = T)),na.rm = T)

sam_data$ln              <- stock_data$ln[,min_age:plus_group]
sam_data$ln[,plus_group] <- rowSums(stock_data$ln[,plus_group:ncol(stock_data$ln)])
sam_data$lw              <- stock_data$lw[,min_age:plus_group]
sam_data$lw[,plus_group] <- rowSums(stock_data$lw[,plus_group:ncol(stock_data$lw)]  * sweep(stock_data$ln[,plus_group:ncol(stock_data$ln)],1, FUN = "/", rowSums(stock_data$ln[,plus_group:ncol(stock_data$ln)],na.rm = T)),na.rm = T)

stock_data$cn            <- stock_data$ln + stock_data$dn
stock_data$cw            <- (stock_data$dw * stock_data$dn + stock_data$lw * stock_data$ln) / (stock_data$dn + stock_data$ln)
stock_data$cw[is.na(stock_data$cw)] <- stock_data$lw[is.na(stock_data$cw)]
sam_data$cn              <- stock_data$cn[,min_age:plus_group]
sam_data$cn[,plus_group] <- rowSums(stock_data$cn[,plus_group:ncol(stock_data$cn)])
sam_data$cw              <- stock_data$cw[,min_age:plus_group]
sam_data$cw[,plus_group] <- rowSums(stock_data$cw[,plus_group:ncol(stock_data$cw)]  * sweep(stock_data$cn[,plus_group:ncol(stock_data$cn)],1, FUN = "/", rowSums(stock_data$cn[,plus_group:ncol(stock_data$cn)],na.rm = T)),na.rm = T)

sam_data$sw              <- stock_data$sw[,min_age:plus_group]
sam_data$sw[,plus_group] <- rowSums(stock_data$sw[,plus_group:ncol(stock_data$sw)]  * sweep(stock_data$cn[,plus_group:ncol(stock_data$cn)],1, FUN = "/", rowSums(stock_data$cn[,plus_group:ncol(stock_data$cn)],na.rm = T)),na.rm = T)

sam_data$mo              <- stock_data$mo[,min_age:plus_group]
sam_data$nm              <- stock_data$nm[,min_age:plus_group]
sam_data$pf              <- stock_data$pf[,min_age:plus_group]
sam_data$pm              <- stock_data$pm[,min_age:plus_group]

sam_data$lf              <- sam_data$ln / sam_data$cn # Calculate the landing proportion
sam_data$lf[is.na(sam_data$lf)] <- 0 # SAM does not handle NA's -> set to zero

# Get the tuning fleets
sam_data$tun     <- read.ices(file.path("boot/initial/data/tun.txt"))

dat.stock     <- setup.sam.data(
  surveys = sam_data$tun,                # tuning fleets
  residual.fleet = sam_data$cn,          # catch numbers-at-age
  prop.mature = sam_data$mo,             # maturity ogive
  stock.mean.weight = sam_data$sw,       # stock weights
  catch.mean.weight = sam_data$cw,       # catch weights
  dis.mean.weight = sam_data$dw,         # discard weights
  land.mean.weight = sam_data$lw,        # landing weights
  prop.f = sam_data$pf,                  # proportion fished before spawning
  prop.m = sam_data$pm,                  # proportion natural mortality before spawning
  natural.mortality = sam_data$nm,       # natural mortality
  land.frac = sam_data$lf )              # landing proportion

#Save the SAM data object
save(dat.stock,file="data/data.RData")
