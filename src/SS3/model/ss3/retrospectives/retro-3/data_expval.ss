#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:10 2026
#_expected_values
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version: 
#C file write time: 2021-05-25 20:06:11
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
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 135674 0.05
1978 1 1 145609 0.05
1979 1 1 157241 0.05
1980 1 1 194802 0.05
1981 1 1 216517 0.05
1982 1 1 206946 0.05
1983 1 1 183837 0.05
1984 1 1 206005 0.05
1985 1 1 208439 0.05
1986 1 1 187363 0.05
1987 1 1 177696 0.05
1988 1 1 161531 0.05
1989 1 1 140961 0.05
1990 1 1 149429 0.05
1991 1 1 132587 0.05
1992 1 1 130250 0.05
1993 1 1 142495 0.05
1994 1 1 136582 0.05
1995 1 1 125280 0.05
1996 1 1 116736 0.05
1997 1 1 115814 0.05
1998 1 1 108924 0.05
1999 1 1 94091 0.05
2000 1 1 85786 0.05
2001 1 1 101957 0.05
2002 1 1 99673 0.05
2003 1 1 97831 0.05
2004 1 1 98020 0.05
2005 1 1 97345 0.05
2006 1 1 87023 0.05
2007 1 1 96469 0.05
2008 1 1 101464 0.05
2009 1 1 87740 0.05
2010 1 1 89571.1 0.05
2011 1 1 80403.2 0.05
2012 1 1 54857 0.05
2013 1 1 45818 0.05
2014 1 1 27937 0.05
2015 1 1 20595 0.05
2016 1 1 22704 0.05
2017 1 1 21911 0.05
2018 1 1 15062 0.05
2019 1 1 13759 0.05
2020 1 1 22143 0.05
2021 1 1 40686 0.05
2022 1 1 40429 0.05
2023 1 1 48386 0.05
2024 1 1 51106 0.05
2025 1 1 53628 0.05
-9999 0 0 0 0
#
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
1996 4 2 1.39059e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.32432e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 1.03123e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.01718e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 8.95079e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.73177e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.6376e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.28577e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.01443e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 1.56257e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 9.91126e+06 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 7.46917e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 6.44711e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 6.12183e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 4.32046e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 3.01459e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 3.23509e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 3.10563e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 4.42182e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 6.09441e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 5.07499e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 6.63432e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 1.52654e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.3093e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 2 1.14605e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 -2 1.15731e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 -2 1.41429e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.56496e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 552320 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 429445 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 506877 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 512335 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 455915 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 211515 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 152294 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 237097 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 508237 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 -3 491611 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 1.82454e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 3.08151e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 1.85732e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 1.6002e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 6.12784e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 1.45836e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 3.02265e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 347148 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 680967 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 1.04712e+06 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 453542 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 879816 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.53748e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 358975 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 1.41605e+06 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 1.19786e+07 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 2.18619e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 1.68385e+06 0.25 #_orig_obs: 656732 Rec_survey
2022 10 4 2.57077e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 -4 5.7907e+06 0.25 #_orig_obs: 61011 Rec_survey
2024 10 -4 6.0149e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 6.25188e+06 0.25 #_orig_obs: 819386 Rec_survey
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
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
6 #_N_LengthBins
 8 12 16 20 24 28
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
#_ParmSelect:  parm number for dirichlet or MV_Tweedie
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
1978  7 1  0 0 1 -1 -1 50  11.0374 20.2304 11.3095 3.91571 1.80583 1.02411 0.677141
1979  7 1  0 0 1 -1 -1 50  10.0213 18.589 14.2736 4.12617 1.59819 0.830907 0.560801
1980  7 1  0 0 1 -1 -1 50  9.45358 17.9931 14.0332 5.41094 1.81462 0.795832 0.498757
1981  7 1  0 0 1 -1 -1 50  5.42111 19.1084 15.2688 5.97091 2.70946 1.00409 0.517228
1982  7 1  0 0 1 -1 -1 50  3.15335 13.5073 19.4342 7.80141 3.60276 1.7865 0.714538
1983  7 1  0 0 1 -1 -1 50  14.4055 7.24871 12.2917 8.56235 4.30543 2.1738 1.01253
1984  7 1  0 0 1 -1 -1 50  3.9706 27.6506 5.92993 4.74408 4.23535 2.30158 1.16786
1985  7 1  0 0 1 -1 -1 50  3.49762 9.63583 26.3294 3.7758 2.69034 2.60202 1.46902
1986  7 1  0 0 1 -1 -1 50  4.33879 10.984 11.6709 15.52 2.69867 2.37465 2.41297
1987  7 1  0 0 1 -1 -1 50  10.8613 10.2993 10.3242 5.41878 8.93407 1.80796 2.35437
1988  7 1  0 0 1 -1 -1 50  5.91156 16.2734 6.6066 6.2251 4.2923 7.72245 2.96858
1989  7 1  0 0 1 -1 -1 50  6.23385 10.58 16.9524 7.10503 3.17556 2.35227 3.60092
1990  7 1  0 0 1 -1 -1 50  6.68467 9.96424 10.0813 15.4329 3.53834 1.69486 2.60378
1991  7 1  0 0 1 -1 -1 75  25.1482 13.2982 11.9031 11.3595 8.73424 2.20983 2.3469
1992  7 1  0 0 1 -1 -1 75  14.0666 31.532 10.5782 9.26619 4.49028 3.4937 1.57299
1993  7 1  0 0 1 -1 -1 75  5.73899 21.2825 28.9301 10.6704 4.51009 2.22659 1.64131
1994  7 1  0 0 1 -1 -1 75  4.90872 9.62633 21.0763 29.2551 6.129 2.45942 1.54505
1995  7 1  0 0 1 -1 -1 75  4.56067 9.4248 11.4934 24.8332 18.7847 4.02288 1.88045
1996  7 1  0 0 1 -1 -1 75  8.1231 9.3571 11.8157 13.9729 16.267 12.5278 2.93643
1997  7 1  0 0 1 -1 -1 75  6.98488 16.7742 11.82 14.2437 8.82239 10.3792 5.97562
1998  7 1  0 0 1 -1 -1 75  11.2063 13.4349 18.6894 12.6066 7.46898 5.03989 6.5539
1999  7 1  0 0 1 -1 -1 75  9.50453 19.0189 13.616 17.7003 6.11204 3.92122 5.127
2000  7 1  0 0 1 -1 -1 75  24.9675 12.6006 14.9031 10.3117 6.57094 2.52968 3.11638
2001  7 1  0 0 1 -1 -1 75  12.6864 31.9734 10.1215 11.4301 4.11658 2.68302 1.98899
2002  7 1  0 0 1 -1 -1 75  6.97012 19.6456 29.3964 10.0565 5.26199 1.99171 1.67765
2003  7 1  0 0 1 -1 -1 75  5.5745 11.4229 19.2389 28.8777 5.632 2.75281 1.50116
2004  7 1  0 0 1 -1 -1 75  21.3435 8.35944 10.4356 17.0173 13.6548 2.73526 1.45416
2005  7 1  0 0 1 -1 -1 75  7.70289 32.5346 8.2224 9.77012 8.36429 6.78648 1.61925
2006  7 1  0 0 1 -1 -1 75  3.08066 17.7243 37.7225 7.12327 3.41954 3.09063 2.83912
2007  7 1  0 0 1 -1 -1 75  5.93932 7.70729 19.3862 29.2979 5.46558 3.06811 4.1357
2008  7 1  0 0 1 -1 -1 75  10.2906 13.2134 7.84693 13.7666 20.709 4.39514 4.77836
2009  7 1  0 0 1 -1 -1 75  13.961 19.6173 11.4504 4.8741 7.76132 12.3901 4.94575
2010  7 1  0 0 1 -1 -1 75  9.77639 26.4071 16.3514 6.77503 2.60541 4.87064 8.21405
2011  7 1  0 0 1 -1 -1 75  10.5219 20.0012 22.3345 9.58385 3.58968 2.10858 6.86023
2012  7 1  0 0 1 -1 -1 75  14.5479 20.6062 16.2516 11.7892 4.80923 2.35472 4.6412
2013  7 1  0 0 1 -1 -1 75  17.1436 24.0337 14.817 7.94607 5.35376 2.55855 3.14733
2014  7 1  0 0 1 -1 -1 75  13.1563 27.6985 17.5609 7.58708 3.69183 2.78733 2.51805
2015  7 1  0 0 1 -1 -1 75  20.308 19.2211 19.0612 8.79085 3.47816 1.93067 2.21001
2016  7 1  0 0 1 -1 -1 75  20.7724 26.1297 12.2301 8.68645 3.82653 1.70357 1.65123
2017  7 1  0 0 1 -1 -1 75  8.51869 31.4981 19.7112 7.0854 4.46798 2.15362 1.56502
2018  7 1  0 0 1 -1 -1 75  15.649 14.1212 25.0229 11.809 3.90321 2.67655 1.81818
2019  7 1  0 0 1 -1 -1 75  30.9995 17.4782 8.07088 10.301 4.79882 1.75515 1.5965
2020  7 1  0 0 1 -1 -1 75  9.49809 40.2379 12.0622 4.34466 4.94166 2.47874 1.43678
2021  7 1  0 0 1 -1 -1 75  7.69555 16.7205 34.1162 8.65611 2.58896 3.18159 2.0411
2022  7 1  0 0 1 -1 -1 75  10.4269 14.844 15.7036 23.1259 5.80644 2.03285 3.06026
2023  7 1  0 0 1 -1 -1 75  15.4579 17.4505 12.4195 9.58893 13.578 3.74571 2.75945
2024  7 1  0 0 1 -1 -1 75  14.2092 23.9628 13.5915 7.1667 5.16541 7.74747 3.15691
2025  7 -1  0 0 1 -1 -1 75  13.1309 22.5536 18.9198 8.14616 3.91219 3.26407 5.07325
1996  4 2  0 0 1 -1 -1 25  0 8.41677 5.07818 3.4059 3.79978 2.99369 1.30569
1997  4 2  0 0 1 -1 -1 25  0 12.1294 4.06181 2.79094 1.6601 2.0845 2.27324
1998  4 2  0 0 1 -1 -1 25  0 10.059 6.85631 2.70186 1.4962 1.17303 2.7136
1999  4 2  0 0 1 -1 -1 25  0 13.2673 4.50641 3.34588 1.11313 0.83084 1.93644
2000  4 2  0 0 1 -1 -1 25  0 11.7002 6.7107 2.68939 1.60231 0.713046 1.5844
2001  4 2  0 0 1 -1 -1 25  0 18.7287 2.81817 1.78631 0.616535 0.437947 0.612362
2002  4 2  0 0 1 -1 -1 25  0 12.2978 9.02915 1.87712 0.862343 0.360876 0.572677
2003  4 2  0 0 1 -1 -1 25  0 9.08356 7.29107 6.20703 1.17064 0.608753 0.638946
2005  4 2  0 0 1 -1 -1 25  0 18.6316 2.23625 1.47244 1.20907 1.004 0.446613
2006  4 2  0 0 1 -1 -1 25  0 9.07051 11.0979 2.02841 0.955065 0.881751 0.966394
2007  4 2  0 0 1 -1 -1 25  0 4.50945 6.5547 9.52323 1.76386 1.02135 1.62742
2008  4 2  0 0 1 -1 -1 25  0 7.94473 2.65333 4.44994 6.6413 1.44666 1.86404
2009  4 2  0 0 1 -1 -1 25  0 11.47 3.7912 1.54527 2.43188 3.91082 1.85081
2010  4 2  0 0 1 -1 -1 25  0 13.4776 4.76034 1.89248 0.719679 1.39951 2.75039
2011  4 2  0 0 1 -1 -1 25  0 10.8482 7.00923 2.89794 1.07404 0.681507 2.48913
2013  4 2  0 0 1 -1 -1 25  0 13.928 4.87981 2.50703 1.67164 0.822077 1.19141
2014  4 2  0 0 1 -1 -1 25  0 14.8157 5.27541 2.18218 1.04922 0.808481 0.868977
2015  4 2  0 0 1 -1 -1 25  0 12.3433 6.84921 3.02888 1.18417 0.675398 0.91906
2016  4 2  0 0 1 -1 -1 25  0 15.7481 4.09271 2.76757 1.20675 0.549498 0.63539
2017  4 2  0 0 1 -1 -1 25  0 15.5382 5.39514 1.85517 1.15385 0.565352 0.492279
2018  4 2  0 0 1 -1 -1 25  0 8.96937 8.96601 4.06225 1.32654 0.922957 0.752869
2019  4 2  0 0 1 -1 -1 25  0 13.7876 3.49282 4.23644 1.9555 0.73074 0.796953
2020  4 2  0 0 1 -1 -1 25  0 18.6622 3.08679 1.05267 1.18055 0.599771 0.417982
2021  4 2  0 0 1 -1 -1 25  0 9.21182 10.7015 2.61826 0.770399 0.959508 0.738513
2022  4 2  0 0 1 -1 -1 25  0 8.84177 5.18669 7.31183 1.82101 0.661385 1.17732
2023  4 2  0 0 1 -1 -1 25  0 10.8297 4.27312 3.14962 4.41398 1.23886 1.09472
2024  4 2  0 0 1 -1 -1 25  0 13.6034 4.27392 2.15011 1.53137 2.31414 1.12708
2025  4 2  0 0 1 -1 -1 25  0 12.6713 5.9035 2.43409 1.15423 1.00091 1.83594
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

