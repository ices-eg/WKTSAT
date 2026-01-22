#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:19 2026
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version: 
#C file write time: 2021-05-25 20:06:11
#_bootstrap file: 1  irand_seed: 1769079979 first rand#: -1.26178
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
-999 1 1 143789 0.05
1978 1 1 134807 0.05
1979 1 1 156308 0.05
1980 1 1 188094 0.05
1981 1 1 210991 0.05
1982 1 1 198518 0.05
1983 1 1 183540 0.05
1984 1 1 201120 0.05
1985 1 1 208475 0.05
1986 1 1 197409 0.05
1987 1 1 176579 0.05
1988 1 1 160253 0.05
1989 1 1 148247 0.05
1990 1 1 157599 0.05
1991 1 1 133130 0.05
1992 1 1 130373 0.05
1993 1 1 139200 0.05
1994 1 1 137307 0.05
1995 1 1 119274 0.05
1996 1 1 103794 0.05
1997 1 1 121960 0.05
1998 1 1 117787 0.05
1999 1 1 98424.2 0.05
2000 1 1 89052.6 0.05
2001 1 1 100004 0.05
2002 1 1 90492.7 0.05
2003 1 1 101247 0.05
2004 1 1 95012.9 0.05
2005 1 1 97392.6 0.05
2006 1 1 93885 0.05
2007 1 1 102645 0.05
2008 1 1 103695 0.05
2009 1 1 86400.3 0.05
2010 1 1 96141.4 0.05
2011 1 1 79512.9 0.05
2012 1 1 51060.3 0.05
2013 1 1 37774.5 0.05
2014 1 1 27195.8 0.05
2015 1 1 20359.5 0.05
2016 1 1 22280.7 0.05
2017 1 1 21843.9 0.05
2018 1 1 15987.6 0.05
2019 1 1 14193.6 0.05
2020 1 1 22666.9 0.05
2021 1 1 38281.2 0.05
2022 1 1 43232.9 0.05
2023 1 1 47011.5 0.05
2024 1 1 48463.5 0.05
2025 1 1 50283.2 0.05
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
1996 4 2 1.44791e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.06902e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 1.12245e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.28838e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 8.6171e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 2.21937e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.51564e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.3479e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.50204e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 2.8133e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.29483e+07 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 6.29344e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 7.34004e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 7.21976e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 3.3611e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 1.74468e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 2.87602e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 3.741e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 4.28868e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 7.03009e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 3.57879e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 4.92266e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 1.92083e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 -2 1.14524e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 -2 1.27344e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 -2 1.48049e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 -2 2.02859e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.71639e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 528522 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 441407 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 540480 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 319517 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 523005 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 345961 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 85062.1 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 308594 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 390179 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 -3 699778 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 1.16396e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 2.47551e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 1.01435e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 1.45954e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 4.48343e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 1.49816e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 1.37625e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 243520 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 1.7048e+06 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 537301 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 116959 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 1.04006e+06 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 388132 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 194106 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 2.27469e+06 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 1.15904e+07 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 1.06143e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 -4 3.69651e+06 0.25 #_orig_obs: 656732 Rec_survey
2022 10 -4 6.74985e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 -4 5.39912e+06 0.25 #_orig_obs: 61011 Rec_survey
2024 10 -4 1.48351e+07 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 8.65881e+06 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  14 13 16 3 2 2 0
1979  7 1  0 0 1 -1 -1 50  11 14 15 5 1 2 2
1980  7 1  0 0 1 -1 -1 50  16 12 16 5 1 0 0
1981  7 1  0 0 1 -1 -1 50  2 26 12 6 2 2 0
1982  7 1  0 0 1 -1 -1 50  3 14 21 8 3 0 1
1983  7 1  0 0 1 -1 -1 50  17 11 9 7 2 3 1
1984  7 1  0 0 1 -1 -1 50  3 25 5 3 7 6 1
1985  7 1  0 0 1 -1 -1 50  6 9 25 4 2 3 1
1986  7 1  0 0 1 -1 -1 50  3 13 10 15 4 2 3
1987  7 1  0 0 1 -1 -1 50  11 12 6 6 7 6 2
1988  7 1  0 0 1 -1 -1 50  5 14 8 12 4 5 2
1989  7 1  0 0 1 -1 -1 50  8 5 15 10 5 1 6
1990  7 1  0 0 1 -1 -1 50  8 6 11 17 3 2 3
1991  7 1  0 0 1 -1 -1 75  22 16 12 10 10 2 3
1992  7 1  0 0 1 -1 -1 75  15 27 6 12 10 2 3
1993  7 1  0 0 1 -1 -1 75  5 27 24 11 2 4 2
1994  7 1  0 0 1 -1 -1 75  2 11 25 30 4 0 3
1995  7 1  0 0 1 -1 -1 75  4 7 15 24 14 7 4
1996  7 1  0 0 1 -1 -1 75  13 8 14 14 13 11 2
1997  7 1  0 0 1 -1 -1 75  11 14 11 13 7 15 4
1998  7 1  0 0 1 -1 -1 75  8 15 15 12 8 3 14
1999  7 1  0 0 1 -1 -1 75  13 19 14 18 3 2 6
2000  7 1  0 0 1 -1 -1 75  28 8 19 9 6 2 3
2001  7 1  0 0 1 -1 -1 75  13 33 13 12 3 0 1
2002  7 1  0 0 1 -1 -1 75  4 12 41 12 5 0 1
2003  7 1  0 0 1 -1 -1 75  4 13 21 28 7 2 0
2004  7 1  0 0 1 -1 -1 75  23 8 10 21 11 2 0
2005  7 1  0 0 1 -1 -1 75  6 32 13 10 7 7 0
2006  7 1  0 0 1 -1 -1 75  1 23 37 7 4 1 2
2007  7 1  0 0 1 -1 -1 75  10 8 21 26 3 4 3
2008  7 1  0 0 1 -1 -1 75  12 10 5 11 22 11 4
2009  7 1  0 0 1 -1 -1 75  9 23 9 10 8 14 2
2010  7 1  0 0 1 -1 -1 75  14 23 21 8 1 0 8
2011  7 1  0 0 1 -1 -1 75  8 19 26 10 4 3 5
2012  7 1  0 0 1 -1 -1 75  14 17 19 11 9 0 5
2013  7 1  0 0 1 -1 -1 75  14 31 14 9 0 2 5
2014  7 1  0 0 1 -1 -1 75  15 28 13 7 3 5 4
2015  7 1  0 0 1 -1 -1 75  23 18 15 9 6 1 3
2016  7 1  0 0 1 -1 -1 75  20 23 16 8 4 3 1
2017  7 1  0 0 1 -1 -1 75  9 36 18 7 2 0 3
2018  7 1  0 0 1 -1 -1 75  6 19 24 19 5 0 2
2019  7 1  0 0 1 -1 -1 75  27 19 7 8 10 4 0
2020  7 1  0 0 1 -1 -1 75  5 40 12 8 6 2 2
2021  7 1  0 0 1 -1 -1 75  26 11 21 7 2 7 1
2022  7 1  0 0 1 -1 -1 75  19 28 12 10 0 3 3
2023  7 1  0 0 1 -1 -1 75  18 20 18 6 7 3 3
2024  7 1  0 0 1 -1 -1 75  13 21 17 13 2 7 2
2025  7 -1  0 0 1 -1 -1 75  9 26 21 6 4 6 3
1996  4 2  0 0 1 -1 -1 25  0 6 5 1 8 5 0
1997  4 2  0 0 1 -1 -1 25  0 14 4 2 1 2 2
1998  4 2  0 0 1 -1 -1 25  0 13 5 2 0 1 4
1999  4 2  0 0 1 -1 -1 25  0 11 4 5 3 0 2
2000  4 2  0 0 1 -1 -1 25  0 13 10 1 0 1 0
2001  4 2  0 0 1 -1 -1 25  0 18 2 2 1 0 2
2002  4 2  0 0 1 -1 -1 25  0 14 11 0 0 0 0
2003  4 2  0 0 1 -1 -1 25  0 9 8 6 2 0 0
2005  4 2  0 0 1 -1 -1 25  0 18 3 1 2 0 1
2006  4 2  0 0 1 -1 -1 25  0 11 11 2 1 0 0
2007  4 2  0 0 1 -1 -1 25  0 6 7 12 0 0 0
2008  4 2  0 0 1 -1 -1 25  0 7 7 3 6 2 0
2009  4 2  0 0 1 -1 -1 25  0 12 4 0 3 4 2
2010  4 2  0 0 1 -1 -1 25  0 16 2 2 0 0 5
2011  4 2  0 0 1 -1 -1 25  0 12 4 2 2 1 4
2013  4 2  0 0 1 -1 -1 25  0 13 5 4 2 1 0
2014  4 2  0 0 1 -1 -1 25  0 16 3 3 1 1 1
2015  4 2  0 0 1 -1 -1 25  0 13 7 2 3 0 0
2016  4 2  0 0 1 -1 -1 25  0 18 3 3 1 0 0
2017  4 2  0 0 1 -1 -1 25  0 12 10 2 1 0 0
2018  4 2  0 0 1 -1 -1 25  0 8 9 5 2 1 0
2019  4 2  0 0 1 -1 -1 25  0 17 2 3 2 0 1
2020  4 2  0 0 1 -1 -1 25  0 20 4 0 0 1 0
2021  4 2  0 0 1 -1 -1 25  0 10 12 3 0 0 0
2022  4 2  0 0 1 -1 -1 25  0 15 1 5 3 1 0
2023  4 2  0 0 1 -1 -1 25  0 8 9 4 4 0 0
2024  4 2  0 0 1 -1 -1 25  0 12 4 6 1 0 2
2025  4 2  0 0 1 -1 -1 25  0 13 10 0 0 1 1
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

