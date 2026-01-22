#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:01 2026
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
-999 1 1 135724 0.05
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
1996 4 2 1.41184e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.34429e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 1.05135e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.03768e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 9.15559e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.7724e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.68205e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.32086e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.06386e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 1.59757e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.01534e+07 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 7.64147e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 6.58588e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 6.24147e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 4.3911e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 3.04021e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 3.25656e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 3.11093e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 4.42842e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 6.10552e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 5.09112e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 6.62569e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 1.52211e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.38417e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 2 1.26403e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 2 1.62099e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 2 1.23472e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.37452e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 554570 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 432969 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 514069 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 520859 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 462056 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 213219 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 151868 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 234918 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 501531 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 3 616339 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 1.51925e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 2.61163e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 1.541e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 1.50207e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 5.50203e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 1.2015e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 2.53265e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 263344 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 524864 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 829219 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 334815 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 667684 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.2077e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 261622 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 1.09001e+06 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 1.04895e+07 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 2.37306e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 1.86795e+06 0.25 #_orig_obs: 656732 Rec_survey
2022 10 4 6.56841e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 4 927701 0.25 #_orig_obs: 61011 Rec_survey
2024 10 4 3.77579e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 5.37255e+06 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  11.0253 20.2136 11.3035 3.91865 1.81272 1.03848 0.687721
1979  7 1  0 0 1 -1 -1 50  10.0128 18.5797 14.2737 4.12777 1.60174 0.835648 0.568616
1980  7 1  0 0 1 -1 -1 50  9.44721 17.9856 14.0339 5.41383 1.81724 0.798788 0.503481
1981  7 1  0 0 1 -1 -1 50  5.4181 19.1013 15.2677 5.97293 2.71319 1.00659 0.520173
1982  7 1  0 0 1 -1 -1 50  3.15181 13.5028 19.4307 7.80177 3.60638 1.79023 0.716338
1983  7 1  0 0 1 -1 -1 50  14.4038 7.24705 12.2895 8.56155 4.30829 2.17719 1.01264
1984  7 1  0 0 1 -1 -1 50  3.97205 27.6504 5.92823 4.74252 4.23666 2.30373 1.16642
1985  7 1  0 0 1 -1 -1 50  3.50101 9.6397 26.3257 3.77426 2.69029 2.60316 1.46584
1986  7 1  0 0 1 -1 -1 50  4.34532 10.9945 11.6723 15.5107 2.69741 2.37403 2.40581
1987  7 1  0 0 1 -1 -1 50  10.8777 10.3093 10.324 5.41347 8.92384 1.80546 2.34622
1988  7 1  0 0 1 -1 -1 50  5.9114 16.2766 6.60099 6.21617 4.28482 7.71244 2.99762
1989  7 1  0 0 1 -1 -1 50  6.2309 10.5807 16.9423 7.0994 3.16872 2.35045 3.6276
1990  7 1  0 0 1 -1 -1 50  6.68065 9.96521 10.0786 15.4298 3.53467 1.69294 2.61814
1991  7 1  0 0 1 -1 -1 75  25.1392 13.302 11.9028 11.3621 8.72934 2.20819 2.35641
1992  7 1  0 0 1 -1 -1 75  14.064 31.538 10.576 9.26711 4.48787 3.48957 1.57738
1993  7 1  0 0 1 -1 -1 75  5.73843 21.2899 28.9219 10.6696 4.50751 2.2248 1.64782
1994  7 1  0 0 1 -1 -1 75  4.909 9.63048 21.0745 29.2526 6.12512 2.45712 1.55115
1995  7 1  0 0 1 -1 -1 75  4.55748 9.43163 11.4947 24.8371 18.7717 4.01894 1.88845
1996  7 1  0 0 1 -1 -1 75  8.13347 9.35823 11.8201 13.9753 16.2559 12.51 2.94697
1997  7 1  0 0 1 -1 -1 75  7.07275 16.7791 11.7954 14.22 8.79647 10.3439 5.99235
1998  7 1  0 0 1 -1 -1 75  11.2532 13.5722 18.6417 12.5476 7.42634 5.00945 6.54943
1999  7 1  0 0 1 -1 -1 75  9.567 19.0618 13.7109 17.6144 6.06037 3.88555 5.09994
2000  7 1  0 0 1 -1 -1 75  24.9854 12.6515 14.8905 10.361 6.52192 2.50134 3.0883
2001  7 1  0 0 1 -1 -1 75  12.7531 31.9438 10.1393 11.41 4.12846 2.65852 1.96686
2002  7 1  0 0 1 -1 -1 75  6.96599 19.7225 29.3294 10.0712 5.2531 1.99557 1.66226
2003  7 1  0 0 1 -1 -1 75  5.58914 11.4095 19.2916 28.8286 5.63927 2.74804 1.49388
2004  7 1  0 0 1 -1 -1 75  21.2167 8.38533 10.4294 17.1045 13.6644 2.74469 1.45499
2005  7 1  0 0 1 -1 -1 75  7.63104 32.4156 8.26324 9.80145 8.43982 6.81898 1.62984
2006  7 1  0 0 1 -1 -1 75  2.9235 17.9459 37.9204 7.11237 3.39867 3.06573 2.63337
2007  7 1  0 0 1 -1 -1 75  5.63754 8.01315 19.5775 29.2614 5.51077 3.06908 3.9306
2008  7 1  0 0 1 -1 -1 75  9.81359 13.6606 8.04492 13.6811 20.7674 4.42533 4.60706
2009  7 1  0 0 1 -1 -1 75  13.2993 20.2766 11.5879 4.8879 7.70693 12.4077 4.8337
2010  7 1  0 0 1 -1 -1 75  9.28388 27.2196 16.5078 6.69709 2.60199 4.79788 7.89176
2011  7 1  0 0 1 -1 -1 75  10.0067 20.619 22.5413 9.47628 3.54713 2.09458 6.71501
2012  7 1  0 0 1 -1 -1 75  13.8633 21.3362 16.4096 11.6274 4.75284 2.34133 4.66947
2013  7 1  0 0 1 -1 -1 75  16.3672 24.8454 14.9852 7.82657 5.26126 2.53311 3.18128
2014  7 1  0 0 1 -1 -1 75  12.4348 28.5936 17.6841 7.45686 3.60534 2.72714 2.49827
2015  7 1  0 0 1 -1 -1 75  19.4158 19.8949 19.4711 8.73629 3.43356 1.89667 2.15161
2016  7 1  0 0 1 -1 -1 75  19.8448 27.0665 12.4042 8.6546 3.7787 1.67051 1.58075
2017  7 1  0 0 1 -1 -1 75  8.09481 32.2321 19.792 6.95135 4.37937 2.08856 1.46182
2018  7 1  0 0 1 -1 -1 75  14.8297 14.713 25.4924 11.7608 3.86057 2.64209 1.70146
2019  7 1  0 0 1 -1 -1 75  29.8175 18.2662 8.4007 10.4264 4.8339 1.74879 1.50649
2020  7 1  0 0 1 -1 -1 75  10.2274 40.2139 11.871 4.24023 4.77578 2.37593 1.29575
2021  7 1  0 0 1 -1 -1 75  8.22662 18.739 32.6702 8.14577 2.45063 2.97647 1.79128
2022  7 1  0 0 1 -1 -1 75  15.0156 15.5088 15.7218 19.6978 4.91566 1.71677 2.42358
2023  7 1  0 0 1 -1 -1 75  5.7278 28.1852 13.4393 9.898 12.1302 3.31167 2.30782
2024  7 1  0 0 1 -1 -1 75  11.7161 11.8473 24.9079 9.22944 6.19074 8.02678 3.08177
2025  7 -1  0 0 1 -1 -1 75  13.9107 21.6702 9.81697 14.5986 5.46818 4.15457 5.38067
1996  4 2  0 0 1 -1 -1 25  0 8.41916 5.08392 3.40791 3.79866 2.98976 1.3006
1997  4 2  0 0 1 -1 -1 25  0 12.1486 4.0609 2.79057 1.65776 2.07908 2.2631
1998  4 2  0 0 1 -1 -1 25  0 10.1503 6.83248 2.68596 1.48561 1.16232 2.68334
1999  4 2  0 0 1 -1 -1 25  0 13.294 4.54108 3.33091 1.10367 0.821637 1.90866
2000  4 2  0 0 1 -1 -1 25  0 11.7458 6.70554 2.70037 1.58971 0.703305 1.55531
2001  4 2  0 0 1 -1 -1 25  0 18.7336 2.82779 1.78528 0.618925 0.433667 0.600747
2002  4 2  0 0 1 -1 -1 25  0 12.3378 9.00374 1.87704 0.859821 0.360115 0.561457
2003  4 2  0 0 1 -1 -1 25  0 9.07491 7.31779 6.19794 1.17221 0.606939 0.630214
2005  4 2  0 0 1 -1 -1 25  0 18.592 2.25129 1.47911 1.22143 1.00964 0.446528
2006  4 2  0 0 1 -1 -1 25  0 9.02166 11.0997 2.04452 0.963736 0.894425 0.975974
2007  4 2  0 0 1 -1 -1 25  0 4.53913 6.49274 9.49887 1.77725 1.03267 1.65934
2008  4 2  0 0 1 -1 -1 25  0 7.91345 2.66143 4.40418 6.63626 1.46494 1.91975
2009  4 2  0 0 1 -1 -1 25  0 11.4457 3.75596 1.54294 2.41017 3.92182 1.92343
2010  4 2  0 0 1 -1 -1 25  0 13.4568 4.72068 1.86838 0.719577 1.401 2.83361
2011  4 2  0 0 1 -1 -1 25  0 10.8285 6.94368 2.85923 1.06149 0.696806 2.61033
2013  4 2  0 0 1 -1 -1 25  0 13.9312 4.84392 2.46577 1.64346 0.824907 1.29073
2014  4 2  0 0 1 -1 -1 25  0 14.8561 5.23361 2.14973 1.02949 0.80239 0.928719
2015  4 2  0 0 1 -1 -1 25  0 12.343 6.85494 3.00209 1.16854 0.670884 0.960589
2016  4 2  0 0 1 -1 -1 25  0 15.7787 4.07391 2.7564 1.19299 0.544384 0.653634
2017  4 2  0 0 1 -1 -1 25  0 15.5741 5.38081 1.83945 1.14639 0.559353 0.499852
2018  4 2  0 0 1 -1 -1 25  0 9.03525 8.94701 4.03501 1.31157 0.915926 0.755226
2019  4 2  0 0 1 -1 -1 25  0 13.7632 3.52533 4.23803 1.9484 0.725801 0.799183
2020  4 2  0 0 1 -1 -1 25  0 18.6589 3.08182 1.06092 1.18172 0.59823 0.418411
2021  4 2  0 0 1 -1 -1 25  0 10.104 10.0933 2.4654 0.732794 0.906617 0.69785
2022  4 2  0 0 1 -1 -1 25  0 9.56224 5.45165 6.65892 1.64922 0.604969 1.07301
2023  4 2  0 0 1 -1 -1 25  0 13.795 3.68696 2.63191 3.19617 0.893263 0.796703
2024  4 2  0 0 1 -1 -1 25  0 7.09349 8.63924 3.13335 2.0791 2.7243 1.33051
2025  4 2  0 0 1 -1 -1 25  0 12.2549 3.11135 4.48456 1.66665 1.3242 2.15836
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

