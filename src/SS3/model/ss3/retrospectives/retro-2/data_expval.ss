#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:05 2026
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
-999 1 1 525778 0.05
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
2010 1 1 89571 0.05
2011 1 1 80403 0.05
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
1996 4 2 9.61262e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.03982e+08 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 9.8182e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.05032e+08 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 1.00051e+08 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.80973e+08 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.6906e+08 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.42148e+08 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.65082e+08 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 2.18256e+08 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.64643e+08 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 1.39529e+08 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 1.31479e+08 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 1.43613e+08 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 1.2963e+08 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 1.29007e+08 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 1.43234e+08 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 1.30164e+08 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 1.51248e+08 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 1.79924e+08 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 1.43465e+08 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 1.40124e+08 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 2.12114e+08 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.60348e+08 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 2 1.31192e+08 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 2 1.24496e+08 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 -2 1.13865e+08 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.30171e+08 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 2.29685e+06 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 2.40026e+06 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 3.17291e+06 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 3.99676e+06 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 4.49933e+06 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 3.41665e+06 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 3.96593e+06 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 4.18507e+06 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 4.53535e+06 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 3 3.15953e+06 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 2.94874e+10 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 4.47019e+10 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 3.06903e+10 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 2.30384e+11 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 7.75155e+10 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 3.62929e+10 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 7.5583e+10 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 2.07291e+10 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 2.68278e+10 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 3.88452e+10 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 7.74232e+10 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 9.11129e+10 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.32438e+11 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 2.57013e+10 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 4.9786e+10 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 2.40711e+11 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 2.39522e+10 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 2.06037e+10 0.25 #_orig_obs: 656732 Rec_survey
2022 10 4 3.54989e+10 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 4 2.80476e+10 0.25 #_orig_obs: 61011 Rec_survey
2024 10 -4 6.75767e+10 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 6.82066e+10 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  3.33215 10.4802 11.1452 11.0479 6.58101 4.41945 2.99408
1979  7 1  0 0 1 -1 -1 50  3.05203 7.83887 12.8801 11.7779 6.97348 4.33383 3.14379
1980  7 1  0 0 1 -1 -1 50  3.09356 7.35427 9.93749 13.8247 7.70205 4.74373 3.34422
1981  7 1  0 0 1 -1 -1 50  2.54332 7.85993 9.85777 11.1622 9.32884 5.46761 3.78035
1982  7 1  0 0 1 -1 -1 50  2.33491 6.70866 10.7566 11.3841 7.70223 6.71277 4.40078
1983  7 1  0 0 1 -1 -1 50  5.1414 5.93472 8.87524 11.9476 7.63454 5.47501 4.99153
1984  7 1  0 0 1 -1 -1 50  2.70539 12.2332 7.65261 9.49306 7.69265 5.30597 4.91708
1985  7 1  0 0 1 -1 -1 50  2.45383 6.92719 15.7788 8.62256 6.09267 5.31123 4.8137
1986  7 1  0 0 1 -1 -1 50  2.46215 6.16202 9.00666 17.2956 5.87492 4.38056 4.8181
1987  7 1  0 0 1 -1 -1 50  3.70038 6.4699 8.49511 10.2259 11.8469 4.45923 4.80261
1988  7 1  0 0 1 -1 -1 50  5.77308 7.79662 1.93625 11.0015 8.23759 9.93125 5.32366
1989  7 1  0 0 1 -1 -1 50  6.53847 6.73028 2.79422 12.7062 8.21048 6.26497 6.75536
1990  7 1  0 0 1 -1 -1 50  6.64168 6.17334 2.33314 16.1426 7.90646 5.20098 5.60178
1991  7 1  0 0 1 -1 -1 75  23.5334 8.2512 2.59132 15.1842 12.7352 6.55109 6.15361
1992  7 1  0 0 1 -1 -1 75  14.2263 21.8851 2.62232 13.7791 9.27784 7.84066 5.36875
1993  7 1  0 0 1 -1 -1 75  9.28742 16.8134 7.0106 17.5016 10.6909 7.26371 6.43227
1994  7 1  0 0 1 -1 -1 75  6.34504 7.01588 4.87329 37.0089 9.82132 5.38626 4.54936
1995  7 1  0 0 1 -1 -1 75  5.92542 6.32947 2.88027 24.6866 24.2002 6.58442 4.39365
1996  7 1  0 0 1 -1 -1 75  9.20015 6.6329 2.44583 15.4251 18.0377 17.7555 5.50285
1997  7 1  0 0 1 -1 -1 75  8.41564 11.0484 2.75443 16.516 12.3363 14.2441 9.68513
1998  7 1  0 0 1 -1 -1 75  11.7055 9.41918 3.80394 17.3004 12.2375 9.51778 11.0158
1999  7 1  0 0 1 -1 -1 75  8.69835 11.1916 3.32276 22.8378 11.4041 8.27619 9.26928
2000  7 1  0 0 1 -1 -1 75  23.5725 7.27899 2.96086 14.8203 12.7207 6.73806 6.90856
2001  7 1  0 0 1 -1 -1 75  10.9812 21.514 2.52867 16.6584 9.39861 8.04813 5.87087
2002  7 1  0 0 1 -1 -1 75  8.16208 13.7471 7.16523 16.5366 13.8839 8.11203 7.39305
2003  7 1  0 0 1 -1 -1 75  5.84527 5.93348 4.26746 37.4571 9.42175 6.95217 5.12282
2004  7 1  0 0 1 -1 -1 75  21.7242 4.80471 1.95835 16.3638 20.4962 5.37919 4.27351
2005  7 1  0 0 1 -1 -1 75  7.65216 23.3364 1.87021 10.4967 11.8352 14.9045 4.90476
2006  7 1  0 0 1 -1 -1 75  18.0541 29.4716 4.59716 6.26392 4.30796 5.17184 7.13339
2007  7 1  0 0 1 -1 -1 75  19.2958 12.4208 2.65235 25.598 5.08841 3.35619 6.5884
2008  7 1  0 0 1 -1 -1 75  23.6374 14.162 1.07329 9.02006 17.2614 4.00659 5.8392
2009  7 1  0 0 1 -1 -1 75  31.5508 16.2557 0.877874 3.71646 5.74507 11.4212 5.43285
2010  7 1  0 0 1 -1 -1 75  23.8675 26.8063 1.25165 4.70274 3.05524 5.2219 10.0946
2011  7 1  0 0 1 -1 -1 75  27.0617 20.8871 1.91888 6.88608 4.01883 3.54235 10.685
2012  7 1  0 0 1 -1 -1 75  31.8506 17.7239 1.38939 8.68238 4.45325 3.24245 7.65808
2013  7 1  0 0 1 -1 -1 75  33.2688 20.9627 1.10117 5.19102 5.36979 3.29716 5.80936
2014  7 1  0 0 1 -1 -1 75  24.4641 28.2061 1.54494 5.63248 4.21714 4.79664 6.13865
2015  7 1  0 0 1 -1 -1 75  37.1384 16.6815 1.62748 6.83286 3.77613 3.18788 5.75577
2016  7 1  0 0 1 -1 -1 75  35.7073 21.5617 1.04543 6.2835 3.8571 2.42611 4.11881
2017  7 1  0 0 1 -1 -1 75  17.502 35.228 1.79282 5.53149 5.82592 4.00371 5.11614
2018  7 1  0 0 1 -1 -1 75  30.1089 15.3899 2.53214 10.5295 4.88469 5.31644 6.23838
2019  7 1  0 0 1 -1 -1 75  43.5598 12.801 0.856444 7.40424 4.36884 2.25316 3.75646
2020  7 1  0 0 1 -1 -1 75  13.7684 41.1719 1.17247 3.69691 6.45331 4.23585 4.50115
2021  7 1  0 0 1 -1 -1 75  21.7176 18.0504 3.89781 9.06087 4.81469 8.63728 8.82136
2022  7 1  0 0 1 -1 -1 75  24.3511 13.2491 1.70768 18.4072 5.83569 3.41684 8.03244
2023  7 1  0 0 1 -1 -1 75  22.673 19.6293 1.02878 5.52341 13.5686 5.09369 7.48332
2024  7 1  0 0 1 -1 -1 75  34.782 15.4249 1.12299 4.16275 3.5789 9.14574 6.78266
2025  7 -1  0 0 1 -1 -1 75  31.639 23.6259 1.04898 5.11403 2.77723 2.88578 7.90915
1996  4 2  0 0 1 -1 -1 25  0 8.16995 4.38131 3.16398 3.43397 3.52364 2.32715
1997  4 2  0 0 1 -1 -1 25  0 10.7162 3.92352 2.69364 1.86153 2.37643 3.42865
1998  4 2  0 0 1 -1 -1 25  0 8.97991 5.83316 2.84241 1.8017 1.66442 3.8784
1999  4 2  0 0 1 -1 -1 25  0 10.6508 4.35488 3.5953 1.68234 1.44283 3.27387
2000  4 2  0 0 1 -1 -1 25  0 9.03305 5.76532 3.12103 2.42653 1.49934 3.15474
2001  4 2  0 0 1 -1 -1 25  0 16.3984 2.6622 2.11275 1.11571 1.06495 1.64597
2002  4 2  0 0 1 -1 -1 25  0 9.50447 9.00607 2.18919 1.46302 0.980153 1.8571
2003  4 2  0 0 1 -1 -1 25  0 6.92602 5.8605 6.99149 1.67998 1.38237 2.15964
2005  4 2  0 0 1 -1 -1 25  0 17.2496 2.03033 1.3066 1.35978 1.791 1.26267
2006  4 2  0 0 1 -1 -1 25  0 7.4384 10.7435 2.04034 1.04539 1.33131 2.4011
2007  4 2  0 0 1 -1 -1 25  0 4.42017 5.09973 9.22561 1.7788 1.27527 3.20042
2008  4 2  0 0 1 -1 -1 25  0 5.88735 2.71125 3.93904 7.25416 1.79453 3.41368
2009  4 2  0 0 1 -1 -1 25  0 7.79619 3.22061 1.96615 2.78889 5.64437 3.58378
2010  4 2  0 0 1 -1 -1 25  0 10.3512 3.69075 2.02744 1.19801 2.22596 5.50662
2011  4 2  0 0 1 -1 -1 25  0 7.77551 5.86486 2.84552 1.49045 1.49607 5.52759
2013  4 2  0 0 1 -1 -1 25  0 10.0806 3.89537 2.72825 2.61805 1.7355 3.94223
2014  4 2  0 0 1 -1 -1 25  0 10.8986 4.70868 2.43584 1.6484 1.98034 3.32815
2015  4 2  0 0 1 -1 -1 25  0 7.98233 6.19691 3.56576 1.79847 1.64162 3.81491
2016  4 2  0 0 1 -1 -1 25  0 11.3239 3.61083 3.54562 2.06145 1.39551 3.06269
2017  4 2  0 0 1 -1 -1 25  0 11.9882 4.95229 2.14956 2.00693 1.45707 2.44593
2018  4 2  0 0 1 -1 -1 25  0 5.88178 7.74855 4.28986 1.80941 2.06931 3.2011
2019  4 2  0 0 1 -1 -1 25  0 8.51759 3.18009 5.18036 2.95268 1.63678 3.53249
2020  4 2  0 0 1 -1 -1 25  0 14.422 2.97896 1.46926 2.31061 1.58697 2.23225
2021  4 2  0 0 1 -1 -1 25  0 5.20593 9.79731 2.93854 1.30605 2.445 3.30716
2022  4 2  0 0 1 -1 -1 25  0 5.39396 3.34651 7.73495 2.3908 1.5491 4.58468
2023  4 2  0 0 1 -1 -1 25  0 7.80514 2.96086 2.37815 5.47076 2.18946 4.19563
2024  4 2  0 0 1 -1 -1 25  0 7.483 4.39725 2.24697 1.74291 4.5899 4.53998
2025  4 2  0 0 1 -1 -1 25  0 10.9528 3.41169 2.58603 1.31066 1.53309 5.20575
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

