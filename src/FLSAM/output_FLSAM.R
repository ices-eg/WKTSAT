# ====================================================================
# Prepare intercatch data for SAM assessment
# Authors: participants of workshop on the validation of new tool for refpts
#     Petur Mikkelsen (FARMI) <peturm@hav.fo>
#     Niels Hintzen (PFA) <nhintzen@pelagicfish.eu>
#
# Distributed under the terms of the MIT
# ====================================================================



## Extract results of interest, write TAF output tables

## Before: model/model.RData
## After:  output/*.csv

library(icesTAF)
taf.library(FLCore)
taf.library(stockassessment)
taf.library(FLSAM)
library(tidyverse)

mkdir("output")
load("model/model.RData")

terminal.year <- range(STK)["maxyear"]

### ============================================================================
### Outputs: age-based tables
### ============================================================================

write.taf(flr2taf(STK.sam@stock.n),   "output/natage.csv")
write.taf(flr2taf(STK.sam@harvest),   "output/fatage.csv")

### ============================================================================
### Summary table
### ============================================================================

vlu <- c("value", "lbnd", "ubnd")

summary <- data.frame(
  rec(STK.sam)$year,
  rec(STK.sam)[vlu],
  tsb(STK.sam)[vlu],
  ssb(STK.sam)[vlu],
  catch(STK.sam)[vlu],
  fbar(STK.sam)[vlu],
  c(catch(STK)),
  c(sop(STK)),
  row.names = NULL
)

names(summary) <- c(
  "Year",
  "Rec",   "Rec_lo",   "Rec_hi",
  "TSB",   "TSB_lo",   "TSB_hi",
  "SSB",   "SSB_lo",   "SSB_hi",
  "Catch", "Catch_lo","Catch_hi",
  "Fbar",  "Fbar_lo", "Fbar_hi",
  "Landings", "SOP"
)

write.taf(summary, "output/summary_sf.csv")

### ============================================================================
### Mohn’s rho (retrospective bias)
### ============================================================================

df.mr <- data.frame(matrix(ncol = 3, nrow = 0))

df.mr <- rbind(df.mr,
  cbind(seq(terminal.year-5, terminal.year),
        t(t(mohns.rho(STK.retro, span = 5, ref.year = terminal.year, type = "ssb")$rho)),
        rep("ssb", 5))
)

df.mr <- rbind(df.mr,
  cbind(seq(terminal.year-5, terminal.year),
        t(t(mohns.rho(STK.retro, span = 5, ref.year = terminal.year, type = "fbar")$rho)),
        rep("fbar", 5))
)

df.mr <- rbind(df.mr,
  cbind(seq(terminal.year-5, terminal.year),
        t(t(mohns.rho(STK.retro, span = 5, ref.year = terminal.year, type = "rec")$rho)),
        rep("rec", 5))
)

df.mr <- rbind(df.mr,
  cbind("av_5y", mean(mohns.rho(STK.retro, span = 5, ref.year = terminal.year, type = "ssb")$rho), "ssb")
)

df.mr <- rbind(df.mr,
  cbind("av_5y", mean(mohns.rho(STK.retro, span = 5, ref.year = terminal.year, type = "fbar")$rho), "fbar")
)

df.mr <- rbind(df.mr,
  cbind("av_5y", mean(mohns.rho(STK.retro, span = 5, ref.year = terminal.year, type = "rec")$rho), "rec")
)

colnames(df.mr) <- c("year", "mohn_rho", "var")

df.mr <- df.mr %>%
  pivot_wider(names_from = var, values_from = mohn_rho)

write.taf(df.mr, "output/mohn_rho.csv")

cat("✔ FLSAM output tables written to /output\n")
