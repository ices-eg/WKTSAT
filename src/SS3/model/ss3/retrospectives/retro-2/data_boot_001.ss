#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:05 2026
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version: 
#C file write time: 2021-05-25 20:06:11
#_bootstrap file: 1  irand_seed: 1769079965 first rand#: 1.83617
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
-999 1 1 508659 0.05
1978 1 1 142926 0.05
1979 1 1 177111 0.05
1980 1 1 189076 0.05
1981 1 1 213253 0.05
1982 1 1 185186 0.05
1983 1 1 183606 0.05
1984 1 1 209127 0.05
1985 1 1 199713 0.05
1986 1 1 187287 0.05
1987 1 1 189284 0.05
1988 1 1 166130 0.05
1989 1 1 144122 0.05
1990 1 1 153510 0.05
1991 1 1 129574 0.05
1992 1 1 136376 0.05
1993 1 1 162183 0.05
1994 1 1 142168 0.05
1995 1 1 127846 0.05
1996 1 1 122433 0.05
1997 1 1 116317 0.05
1998 1 1 109062 0.05
1999 1 1 97772.2 0.05
2000 1 1 84630.1 0.05
2001 1 1 109268 0.05
2002 1 1 100779 0.05
2003 1 1 106259 0.05
2004 1 1 93990.4 0.05
2005 1 1 98449.1 0.05
2006 1 1 85800.4 0.05
2007 1 1 101823 0.05
2008 1 1 94163.7 0.05
2009 1 1 90854.8 0.05
2010 1 1 86647.2 0.05
2011 1 1 82056.9 0.05
2012 1 1 54235.8 0.05
2013 1 1 43240.6 0.05
2014 1 1 25869.7 0.05
2015 1 1 22116 0.05
2016 1 1 21191.1 0.05
2017 1 1 23435 0.05
2018 1 1 13908.2 0.05
2019 1 1 13888.6 0.05
2020 1 1 21034.1 0.05
2021 1 1 43381.5 0.05
2022 1 1 42099.3 0.05
2023 1 1 51066.8 0.05
2024 1 1 50430.3 0.05
2025 1 1 53462.3 0.05
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
1996 4 2 3.32318e+08 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 5.00422e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 3.31632e+08 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 7.82928e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 6.3637e+07 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.86883e+08 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.25489e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 2.83411e+08 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.03981e+08 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 5.77076e+08 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 3.01195e+08 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 4.56468e+08 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 7.88407e+08 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 1.42661e+08 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 2.07874e+08 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 4.29195e+08 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 1.68779e+09 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 1.724e+08 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 1.18886e+08 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 2.8912e+08 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 1.75767e+08 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 2.6626e+08 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 2.63376e+08 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 3.44952e+08 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 2 6.65578e+08 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 2 2.03066e+09 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 -2 3.41306e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 9.53611e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 1.02677e+06 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 2.28661e+06 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 8.54827e+06 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 5.66598e+06 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 3.07837e+06 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 7.45002e+06 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 4.34336e+06 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 2.16635e+07 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 4.70205e+06 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 3 1.68732e+06 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 2.61709e+09 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 4.2089e+10 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 3.83698e+09 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 6.51882e+11 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 3.43314e+10 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 2.15014e+12 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 1.5176e+11 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 9.46527e+09 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 1.50501e+13 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 1.58509e+10 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 2.1774e+12 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 1.52173e+10 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 8.10454e+09 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 7.92967e+10 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 5.51221e+11 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 1.05177e+12 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 3.04375e+09 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 7.18398e+11 0.25 #_orig_obs: 656732 Rec_survey
2022 10 4 7.80434e+10 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 4 9.81427e+08 0.25 #_orig_obs: 61011 Rec_survey
2024 10 -4 2.6145e+09 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 1.43295e+10 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  5 11 10 10 7 4 3
1979  7 1  0 0 1 -1 -1 50  3 5 11 13 4 8 6
1980  7 1  0 0 1 -1 -1 50  5 4 6 16 7 8 4
1981  7 1  0 0 1 -1 -1 50  2 9 12 11 6 3 7
1982  7 1  0 0 1 -1 -1 50  3 4 15 12 7 5 4
1983  7 1  0 0 1 -1 -1 50  6 5 9 12 9 6 3
1984  7 1  0 0 1 -1 -1 50  4 13 10 10 4 5 4
1985  7 1  0 0 1 -1 -1 50  2 5 17 8 9 6 3
1986  7 1  0 0 1 -1 -1 50  5 7 6 14 8 6 4
1987  7 1  0 0 1 -1 -1 50  3 6 7 8 13 8 5
1988  7 1  0 0 1 -1 -1 50  9 10 1 12 7 8 3
1989  7 1  0 0 1 -1 -1 50  5 3 2 12 10 3 15
1990  7 1  0 0 1 -1 -1 50  9 7 0 20 6 4 4
1991  7 1  0 0 1 -1 -1 75  29 6 4 13 10 5 8
1992  7 1  0 0 1 -1 -1 75  18 16 4 13 10 9 5
1993  7 1  0 0 1 -1 -1 75  9 20 8 12 9 11 6
1994  7 1  0 0 1 -1 -1 75  6 10 6 34 7 4 8
1995  7 1  0 0 1 -1 -1 75  3 8 2 25 26 4 7
1996  7 1  0 0 1 -1 -1 75  17 9 1 9 18 20 1
1997  7 1  0 0 1 -1 -1 75  11 9 3 18 12 8 14
1998  7 1  0 0 1 -1 -1 75  16 8 5 21 8 10 7
1999  7 1  0 0 1 -1 -1 75  3 9 1 34 12 9 7
2000  7 1  0 0 1 -1 -1 75  21 11 2 22 9 7 3
2001  7 1  0 0 1 -1 -1 75  11 22 1 23 5 6 7
2002  7 1  0 0 1 -1 -1 75  8 10 10 18 12 12 5
2003  7 1  0 0 1 -1 -1 75  2 8 4 37 10 9 5
2004  7 1  0 0 1 -1 -1 75  21 6 7 11 20 6 4
2005  7 1  0 0 1 -1 -1 75  7 36 1 11 4 13 3
2006  7 1  0 0 1 -1 -1 75  13 31 4 4 4 12 7
2007  7 1  0 0 1 -1 -1 75  14 13 3 28 5 7 5
2008  7 1  0 0 1 -1 -1 75  24 13 0 7 20 4 7
2009  7 1  0 0 1 -1 -1 75  25 16 1 9 5 14 5
2010  7 1  0 0 1 -1 -1 75  27 28 0 6 2 8 4
2011  7 1  0 0 1 -1 -1 75  31 19 2 4 2 6 11
2012  7 1  0 0 1 -1 -1 75  27 19 1 15 3 2 8
2013  7 1  0 0 1 -1 -1 75  31 23 1 3 5 2 10
2014  7 1  0 0 1 -1 -1 75  27 33 1 4 3 6 1
2015  7 1  0 0 1 -1 -1 75  35 20 1 8 3 6 2
2016  7 1  0 0 1 -1 -1 75  37 20 1 4 4 4 5
2017  7 1  0 0 1 -1 -1 75  14 39 2 4 6 6 4
2018  7 1  0 0 1 -1 -1 75  27 15 4 12 5 6 6
2019  7 1  0 0 1 -1 -1 75  49 10 0 4 7 3 2
2020  7 1  0 0 1 -1 -1 75  16 41 0 4 4 4 6
2021  7 1  0 0 1 -1 -1 75  16 25 0 9 6 8 11
2022  7 1  0 0 1 -1 -1 75  20 20 1 21 3 3 7
2023  7 1  0 0 1 -1 -1 75  23 13 0 5 16 5 13
2024  7 1  0 0 1 -1 -1 75  33 16 1 7 4 7 7
2025  7 -1  0 0 1 -1 -1 75  36 22 1 7 2 2 5
1996  4 2  0 0 1 -1 -1 25  0 5 6 6 3 3 2
1997  4 2  0 0 1 -1 -1 25  0 7 4 2 0 6 6
1998  4 2  0 0 1 -1 -1 25  0 9 8 2 1 1 4
1999  4 2  0 0 1 -1 -1 25  0 8 9 2 1 3 2
2000  4 2  0 0 1 -1 -1 25  0 11 3 3 4 4 0
2001  4 2  0 0 1 -1 -1 25  0 15 0 2 3 3 2
2002  4 2  0 0 1 -1 -1 25  0 11 8 4 0 1 1
2003  4 2  0 0 1 -1 -1 25  0 9 3 10 1 1 1
2005  4 2  0 0 1 -1 -1 25  0 15 2 3 1 1 3
2006  4 2  0 0 1 -1 -1 25  0 14 5 1 1 1 3
2007  4 2  0 0 1 -1 -1 25  0 4 8 8 3 2 0
2008  4 2  0 0 1 -1 -1 25  0 5 2 3 7 1 7
2009  4 2  0 0 1 -1 -1 25  0 4 6 4 2 6 3
2010  4 2  0 0 1 -1 -1 25  0 12 3 1 0 2 7
2011  4 2  0 0 1 -1 -1 25  0 8 7 1 2 0 7
2013  4 2  0 0 1 -1 -1 25  0 11 4 3 2 1 4
2014  4 2  0 0 1 -1 -1 25  0 14 4 1 2 2 2
2015  4 2  0 0 1 -1 -1 25  0 8 6 2 2 1 6
2016  4 2  0 0 1 -1 -1 25  0 11 3 3 4 1 3
2017  4 2  0 0 1 -1 -1 25  0 8 4 3 5 1 4
2018  4 2  0 0 1 -1 -1 25  0 4 9 5 3 1 3
2019  4 2  0 0 1 -1 -1 25  0 7 3 11 0 1 3
2020  4 2  0 0 1 -1 -1 25  0 15 5 1 2 0 2
2021  4 2  0 0 1 -1 -1 25  0 4 6 3 4 4 4
2022  4 2  0 0 1 -1 -1 25  0 8 1 9 0 1 6
2023  4 2  0 0 1 -1 -1 25  0 6 1 2 9 1 6
2024  4 2  0 0 1 -1 -1 25  0 9 1 3 2 4 6
2025  4 2  0 0 1 -1 -1 25  0 13 5 2 0 0 5
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

