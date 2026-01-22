## Prepare plots and tables for report

## Before:
## After:

library(TAF)

mkdir("report")

# ===============================================================================
# Prepare intercatch data for SAM assessment
# Authors: participants of workshop on the validation of new tool for refpts
#     Sofie Nimmegeers (ILVO) <sofie.nimmegeers@ilvo.vlaanderen.be>
#     Colin Millar (ICES) <colin.millar@ices.dk>
#
# Distributed under the terms of the MIT
# ===============================================================================

# Prepare data, write CSV data tables

# Before:
#    boot/data/intercatch/dn.txt
#    boot/data/intercatch/dw.txt
#    boot/data/intercatch/la.txt
#    boot/data/intercatch/ln.txt
#    boot/data/intercatch/lw.txt
#    boot/data/intercatch/mo.txt
#    boot/data/intercatch/nm.txt
#    boot/data/intercatch/pf.txt
#    boot/data/intercatch/pm.txt
#    boot/data/intercatch/sw.txt
#    boot/data/intercatch/tun.txt
# After:
#   data/data.stock.rds

# load libraries
library(icesTAF)
library(tools)
library(stockassessment)

# make output directory
mkdir("data")

# ====================================================================
# SETUP
# ====================================================================

# Define MIN and MAX age
min_age <- 1
max_age <- 15
plusgroup <- 10

# column names vectors
ages <- as.character(min_age:plus_group)
plusages <- as.character(plus_group:max_age)

# ====================================================================
# Read in data
# ====================================================================

# load data - really we just want to skip survey.dat/txt or tun.txt
file_names <-
  list.files(
    "boot/data/intercatch",
    pattern = "^[A-Za-z]{2}\\.(dat|txt)$",
    full.names = TRUE
  ) |> tolower()
names(file_names) <- file_path_sans_ext(basename(file_names))

stock_data <- lapply(file_names, read.ices)

# Get the tuning fleets
survey_data <- read.ices("boot/data/intercatch/tun.txt")

# ====================================================================
# SOP correction
# ====================================================================

if (exists("stock_data_dis")) {
  # DISCARDS - Calculate SOP factor and sopcorrect
  subdis <- stock_data$dn * stock_data$dw
  subdis2 <- rowSums(subdis)
  sopdis <- subdis2 / stock_data_dis$di[, 1] # gives SOP factor per year
  stock_data$dn <- sweep(stock_data$dn, 1, sopdis, "/") # sop correct the numbers at age

  subdis <- (stock_data$dn * stock_data$dw)
  subdis2 <- rowSums(subdis)
  test <- subdis2 / stock_data_dis$di[, 1]
}

# LANDINGS - Calculate SOP factor and sopcorrect
sublan <- stock_data$ln * stock_data$lw
sublan2 <- rowSums(sublan)
soplan <- sublan2 / stock_data$la[, 1] # gives SOP factor per year
stock_data$ln <- sweep(stock_data$ln, 1, soplan, "/") # sop correct the numbers at age

sublan <- (stock_data$ln * stock_data$lw)
sublan2 <- rowSums(sublan)
test <- sublan2 / stock_data$la[, 1]

# ====================================================================
# Prepare catch data for SAM
# ====================================================================

# Function to calculate weighted average for plus group
plusgroup_weight <- function(weights, numbers) {
  total_numbers <- rowSums(numbers, na.rm = TRUE)
  total_weight <- rowSums(weights * numbers, na.rm = TRUE)
  ifelse(total_numbers == 0, 0, total_weight / total_numbers)
}

# discards
dn <- stock_data$dn[, ages]
dn[, plusgroup] <- rowSums(stock_data$dn[, plusages])
dw <- stock_data$dw[, ages]
dw[, plusgroup] <- plusgroup_weight(stock_data$dw[, plusages], stock_data$dn[, plusages])

# landings
ln <- stock_data$ln[, ages]
ln[, plusgroup] <- rowSums(stock_data$ln[, plusages])
lw <- stock_data$lw[, ages]
lw[, plusgroup] <- plusgroup_weight(stock_data$lw[, plusages], stock_data$ln[, plusages])

# don't need to redo plus group calcs for total catch
cn <- ln + dn
cw <- (dw * dn + lw * ln) / (dn + ln)

# stock weights
sw <- stock_data$sw[, ages]
sw[, plusgroup] <-
  plusgroup_weight(
    stock_data$sw[, plusages],
    stock_data$dn[, plusages] + stock_data$ln[, plusages]
  )

# maturity, natural mortality
mo <- stock_data$mo[, ages]
nm <- stock_data$nm[, ages]
# prop fished by spawning, proportion naturally dead by spawning
pf <- stock_data$pf[, ages]
pm <- stock_data$pm[, ages]

# Calculate the landing proportion
lf <- ifelse(cn == 0, 0, ln / cn)
lf[is.na(lf)] <- 0 # SAM does not handle NA's -> set to zero

# ====================================================================
# Prepare data object for SAM
# ====================================================================

data.stock <-
  setup.sam.data(
    surveys = survey_data, # tuning fleets
    residual.fleet = cn, # catch numbers-at-age
    prop.mature = mo, # maturity ogive
    stock.mean.weight = sw, # stock weights
    catch.mean.weight = cw, # catch weights
    dis.mean.weight = dw, # discard weights
    land.mean.weight = lw, # landing weights
    prop.f = pf, # proportion fished before spawning
    prop.m = pm, # proportion natural mortality before spawning
    natural.mortality = nm, # natural mortality
    land.frac = lf # landing proportion
  )

# Save the SAM data object
saveRDS(data.stock, file = "data/data.stock.rds")
