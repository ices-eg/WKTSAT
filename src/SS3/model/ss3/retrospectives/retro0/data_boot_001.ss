#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:05:56 2026
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version: 
#C file write time: 2021-05-25 20:06:11
#_bootstrap file: 1  irand_seed: 1769079956 first rand#: -1.69605
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1978 #_StartYr
2025 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Nsexes: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
6 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
4 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 purse_seine  # 1
 3 1 1 2 0 Acoustic_survey  # 2
 3 1 1 2 0 DEPM_survey  # 3
 3 1 1 2 0 Rec_survey  # 4
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 126615 0.05
1978 1 1 152709 0.05
1979 1 1 152645 0.05
1980 1 1 199947 0.05
1981 1 1 206471 0.05
1982 1 1 203193 0.05
1983 1 1 162513 0.05
1984 1 1 207406 0.05
1985 1 1 235581 0.05
1986 1 1 181254 0.05
1987 1 1 175909 0.05
1988 1 1 163714 0.05
1989 1 1 146311 0.05
1990 1 1 155363 0.05
1991 1 1 124513 0.05
1992 1 1 124880 0.05
1993 1 1 146268 0.05
1994 1 1 131498 0.05
1995 1 1 126626 0.05
1996 1 1 121825 0.05
1997 1 1 124478 0.05
1998 1 1 105516 0.05
1999 1 1 96737.9 0.05
2000 1 1 94326.6 0.05
2001 1 1 100271 0.05
2002 1 1 97050.9 0.05
2003 1 1 99237.9 0.05
2004 1 1 92477.3 0.05
2005 1 1 93816.8 0.05
2006 1 1 85538.2 0.05
2007 1 1 103963 0.05
2008 1 1 105435 0.05
2009 1 1 93613.4 0.05
2010 1 1 91362.7 0.05
2011 1 1 78041.7 0.05
2012 1 1 57754 0.05
2013 1 1 48478 0.05
2014 1 1 28535.3 0.05
2015 1 1 20270.9 0.05
2016 1 1 20956.9 0.05
2017 1 1 22410.9 0.05
2018 1 1 14555.2 0.05
2019 1 1 13217.9 0.05
2020 1 1 22365.9 0.05
2021 1 1 44768.6 0.05
2022 1 1 39352.3 0.05
2023 1 1 54057.7 0.05
2024 1 1 48347.3 0.05
2025 1 1 50546 0.05
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
#_Fleet Units Errtype SD_Report
1 1 0 0 # purse_seine
2 0 0 0 # Acoustic_survey
3 30 0 0 # DEPM_survey
4 0 0 0 # Rec_survey
#_year month index obs err
1996 4 2 1.33418e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.14647e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 1.35522e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.0829e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 8.71279e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 3.28418e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 3.15335e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.36044e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 1.99571e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 1.77671e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.17302e+07 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 9.26352e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 7.14542e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 5.90166e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 5.80647e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 3.37502e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 3.3327e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 2.36724e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 3.92548e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 5.90273e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 1.04691e+07 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 5.31864e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 2.55419e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.63315e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 2 1.25113e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 2 2.18334e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 2 2.45439e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 2 1.09182e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 1.04625e+06 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 274997 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 494827 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 336638 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 649393 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 213094 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 131249 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 241096 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 463966 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 3 543060 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 1.89189e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 3.14267e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 7.29033e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 4.38789e+06 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 6.66233e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 4.0774e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 5.22289e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 71401.1 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 1.07706e+06 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 2.11554e+06 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 511035 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 614063 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.33567e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 859521 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 400228 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 5.41831e+06 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 3.72178e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 3.20621e+06 0.25 #_orig_obs: 656732 Rec_survey
2022 10 4 671259 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 4 3.05004e+06 0.25 #_orig_obs: 61011 Rec_survey
2024 10 4 2.31774e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 4 2.31367e+06 0.25 #_orig_obs: 819386 Rec_survey
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
4 # binwidth for population size comp 
8 # minimum size in the population (lower edge of first bin and size at age 0.00) 
28 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1/2) where 2 invokes new comp_comtrol format
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_Using old format for composition controls
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 1 0 0 0 1 #_fleet:1_purse_seine
0 1e-07 1 0 0 0 1 #_fleet:2_Acoustic_survey
0 1e-07 1 0 0 0 1 #_fleet:3_DEPM_survey
0 1e-07 1 0 0 0 1 #_fleet:4_Rec_survey
6 #_N_LengthBins
 8 12 16 20 24 28
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
-9999 0 0 0 0 0 0 0 0 0 0 0 
#
7 #_N_age_bins
 0 1 2 3 4 5 6
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5
 0.1 0.2 0.3 0.3 0.3 0.3 0.4
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 0 0 0 0 1 #_fleet:1_purse_seine
0 1e-07 0 0 0 0 1 #_fleet:2_Acoustic_survey
0 1e-07 0 0 0 0 1 #_fleet:3_DEPM_survey
0 1e-07 0 0 0 0 1 #_fleet:4_Rec_survey
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1978  7 1  0 0 1 -1 -1 50  8 19 12 4 3 4 0
1979  7 1  0 0 1 -1 -1 50  9 21 11 6 2 0 1
1980  7 1  0 0 1 -1 -1 50  11 19 11 3 4 2 0
1981  7 1  0 0 1 -1 -1 50  6 12 17 9 4 1 1
1982  7 1  0 0 1 -1 -1 50  2 14 24 5 3 2 0
1983  7 1  0 0 1 -1 -1 50  18 7 11 5 7 1 1
1984  7 1  0 0 1 -1 -1 50  5 29 5 3 4 3 1
1985  7 1  0 0 1 -1 -1 50  4 9 24 3 2 6 2
1986  7 1  0 0 1 -1 -1 50  4 8 10 17 1 3 7
1987  7 1  0 0 1 -1 -1 50  11 9 8 5 10 5 2
1988  7 1  0 0 1 -1 -1 50  6 18 10 9 1 2 4
1989  7 1  0 0 1 -1 -1 50  6 12 16 10 2 1 3
1990  7 1  0 0 1 -1 -1 50  2 12 7 18 7 0 4
1991  7 1  0 0 1 -1 -1 75  24 16 13 8 7 3 4
1992  7 1  0 0 1 -1 -1 75  12 33 10 12 3 4 1
1993  7 1  0 0 1 -1 -1 75  10 16 28 12 7 2 0
1994  7 1  0 0 1 -1 -1 75  11 9 21 27 4 2 1
1995  7 1  0 0 1 -1 -1 75  6 15 8 24 16 2 4
1996  7 1  0 0 1 -1 -1 75  9 8 10 13 19 12 4
1997  7 1  0 0 1 -1 -1 75  13 8 8 18 8 14 6
1998  7 1  0 0 1 -1 -1 75  8 19 25 7 3 4 9
1999  7 1  0 0 1 -1 -1 75  10 17 18 14 7 4 5
2000  7 1  0 0 1 -1 -1 75  18 15 15 14 3 5 5
2001  7 1  0 0 1 -1 -1 75  15 27 11 10 5 4 3
2002  7 1  0 0 1 -1 -1 75  4 13 36 14 4 1 3
2003  7 1  0 0 1 -1 -1 75  8 13 17 24 10 2 1
2004  7 1  0 0 1 -1 -1 75  24 7 12 20 10 1 1
2005  7 1  0 0 1 -1 -1 75  8 22 9 18 6 12 0
2006  7 1  0 0 1 -1 -1 75  5 18 29 7 4 11 1
2007  7 1  0 0 1 -1 -1 75  6 8 24 25 10 2 0
2008  7 1  0 0 1 -1 -1 75  8 15 7 12 21 5 7
2009  7 1  0 0 1 -1 -1 75  15 13 14 2 8 17 6
2010  7 1  0 0 1 -1 -1 75  9 31 14 9 3 5 4
2011  7 1  0 0 1 -1 -1 75  9 21 30 10 2 1 2
2012  7 1  0 0 1 -1 -1 75  12 25 18 9 2 6 3
2013  7 1  0 0 1 -1 -1 75  14 31 11 8 7 2 2
2014  7 1  0 0 1 -1 -1 75  14 38 13 3 4 1 2
2015  7 1  0 0 1 -1 -1 75  20 26 17 4 6 0 2
2016  7 1  0 0 1 -1 -1 75  22 27 8 9 3 4 2
2017  7 1  0 0 1 -1 -1 75  11 40 17 2 3 1 1
2018  7 1  0 0 1 -1 -1 75  13 18 24 11 6 2 1
2019  7 1  0 0 1 -1 -1 75  30 17 8 10 7 0 3
2020  7 1  0 0 1 -1 -1 75  12 45 10 5 3 0 0
2021  7 1  0 0 1 -1 -1 75  11 19 34 6 2 1 2
2022  7 1  0 0 1 -1 -1 75  9 13 15 27 5 1 5
2023  7 1  0 0 1 -1 -1 75  4 24 16 18 10 1 2
2024  7 1  0 0 1 -1 -1 75  8 16 24 10 9 6 2
2025  7 -1  0 0 1 -1 -1 75  9 16 18 16 5 5 6
1996  4 2  0 0 1 -1 -1 25  0 10 3 7 1 3 1
1997  4 2  0 0 1 -1 -1 25  0 10 11 0 1 1 2
1998  4 2  0 0 1 -1 -1 25  0 9 7 2 1 3 3
1999  4 2  0 0 1 -1 -1 25  0 14 4 2 1 1 3
2000  4 2  0 0 1 -1 -1 25  0 12 3 4 2 1 3
2001  4 2  0 0 1 -1 -1 25  0 14 2 6 1 1 1
2002  4 2  0 0 1 -1 -1 25  0 11 8 3 0 0 3
2003  4 2  0 0 1 -1 -1 25  0 10 9 3 1 1 1
2005  4 2  0 0 1 -1 -1 25  0 21 2 0 1 1 0
2006  4 2  0 0 1 -1 -1 25  0 9 14 1 0 1 0
2007  4 2  0 0 1 -1 -1 25  0 5 8 10 2 0 0
2008  4 2  0 0 1 -1 -1 25  0 8 6 6 4 1 0
2009  4 2  0 0 1 -1 -1 25  0 15 2 0 3 3 2
2010  4 2  0 0 1 -1 -1 25  0 14 4 3 1 0 3
2011  4 2  0 0 1 -1 -1 25  0 12 5 2 0 2 4
2013  4 2  0 0 1 -1 -1 25  0 18 2 2 2 0 1
2014  4 2  0 0 1 -1 -1 25  0 16 5 0 1 1 2
2015  4 2  0 0 1 -1 -1 25  0 12 7 5 0 0 1
2016  4 2  0 0 1 -1 -1 25  0 14 8 2 0 0 1
2017  4 2  0 0 1 -1 -1 25  0 16 6 2 0 0 1
2018  4 2  0 0 1 -1 -1 25  0 11 8 3 1 0 2
2019  4 2  0 0 1 -1 -1 25  0 14 3 3 3 2 0
2020  4 2  0 0 1 -1 -1 25  0 18 5 1 1 0 0
2021  4 2  0 0 1 -1 -1 25  0 12 11 1 0 1 0
2022  4 2  0 0 1 -1 -1 25  0 12 6 4 1 2 0
2023  4 2  0 0 1 -1 -1 25  0 17 1 3 2 2 0
2024  4 2  0 0 1 -1 -1 25  0 7 10 2 4 2 0
2025  4 2  0 0 1 -1 -1 25  0 13 3 6 2 0 1
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
# Sizefreq data. Defined by method because a fleet can use multiple methods
0 # N sizefreq methods to read (or -1 for expanded options)
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
 # Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
 # feature not yet implemented
#
999

