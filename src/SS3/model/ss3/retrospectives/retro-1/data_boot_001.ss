#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:01 2026
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version: 
#C file write time: 2021-05-25 20:06:11
#_bootstrap file: 1  irand_seed: 1769079961 first rand#: 0.202306
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
-999 1 1 142015 0.05
1978 1 1 155301 0.05
1979 1 1 143675 0.05
1980 1 1 188147 0.05
1981 1 1 214092 0.05
1982 1 1 201113 0.05
1983 1 1 183733 0.05
1984 1 1 210551 0.05
1985 1 1 201149 0.05
1986 1 1 202279 0.05
1987 1 1 173912 0.05
1988 1 1 158181 0.05
1989 1 1 141493 0.05
1990 1 1 148006 0.05
1991 1 1 134197 0.05
1992 1 1 129596 0.05
1993 1 1 133505 0.05
1994 1 1 139714 0.05
1995 1 1 137353 0.05
1996 1 1 113682 0.05
1997 1 1 115869 0.05
1998 1 1 106241 0.05
1999 1 1 104870 0.05
2000 1 1 91719.2 0.05
2001 1 1 102810 0.05
2002 1 1 105034 0.05
2003 1 1 101006 0.05
2004 1 1 101622 0.05
2005 1 1 96401.1 0.05
2006 1 1 87067.3 0.05
2007 1 1 98480.4 0.05
2008 1 1 102468 0.05
2009 1 1 84326 0.05
2010 1 1 90900.4 0.05
2011 1 1 86808.9 0.05
2012 1 1 55476.1 0.05
2013 1 1 48733 0.05
2014 1 1 29365.8 0.05
2015 1 1 20412 0.05
2016 1 1 23635.2 0.05
2017 1 1 21460.1 0.05
2018 1 1 14895.4 0.05
2019 1 1 14912.2 0.05
2020 1 1 21522.7 0.05
2021 1 1 43816 0.05
2022 1 1 36832.4 0.05
2023 1 1 45938.9 0.05
2024 1 1 52353.6 0.05
2025 1 1 55047.5 0.05
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
1996 4 2 1.16316e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.5936e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 9.95679e+06 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.53847e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 9.03551e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.92946e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.48434e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.73934e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 1.78491e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 2.06434e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 6.31133e+06 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 8.7148e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 5.95543e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 4.92705e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 4.45651e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 2.96097e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 2.94404e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 2.1392e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 3.86668e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 5.3871e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 7.16556e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 5.34518e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 2.17306e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.90917e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 2 1.53763e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 2 1.10844e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 2 2.4887e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.73347e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 449362 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 474518 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 437499 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 302295 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 386080 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 291781 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 105122 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 272164 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 353445 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 3 628879 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 2.94513e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 3.70497e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 4.00995e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 1.90549e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 3.63849e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 9.00013e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 559936 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 379746 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 1.56465e+06 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 1.7414e+06 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 78372.8 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 3.36589e+06 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 2.95629e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 95105.9 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 1.9951e+06 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 846755 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 8.06059e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 898014 0.25 #_orig_obs: 656732 Rec_survey
2022 10 4 3.7844e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 4 315859 0.25 #_orig_obs: 61011 Rec_survey
2024 10 4 9.69797e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 5.66564e+06 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  13 22 12 2 1 0 0
1979  7 1  0 0 1 -1 -1 50  10 18 14 5 2 1 0
1980  7 1  0 0 1 -1 -1 50  9 22 10 5 1 3 0
1981  7 1  0 0 1 -1 -1 50  1 20 20 8 1 0 0
1982  7 1  0 0 1 -1 -1 50  3 12 20 9 2 2 2
1983  7 1  0 0 1 -1 -1 50  16 6 13 8 3 3 1
1984  7 1  0 0 1 -1 -1 50  3 25 6 7 5 4 0
1985  7 1  0 0 1 -1 -1 50  5 11 26 3 1 4 0
1986  7 1  0 0 1 -1 -1 50  3 10 12 20 2 3 0
1987  7 1  0 0 1 -1 -1 50  13 16 9 5 6 0 1
1988  7 1  0 0 1 -1 -1 50  7 13 2 9 6 10 3
1989  7 1  0 0 1 -1 -1 50  6 11 16 5 4 5 3
1990  7 1  0 0 1 -1 -1 50  5 4 14 21 4 0 2
1991  7 1  0 0 1 -1 -1 75  17 15 13 14 10 2 4
1992  7 1  0 0 1 -1 -1 75  11 37 7 12 3 4 1
1993  7 1  0 0 1 -1 -1 75  4 23 32 9 4 2 1
1994  7 1  0 0 1 -1 -1 75  4 14 20 27 7 2 1
1995  7 1  0 0 1 -1 -1 75  6 11 12 23 16 7 0
1996  7 1  0 0 1 -1 -1 75  5 6 14 16 16 16 2
1997  7 1  0 0 1 -1 -1 75  8 14 12 10 8 11 12
1998  7 1  0 0 1 -1 -1 75  12 9 25 8 8 2 11
1999  7 1  0 0 1 -1 -1 75  16 19 16 8 8 3 5
2000  7 1  0 0 1 -1 -1 75  29 11 16 11 4 2 2
2001  7 1  0 0 1 -1 -1 75  18 35 9 6 3 3 1
2002  7 1  0 0 1 -1 -1 75  6 17 34 10 5 1 2
2003  7 1  0 0 1 -1 -1 75  5 5 19 32 10 3 1
2004  7 1  0 0 1 -1 -1 75  20 8 10 16 15 4 2
2005  7 1  0 0 1 -1 -1 75  4 34 12 8 5 11 1
2006  7 1  0 0 1 -1 -1 75  4 19 38 5 3 4 2
2007  7 1  0 0 1 -1 -1 75  10 14 14 28 3 2 4
2008  7 1  0 0 1 -1 -1 75  15 12 9 11 16 9 3
2009  7 1  0 0 1 -1 -1 75  12 20 10 8 7 15 3
2010  7 1  0 0 1 -1 -1 75  9 26 21 5 0 3 11
2011  7 1  0 0 1 -1 -1 75  12 28 18 12 1 2 2
2012  7 1  0 0 1 -1 -1 75  15 25 18 9 3 2 3
2013  7 1  0 0 1 -1 -1 75  19 27 13 8 4 2 2
2014  7 1  0 0 1 -1 -1 75  18 27 13 8 4 3 2
2015  7 1  0 0 1 -1 -1 75  25 22 14 5 3 3 3
2016  7 1  0 0 1 -1 -1 75  17 34 6 8 6 1 3
2017  7 1  0 0 1 -1 -1 75  8 26 27 6 5 2 1
2018  7 1  0 0 1 -1 -1 75  15 17 23 12 3 1 4
2019  7 1  0 0 1 -1 -1 75  29 17 9 13 3 4 0
2020  7 1  0 0 1 -1 -1 75  12 37 15 3 5 2 1
2021  7 1  0 0 1 -1 -1 75  7 15 32 9 5 7 0
2022  7 1  0 0 1 -1 -1 75  17 16 14 21 3 1 3
2023  7 1  0 0 1 -1 -1 75  4 25 14 11 14 3 4
2024  7 1  0 0 1 -1 -1 75  13 14 23 13 5 4 3
2025  7 -1  0 0 1 -1 -1 75  10 33 7 13 3 5 4
1996  4 2  0 0 1 -1 -1 25  0 7 5 3 6 2 2
1997  4 2  0 0 1 -1 -1 25  0 8 5 3 1 4 4
1998  4 2  0 0 1 -1 -1 25  0 10 8 3 0 3 1
1999  4 2  0 0 1 -1 -1 25  0 13 5 3 2 0 2
2000  4 2  0 0 1 -1 -1 25  0 11 6 1 3 2 2
2001  4 2  0 0 1 -1 -1 25  0 19 1 2 0 1 2
2002  4 2  0 0 1 -1 -1 25  0 11 7 2 3 1 1
2003  4 2  0 0 1 -1 -1 25  0 5 7 8 2 2 1
2005  4 2  0 0 1 -1 -1 25  0 18 4 0 1 1 1
2006  4 2  0 0 1 -1 -1 25  0 10 9 2 3 0 1
2007  4 2  0 0 1 -1 -1 25  0 4 6 11 2 0 2
2008  4 2  0 0 1 -1 -1 25  0 8 1 8 6 2 0
2009  4 2  0 0 1 -1 -1 25  0 11 3 2 2 4 3
2010  4 2  0 0 1 -1 -1 25  0 14 7 0 1 1 2
2011  4 2  0 0 1 -1 -1 25  0 10 6 5 1 0 3
2013  4 2  0 0 1 -1 -1 25  0 10 10 3 2 0 0
2014  4 2  0 0 1 -1 -1 25  0 13 4 4 1 3 0
2015  4 2  0 0 1 -1 -1 25  0 15 4 2 2 0 2
2016  4 2  0 0 1 -1 -1 25  0 20 3 2 0 0 0
2017  4 2  0 0 1 -1 -1 25  0 21 4 0 0 0 0
2018  4 2  0 0 1 -1 -1 25  0 9 13 2 0 1 0
2019  4 2  0 0 1 -1 -1 25  0 14 3 6 1 1 0
2020  4 2  0 0 1 -1 -1 25  0 19 4 1 1 0 0
2021  4 2  0 0 1 -1 -1 25  0 11 8 4 2 0 0
2022  4 2  0 0 1 -1 -1 25  0 6 8 10 1 0 0
2023  4 2  0 0 1 -1 -1 25  0 15 4 4 2 0 0
2024  4 2  0 0 1 -1 -1 25  0 6 11 3 2 2 1
2025  4 2  0 0 1 -1 -1 25  0 16 3 4 0 1 1
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

