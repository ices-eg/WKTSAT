# Run retro analysis and leave one-out for SAM model

## Before: Run model and use `fit_sam` the name of the fitted sam model object
## After: save rds files for retro, monh rhos and leave one out

###-----------------------------------------------------------------------------
### Retro-analysis
### Run the retro on 5 years
n_retro_years <- 5

### Run retro using stockassessment package
df_retro_analysis <- stockassessment::retro(fit_sam, year = n_retro_years)

### Mohn's Rho calculation
df_mohn_rho <- as.data.frame(stockassessment::mohn(df_retro_analysis)) %>%
  dplyr::rename(Value = `stockassessment::mohn(df_retro_analysis)`) %>%
  dplyr::mutate(Variable = row.names(as.data.frame(stockassessment::mohn(df_retro_analysis))),
  Value = icesAdvice::icesRound(Value)) %>%
  tibble::remove_rownames() # drop row names

### Save retro results and mohn rhos
saveRDS(df_retro_analysis,
        "output/df_retro_analysis.rds")

saveRDS(df_mohn_rho,
          "output/df_mohn_rho.rds")

TAF::write.taf(df_mohn_rho, dir = "output")


###-----------------------------------------------------------------------------
### Leave-one-out
run_leave_one_out <- FALSE

if (run_leave_one_out) {
    
    # leave-one-out
    lo_fit_sam <- leaveout(fit_sam)
    
    # save leave-one-out
    saveRDS(lo_fit_sam,
            "output/lo_fit_sam.rds")
}
