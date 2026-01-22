#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:14 2026
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version: 
#C file write time: 2021-05-25 20:06:11
#_bootstrap file: 1  irand_seed: 1769079974 first rand#: 1.13562
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
-999 1 1 138927 0.05
1978 1 1 136528 0.05
1979 1 1 155467 0.05
1980 1 1 204238 0.05
1981 1 1 197713 0.05
1982 1 1 204127 0.05
1983 1 1 179043 0.05
1984 1 1 208523 0.05
1985 1 1 211703 0.05
1986 1 1 179100 0.05
1987 1 1 175006 0.05
1988 1 1 162159 0.05
1989 1 1 139849 0.05
1990 1 1 143384 0.05
1991 1 1 125441 0.05
1992 1 1 130315 0.05
1993 1 1 134375 0.05
1994 1 1 135955 0.05
1995 1 1 119526 0.05
1996 1 1 119256 0.05
1997 1 1 123807 0.05
1998 1 1 101552 0.05
1999 1 1 93489.3 0.05
2000 1 1 79728.3 0.05
2001 1 1 105709 0.05
2002 1 1 101655 0.05
2003 1 1 95491 0.05
2004 1 1 94633 0.05
2005 1 1 94753.2 0.05
2006 1 1 80946 0.05
2007 1 1 91830.2 0.05
2008 1 1 102870 0.05
2009 1 1 81551.1 0.05
2010 1 1 89750 0.05
2011 1 1 85398.8 0.05
2012 1 1 57638.7 0.05
2013 1 1 48277.4 0.05
2014 1 1 26509.8 0.05
2015 1 1 19230.2 0.05
2016 1 1 21539.8 0.05
2017 1 1 21969.6 0.05
2018 1 1 14514.8 0.05
2019 1 1 13134.6 0.05
2020 1 1 22912.1 0.05
2021 1 1 38662 0.05
2022 1 1 41525.6 0.05
2023 1 1 47092 0.05
2024 1 1 50658.2 0.05
2025 1 1 51183 0.05
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
1996 4 2 1.31328e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.51581e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 8.69693e+06 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.13391e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 1.87765e+07 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.37926e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 2.22625e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.04275e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.29919e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 1.65665e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.03384e+07 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 6.17858e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 3.59118e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 7.02934e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 3.15948e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 3.34956e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 4.94844e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 3.79976e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 5.43662e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 5.27073e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 3.72007e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 6.51438e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 1.45195e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.08296e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 -2 1.46473e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 -2 1.32729e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 -2 9.98494e+06 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.4711e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 1.19326e+06 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 468151 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 261423 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 568012 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 612323 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 152534 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 144696 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 262016 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 253110 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 -3 412649 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 1.69712e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 4.31508e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 5.65774e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 4.81519e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 4.32912e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 2.55758e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 3.50059e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 395103 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 1.49333e+06 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 334094 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 2.06651e+06 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 1.86981e+06 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.54794e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 413396 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 664611 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 2.21322e+07 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 1.07248e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 428378 0.25 #_orig_obs: 656732 Rec_survey
2022 10 -4 6.52779e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 -4 1.49774e+07 0.25 #_orig_obs: 61011 Rec_survey
2024 10 -4 1.65253e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 8.07143e+06 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  12 22 10 2 4 0 0
1979  7 1  0 0 1 -1 -1 50  14 17 12 7 0 0 0
1980  7 1  0 0 1 -1 -1 50  8 11 21 7 2 1 0
1981  7 1  0 0 1 -1 -1 50  2 16 22 5 4 0 1
1982  7 1  0 0 1 -1 -1 50  2 19 15 8 4 2 0
1983  7 1  0 0 1 -1 -1 50  13 10 11 8 5 2 1
1984  7 1  0 0 1 -1 -1 50  7 24 3 5 7 4 0
1985  7 1  0 0 1 -1 -1 50  7 5 27 5 0 2 4
1986  7 1  0 0 1 -1 -1 50  6 18 8 12 3 1 2
1987  7 1  0 0 1 -1 -1 50  8 10 11 8 12 1 0
1988  7 1  0 0 1 -1 -1 50  8 9 2 11 6 10 4
1989  7 1  0 0 1 -1 -1 50  7 7 13 9 6 4 4
1990  7 1  0 0 1 -1 -1 50  9 8 7 14 7 1 4
1991  7 1  0 0 1 -1 -1 75  25 15 12 9 11 1 2
1992  7 1  0 0 1 -1 -1 75  15 31 9 7 4 4 5
1993  7 1  0 0 1 -1 -1 75  7 28 25 8 3 3 1
1994  7 1  0 0 1 -1 -1 75  1 9 21 31 8 2 3
1995  7 1  0 0 1 -1 -1 75  6 10 9 27 18 2 3
1996  7 1  0 0 1 -1 -1 75  6 9 15 10 14 19 2
1997  7 1  0 0 1 -1 -1 75  5 16 14 12 9 12 7
1998  7 1  0 0 1 -1 -1 75  17 18 15 9 7 6 3
1999  7 1  0 0 1 -1 -1 75  19 17 15 15 2 4 3
2000  7 1  0 0 1 -1 -1 75  19 13 13 18 7 2 3
2001  7 1  0 0 1 -1 -1 75  12 30 12 10 7 2 2
2002  7 1  0 0 1 -1 -1 75  7 24 24 10 3 4 3
2003  7 1  0 0 1 -1 -1 75  9 16 9 33 7 1 0
2004  7 1  0 0 1 -1 -1 75  15 11 9 24 13 2 1
2005  7 1  0 0 1 -1 -1 75  13 35 5 2 10 9 1
2006  7 1  0 0 1 -1 -1 75  4 22 31 10 3 3 2
2007  7 1  0 0 1 -1 -1 75  8 10 18 33 4 2 0
2008  7 1  0 0 1 -1 -1 75  11 11 6 13 18 8 8
2009  7 1  0 0 1 -1 -1 75  13 24 12 4 8 13 1
2010  7 1  0 0 1 -1 -1 75  9 26 16 5 7 6 6
2011  7 1  0 0 1 -1 -1 75  12 12 16 19 2 4 10
2012  7 1  0 0 1 -1 -1 75  10 18 20 14 4 3 6
2013  7 1  0 0 1 -1 -1 75  18 25 18 3 7 1 3
2014  7 1  0 0 1 -1 -1 75  9 29 16 12 1 2 6
2015  7 1  0 0 1 -1 -1 75  25 19 14 8 5 2 2
2016  7 1  0 0 1 -1 -1 75  20 29 13 6 3 1 3
2017  7 1  0 0 1 -1 -1 75  5 34 26 7 3 0 0
2018  7 1  0 0 1 -1 -1 75  17 12 22 13 7 2 2
2019  7 1  0 0 1 -1 -1 75  29 21 9 11 2 3 0
2020  7 1  0 0 1 -1 -1 75  5 47 12 5 4 1 1
2021  7 1  0 0 1 -1 -1 75  6 22 31 10 1 3 2
2022  7 1  0 0 1 -1 -1 75  10 17 15 21 9 1 2
2023  7 1  0 0 1 -1 -1 75  13 30 12 5 13 0 2
2024  7 1  0 0 1 -1 -1 75  15 20 16 5 6 10 3
2025  7 -1  0 0 1 -1 -1 75  14 25 22 6 4 1 3
1996  4 2  0 0 1 -1 -1 25  0 6 4 2 7 4 2
1997  4 2  0 0 1 -1 -1 25  0 11 5 3 1 5 0
1998  4 2  0 0 1 -1 -1 25  0 9 10 0 3 0 3
1999  4 2  0 0 1 -1 -1 25  0 15 5 4 0 0 1
2000  4 2  0 0 1 -1 -1 25  0 15 6 2 1 0 1
2001  4 2  0 0 1 -1 -1 25  0 22 1 0 1 0 1
2002  4 2  0 0 1 -1 -1 25  0 7 13 2 3 0 0
2003  4 2  0 0 1 -1 -1 25  0 11 5 5 4 0 0
2005  4 2  0 0 1 -1 -1 25  0 18 5 1 1 0 0
2006  4 2  0 0 1 -1 -1 25  0 9 13 1 0 2 0
2007  4 2  0 0 1 -1 -1 25  0 5 4 12 1 1 2
2008  4 2  0 0 1 -1 -1 25  0 9 2 4 7 0 3
2009  4 2  0 0 1 -1 -1 25  0 9 2 6 5 2 1
2010  4 2  0 0 1 -1 -1 25  0 13 5 2 0 3 2
2011  4 2  0 0 1 -1 -1 25  0 10 8 5 1 0 1
2013  4 2  0 0 1 -1 -1 25  0 14 4 1 4 1 1
2014  4 2  0 0 1 -1 -1 25  0 21 2 1 1 0 0
2015  4 2  0 0 1 -1 -1 25  0 8 12 2 1 1 1
2016  4 2  0 0 1 -1 -1 25  0 20 2 0 2 1 0
2017  4 2  0 0 1 -1 -1 25  0 14 7 1 2 1 0
2018  4 2  0 0 1 -1 -1 25  0 12 9 2 1 1 0
2019  4 2  0 0 1 -1 -1 25  0 13 3 4 2 2 1
2020  4 2  0 0 1 -1 -1 25  0 18 3 1 3 0 0
2021  4 2  0 0 1 -1 -1 25  0 11 11 2 0 0 1
2022  4 2  0 0 1 -1 -1 25  0 7 6 10 2 0 0
2023  4 2  0 0 1 -1 -1 25  0 13 8 1 2 0 1
2024  4 2  0 0 1 -1 -1 25  0 17 4 1 2 1 0
2025  4 2  0 0 1 -1 -1 25  0 11 5 6 1 0 2
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

