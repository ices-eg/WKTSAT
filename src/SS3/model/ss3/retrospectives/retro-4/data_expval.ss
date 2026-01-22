#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:14 2026
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
-999 1 1 135504 0.05
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
1996 4 2 1.41264e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.34957e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 1.04924e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.03565e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 9.11846e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.76134e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.66619e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.30827e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.04837e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 1.58655e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.00426e+07 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 7.54968e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 6.5136e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 6.1472e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 4.29784e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 2.92417e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 3.08334e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 2.90866e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 4.08557e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 5.49561e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 4.49494e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 5.80398e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 1.33175e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.09032e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 -2 9.55275e+06 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 -2 1.27768e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 -2 1.45584e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.58119e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 574512 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 446744 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 527028 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 532134 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 471655 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 216045 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 148935 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 219830 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 453933 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 -3 496922 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 1.94714e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 3.30397e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 1.99712e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 1.69861e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 6.54373e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 1.54975e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 3.20684e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 365624 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 718931 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 1.11462e+06 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 435549 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 793491 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.30724e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 293050 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 1.14085e+06 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 9.62423e+06 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 1.41615e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 1.31432e+06 0.25 #_orig_obs: 656732 Rec_survey
2022 10 -4 5.56176e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 -4 5.88118e+06 0.25 #_orig_obs: 61011 Rec_survey
2024 10 -4 6.17889e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 6.39886e+06 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  11.0787 20.2886 11.333 3.91366 1.78015 0.967662 0.638223
1979  7 1  0 0 1 -1 -1 50  10.0514 18.6211 14.2706 4.13073 1.58317 0.810229 0.532777
1980  7 1  0 0 1 -1 -1 50  9.47505 18.016 14.0274 5.41401 1.80392 0.781153 0.482533
1981  7 1  0 0 1 -1 -1 50  5.43289 19.1285 15.2683 5.97838 2.69345 0.990651 0.507777
1982  7 1  0 0 1 -1 -1 50  3.16014 13.5221 19.4384 7.81858 3.58601 1.76451 0.710292
1983  7 1  0 0 1 -1 -1 50  14.4229 7.25102 12.2903 8.58149 4.28776 2.1502 1.01632
1984  7 1  0 0 1 -1 -1 50  3.97092 27.6575 5.93196 4.7588 4.22158 2.28128 1.17792
1985  7 1  0 0 1 -1 -1 50  3.49057 9.62828 26.3407 3.78646 2.68479 2.58294 1.48622
1986  7 1  0 0 1 -1 -1 50  4.3122 10.941 11.6602 15.5822 2.6981 2.36178 2.44454
1987  7 1  0 0 1 -1 -1 50  10.7841 10.2661 10.3351 5.45634 8.96121 1.80999 2.38712
1988  7 1  0 0 1 -1 -1 50  5.91472 16.304 6.63529 6.25738 4.29814 7.68937 2.90114
1989  7 1  0 0 1 -1 -1 50  6.23171 10.5735 16.9706 7.12666 3.18773 2.34857 3.56127
1990  7 1  0 0 1 -1 -1 50  6.68294 9.95922 10.0787 15.4523 3.54895 1.69775 2.58007
1991  7 1  0 0 1 -1 -1 75  25.1551 13.2936 11.9021 11.3588 8.74609 2.21393 2.33046
1992  7 1  0 0 1 -1 -1 75  14.0743 31.5306 10.5766 9.26547 4.48943 3.49692 1.56677
1993  7 1  0 0 1 -1 -1 75  5.74196 21.2831 28.929 10.6674 4.50843 2.22583 1.64428
1994  7 1  0 0 1 -1 -1 75  4.90966 9.62672 21.0776 29.2513 6.12622 2.45863 1.54986
1995  7 1  0 0 1 -1 -1 75  4.55163 9.42372 11.496 24.8364 18.7814 4.02195 1.88892
1996  7 1  0 0 1 -1 -1 75  8.1695 9.33059 11.8087 13.9674 16.2573 12.5182 2.94826
1997  7 1  0 0 1 -1 -1 75  6.9677 16.8444 11.7786 14.2223 8.81048 10.3681 6.00838
1998  7 1  0 0 1 -1 -1 75  11.2085 13.3933 18.7597 12.5639 7.45409 5.03607 6.58447
1999  7 1  0 0 1 -1 -1 75  9.50654 19.0032 13.5712 17.7647 6.09531 3.91676 5.14237
2000  7 1  0 0 1 -1 -1 75  24.9268 12.6108 14.9109 10.2923 6.60377 2.52846 3.1269
2001  7 1  0 0 1 -1 -1 75  12.689 31.9233 10.136 11.4449 4.11268 2.69825 1.99584
2002  7 1  0 0 1 -1 -1 75  6.9726 19.6443 29.3623 10.0706 5.27067 1.99144 1.68803
2003  7 1  0 0 1 -1 -1 75  5.55124 11.428 19.2498 28.8602 5.64073 2.75948 1.51048
2004  7 1  0 0 1 -1 -1 75  21.3568 8.32333 10.4413 17.0276 13.6456 2.74025 1.46516
2005  7 1  0 0 1 -1 -1 75  7.68112 32.5588 8.19318 9.77833 8.37232 6.78556 1.63069
2006  7 1  0 0 1 -1 -1 75  3.1555 18.049 37.2717 7.10802 3.44007 3.11115 2.86462
2007  7 1  0 0 1 -1 -1 75  6.08297 7.76139 19.0155 29.4426 5.46425 3.07528 4.15799
2008  7 1  0 0 1 -1 -1 75  10.546 13.3059 7.60969 13.6944 20.7005 4.37015 4.77344
2009  7 1  0 0 1 -1 -1 75  14.1884 19.8634 11.106 4.81486 7.72045 12.3762 4.93076
2010  7 1  0 0 1 -1 -1 75  9.90821 26.6362 16.0189 6.73625 2.58939 4.8645 8.24653
2011  7 1  0 0 1 -1 -1 75  10.7568 20.1656 21.8327 9.63009 3.59453 2.11101 6.90931
2012  7 1  0 0 1 -1 -1 75  14.7879 20.8744 15.7709 11.7475 4.82165 2.34837 4.64925
2013  7 1  0 0 1 -1 -1 75  17.3629 24.299 14.4644 7.85734 5.31997 2.55397 3.14248
2014  7 1  0 0 1 -1 -1 75  13.2881 28.0682 17.1505 7.5569 3.652 2.76638 2.51787
2015  7 1  0 0 1 -1 -1 75  20.6135 19.398 18.6503 8.75242 3.46865 1.90967 2.20748
2016  7 1  0 0 1 -1 -1 75  20.7595 26.4903 11.9302 8.66105 3.81456 1.69749 1.64687
2017  7 1  0 0 1 -1 -1 75  8.50882 31.729 19.4413 7.08984 4.49192 2.16213 1.57699
2018  7 1  0 0 1 -1 -1 75  15.8808 14.1753 24.5098 11.9333 3.94351 2.70958 1.84775
2019  7 1  0 0 1 -1 -1 75  31.4522 17.4697 7.74942 10.167 4.80271 1.75348 1.60554
2020  7 1  0 0 1 -1 -1 75  8.77771 41.2098 11.7874 4.29924 4.94658 2.51497 1.46426
2021  7 1  0 0 1 -1 -1 75  8.09086 15.8151 34.3299 8.77471 2.61795 3.24865 2.12287
2022  7 1  0 0 1 -1 -1 75  17.1846 13.8927 12.841 21.1394 5.27581 1.84112 2.82525
2023  7 1  0 0 1 -1 -1 75  15.5828 25.5133 10.187 7.22192 11.1553 3.06025 2.27955
2024  7 1  0 0 1 -1 -1 75  14.0396 23.5872 18.6608 6.20213 3.78976 6.19248 2.52803
2025  7 -1  0 0 1 -1 -1 75  13.1791 22.4227 18.1641 11.1864 3.44895 2.46189 4.13678
1996  4 2  0 0 1 -1 -1 25  0 8.40659 5.08331 3.40997 3.80357 2.99514 1.30143
1997  4 2  0 0 1 -1 -1 25  0 12.174 4.04461 2.78429 1.65652 2.07886 2.26169
1998  4 2  0 0 1 -1 -1 25  0 10.0408 6.89258 2.69757 1.49523 1.17138 2.70243
1999  4 2  0 0 1 -1 -1 25  0 13.2766 4.49662 3.36137 1.11143 0.829066 1.92492
2000  4 2  0 0 1 -1 -1 25  0 11.7089 6.71318 2.68398 1.60986 0.710967 1.57311
2001  4 2  0 0 1 -1 -1 25  0 18.7196 2.82485 1.79031 0.616525 0.440013 0.608723
2002  4 2  0 0 1 -1 -1 25  0 12.3033 9.02181 1.87979 0.864037 0.360474 0.570563
2003  4 2  0 0 1 -1 -1 25  0 9.08636 7.29387 6.20185 1.17214 0.609455 0.636316
2005  4 2  0 0 1 -1 -1 25  0 18.6409 2.2275 1.47289 1.20978 1.00322 0.445741
2006  4 2  0 0 1 -1 -1 25  0 9.04679 11.1239 2.02505 0.956033 0.882691 0.965508
2007  4 2  0 0 1 -1 -1 25  0 4.47047 6.54308 9.57325 1.76294 1.0226 1.62767
2008  4 2  0 0 1 -1 -1 25  0 7.90834 2.63518 4.45912 6.68402 1.44741 1.86592
2009  4 2  0 0 1 -1 -1 25  0 11.4771 3.76885 1.5398 2.43472 3.93066 1.84882
2010  4 2  0 0 1 -1 -1 25  0 13.4326 4.77804 1.89816 0.719894 1.40554 2.76581
2011  4 2  0 0 1 -1 -1 25  0 10.7921 7.00579 2.93142 1.08049 0.684281 2.50591
2013  4 2  0 0 1 -1 -1 25  0 13.9158 4.88715 2.50325 1.67447 0.826486 1.19281
2014  4 2  0 0 1 -1 -1 25  0 14.8075 5.27941 2.19185 1.04441 0.807041 0.869748
2015  4 2  0 0 1 -1 -1 25  0 12.3018 6.87478 3.04271 1.18904 0.672262 0.919384
2016  4 2  0 0 1 -1 -1 25  0 15.7357 4.08991 2.77968 1.21022 0.550447 0.634059
2017  4 2  0 0 1 -1 -1 25  0 15.4344 5.45672 1.8736 1.16762 0.57103 0.496606
2018  4 2  0 0 1 -1 -1 25  0 8.86351 8.97209 4.12238 1.3432 0.936012 0.762822
2019  4 2  0 0 1 -1 -1 25  0 13.7333 3.47152 4.25351 1.98944 0.74175 0.810503
2020  4 2  0 0 1 -1 -1 25  0 18.6827 3.06657 1.0421 1.17892 0.606883 0.422783
2021  4 2  0 0 1 -1 -1 25  0 8.62882 11.1168 2.69924 0.789056 0.992191 0.773929
2022  4 2  0 0 1 -1 -1 25  0 9.04792 4.8038 7.43877 1.84081 0.666146 1.20255
2023  4 2  0 0 1 -1 -1 25  0 14.4013 3.30712 2.18916 3.34111 0.932261 0.829026
2024  4 2  0 0 1 -1 -1 25  0 13.1834 6.02162 1.88863 1.13381 1.86602 0.906533
2025  4 2  0 0 1 -1 -1 25  0 12.4952 5.83122 3.37624 1.02817 0.764116 1.50507
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

