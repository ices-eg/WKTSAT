# Export data to Standard Assessment Graph website using icesSAG package

## Before: Run model and load reference points from a list in data.R,
## assessment_year is the year of the assessment
## sam_ass_stock is a FLR stock object with the estimated values for the fit_sam
## After: create and save info and fishdata to be used for SAG upload 

library("icesSAG")

### Year range used in SAM stock assessment
Year <- (range(sam_ass_stock)[["minyear"]]:assessment_year)

### Year range used in SAM stock assessment for recruitment
Year_rec <- (range(sam_ass_stock)[["minyear"]]:(assessment_year - 1))

### Information of the stock and references points, needs to be filled by the stock coordinator
info <- icesSAG::stockInfo(StockCode = ,
                           AssessmentYear = assessment_year,
                           ContactPerson = ,
                           StockCategory = ,
                           ModelType = ,
                           ModelName = ,
                           Purpose = ,
                           RecruitmentAge = ,
                           CatchesLandingsUnits = ,
                           RecruitmentUnits = ,
                           StockSizeUnits = ,
                           Fage = ,
                           MSYBtrigger = ref_points[["MSYBtrigger"]],
                           FMSY = ref_points[["Fmsy"]],
                           Blim = ref_points[["Blim"]],
                           Bpa = ref_points[["Bpa"]],
                           # Flim = ref_points[["Flim"]],
                           Fpa = ref_points[["Fpa"]],
                           ConfidenceIntervalDefinition = )





###-----------------------------------------------------------------------------
### Fish data for SAG : results of the SAM model, df_rec, df_ssb, df_tsb, df_fbar comes from output.R
fishdata <- icesSAG::stockFishdata(Year,
                          Low_Recruitment = c(df_rec$Low, NA),
                          Recruitment = c(df_rec$Estimate, df_sam_stf_rec$median),
                          High_Recruitment = c(df_rec$High, NA),
                          Low_StockSize = c(df_ssb$Low, df_sam_stf_ssb$low),
                          StockSize = c(df_ssb$Estimate, df_sam_stf_ssb$median),
                          High_StockSize = c(df_ssb$High, df_sam_stf_ssb$high),
                          Low_TBiomass = c(df_tsb$Low, df_sam_stf_tsb$low),
                          TBiomass = c(df_tsb$Estimate, df_sam_stf_tsb$median),
                          High_TBiomass = c(df_tsb$High, df_sam_stf_tsb$high),
                          Low_FishingPressure = c(df_fbar$Low, NA),
                          FishingPressure = c(df_fbar$Estimate, NA),
                          High_FishingPressure = c(df_fbar$High, NA),
                          Catches = round(c(catch(flr_stock)[,ac(1984:(assessment_year - 1))],NA), digits = 0),
                          Landings = round(c(landings(flr_stock)[, ac(1984:(assessment_year - 1))],NA), digits = 0),
                          Discards = round(c(discards(flr_stock)[, ac(1984:(assessment_year - 1))],NA), digits = 0))

###-----------------------------------------------------------------------------
### export info and fishdata as xml
writeSAGxml(info, fishdata, file = "upload_for_sag.xml")

### check if the file is formatted correctly
icesSAG::uploadStock(file = "upload_for_sag.xml",
                     upload = TRUE,
                     verbose = TRUE)

# and if all checks pass, the file can be uploaded
uploadStock(file = "upload_for_sag.xml", upload = TRUE)

### Save info and fishdata into a list
saveRDS(list(info = info,
             fishdata = fishdata),
        "report/sag_objects.rds")
