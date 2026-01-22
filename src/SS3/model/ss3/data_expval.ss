#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:05:11 2026
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
-999 1 1 135730 0.05
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
1996 4 2 1.40494e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.33778e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 1.04847e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.03465e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 9.12712e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.76652e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.67851e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.31666e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.053e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 1.5895e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.0101e+07 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 7.59846e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 6.54762e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 6.21628e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 4.3811e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 3.05085e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 3.27948e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 3.14615e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 4.49208e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 6.25373e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 5.23335e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 6.84986e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 1.58826e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 2 1.45834e+07 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 2 1.35056e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 2 1.81077e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 2 1.40974e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 2 1.41682e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 544342 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 425769 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 505844 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 511665 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 453273 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 209569 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 150657 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 236724 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 514897 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 3 667554 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 1.41714e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 2.3319e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 1.42526e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 1.18973e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 4.68833e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 1.12339e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 2.26011e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 273391 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 519711 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 796779 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 350874 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 676795 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.20528e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 290943 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 1.11318e+06 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 9.31563e+06 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 2.41381e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 4 1.99958e+06 0.25 #_orig_obs: 656732 Rec_survey
2022 10 4 7.18599e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 4 1.2287e+06 0.25 #_orig_obs: 61011 Rec_survey
2024 10 4 2.74589e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 4 1.55869e+06 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  11.0228 20.2112 11.3025 3.91836 1.81397 1.04154 0.689681
1979  7 1  0 0 1 -1 -1 50  10.0111 18.5777 14.2745 4.12718 1.60262 0.836845 0.570013
1980  7 1  0 0 1 -1 -1 50  9.44629 17.9845 14.0341 5.41321 1.8179 0.799739 0.504286
1981  7 1  0 0 1 -1 -1 50  5.41747 19.1008 15.2678 5.97171 2.71418 1.0075 0.52064
1982  7 1  0 0 1 -1 -1 50  3.1512 13.5022 19.4311 7.79994 3.60729 1.79179 0.71653
1983  7 1  0 0 1 -1 -1 50  14.4038 7.24645 12.2897 8.55961 4.3093 2.17879 1.01236
1984  7 1  0 0 1 -1 -1 50  3.97181 27.6512 5.92758 4.74101 4.23748 2.30515 1.16573
1985  7 1  0 0 1 -1 -1 50  3.50113 9.63962 26.3262 3.77318 2.69058 2.6046 1.46472
1986  7 1  0 0 1 -1 -1 50  4.34671 10.9968 11.6729 15.507 2.69744 2.37521 2.40398
1987  7 1  0 0 1 -1 -1 50  10.8821 10.3105 10.3231 5.41082 8.92351 1.80558 2.34441
1988  7 1  0 0 1 -1 -1 50  5.91323 16.2781 6.59942 6.21267 4.28411 7.71506 2.99744
1989  7 1  0 0 1 -1 -1 50  6.23359 10.5832 16.9421 7.09587 3.16848 2.3509 3.62579
1990  7 1  0 0 1 -1 -1 50  6.68391 9.96812 10.0791 15.4235 3.53405 1.69344 2.61795
1991  7 1  0 0 1 -1 -1 75  25.1471 13.3031 11.9011 11.356 8.72771 2.20837 2.35659
1992  7 1  0 0 1 -1 -1 75  14.0673 31.5413 10.5744 9.26177 4.48713 3.49044 1.5776
1993  7 1  0 0 1 -1 -1 75  5.73992 21.2935 28.9221 10.6651 4.50693 2.2254 1.6471
1994  7 1  0 0 1 -1 -1 75  4.91158 9.63317 21.0773 29.2444 6.12499 2.45801 1.55057
1995  7 1  0 0 1 -1 -1 75  4.56139 9.43509 11.4953 24.8292 18.7718 4.01992 1.88728
1996  7 1  0 0 1 -1 -1 75  8.13558 9.36315 11.8204 13.9691 16.2543 12.5128 2.94469
1997  7 1  0 0 1 -1 -1 75  7.10364 16.7728 11.7941 14.2104 8.79344 10.3431 5.98253
1998  7 1  0 0 1 -1 -1 75  11.254 13.6165 18.6217 12.5381 7.42366 5.00811 6.53786
1999  7 1  0 0 1 -1 -1 75  9.55575 19.0545 13.7512 17.5959 6.06118 3.88726 5.09423
2000  7 1  0 0 1 -1 -1 75  24.967 12.6344 14.8855 10.3939 6.52616 2.50505 3.08802
2001  7 1  0 0 1 -1 -1 75  12.7678 31.9155 10.127 11.4095 4.1469 2.66444 1.96887
2002  7 1  0 0 1 -1 -1 75  6.94023 19.7456 29.3145 10.0648 5.26167 2.00748 1.66578
2003  7 1  0 0 1 -1 -1 75  5.56237 11.3756 19.3253 28.8349 5.64448 2.7575 1.49987
2004  7 1  0 0 1 -1 -1 75  21.1744 8.35264 10.4087 17.1521 13.6972 2.75335 1.46161
2005  7 1  0 0 1 -1 -1 75  7.62555 32.3779 8.23951 9.78951 8.47962 6.84992 1.63795
2006  7 1  0 0 1 -1 -1 75  2.91697 17.8672 37.8236 7.14521 3.4328 3.1178 2.69647
2007  7 1  0 0 1 -1 -1 75  5.59713 7.92552 19.4733 29.3964 5.52365 3.08657 3.99736
2008  7 1  0 0 1 -1 -1 75  9.75089 13.5122 7.9973 13.7714 20.8605 4.43921 4.66854
2009  7 1  0 0 1 -1 -1 75  13.2879 20.1127 11.5436 4.92321 7.76834 12.4785 4.88565
2010  7 1  0 0 1 -1 -1 75  9.28681 27.094 16.4579 6.74826 2.62033 4.83009 7.96254
2011  7 1  0 0 1 -1 -1 75  10.0042 20.5182 22.5254 9.54525 3.566 2.10115 6.73983
2012  7 1  0 0 1 -1 -1 75  13.8686 21.2043 16.3947 11.753 4.77775 2.34248 4.65918
2013  7 1  0 0 1 -1 -1 75  16.3818 24.723 14.9637 7.91298 5.31311 2.53842 3.16702
2014  7 1  0 0 1 -1 -1 75  12.479 28.441 17.6648 7.53534 3.6443 2.74614 2.48943
2015  7 1  0 0 1 -1 -1 75  19.4436 19.8112 19.4002 8.81494 3.46719 1.91056 2.15221
2016  7 1  0 0 1 -1 -1 75  20.0283 26.8543 12.352 8.69967 3.8044 1.67961 1.58169
2017  7 1  0 0 1 -1 -1 75  8.1449 32.2539 19.6579 6.98414 4.39663 2.09769 1.46487
2018  7 1  0 0 1 -1 -1 75  14.9189 14.6431 25.4557 11.7727 3.86714 2.6397 1.70277
2019  7 1  0 0 1 -1 -1 75  30.0032 18.143 8.32985 10.4687 4.81365 1.7406 1.501
2020  7 1  0 0 1 -1 -1 75  10.426 40.1096 11.7903 4.23914 4.78504 2.3601 1.28979
2021  7 1  0 0 1 -1 -1 75  8.45631 18.8231 32.4283 8.12249 2.43647 2.96006 1.77328
2022  7 1  0 0 1 -1 -1 75  15.9057 15.4446 15.4754 19.3494 4.80134 1.66763 2.35593
2023  7 1  0 0 1 -1 -1 75  6.08624 28.9944 13.1706 9.67726 11.698 3.17286 2.20053
2024  7 1  0 0 1 -1 -1 75  9.60067 12.6884 26.2072 9.40114 6.18747 7.90409 3.01102
2025  7 -1  0 0 1 -1 -1 75  7.97509 20.1329 11.9811 17.7617 6.36689 4.73244 6.04992
1996  4 2  0 0 1 -1 -1 25  0 8.41841 5.08192 3.40683 3.79887 2.99116 1.30282
1997  4 2  0 0 1 -1 -1 25  0 12.1429 4.06093 2.79046 1.65828 2.08076 2.26668
1998  4 2  0 0 1 -1 -1 25  0 10.1713 6.817 2.68182 1.48403 1.1618 2.684
1999  4 2  0 0 1 -1 -1 25  0 13.2808 4.55297 3.32797 1.10389 0.82249 1.9119
2000  4 2  0 0 1 -1 -1 25  0 11.7294 6.70357 2.70981 1.59167 0.705122 1.56041
2001  4 2  0 0 1 -1 -1 25  0 18.7258 2.826 1.78698 0.622355 0.43525 0.603655
2002  4 2  0 0 1 -1 -1 25  0 12.3437 8.99348 1.87538 0.861111 0.362261 0.564063
2003  4 2  0 0 1 -1 -1 25  0 9.04595 7.33193 6.20349 1.17407 0.609658 0.634902
2005  4 2  0 0 1 -1 -1 25  0 18.5799 2.24634 1.47897 1.22869 1.0156 0.450452
2006  4 2  0 0 1 -1 -1 25  0 9.01882 11.094 2.04057 0.96384 0.900059 0.982737
2007  4 2  0 0 1 -1 -1 25  0 4.52953 6.49776 9.49968 1.7727 1.03263 1.66769
2008  4 2  0 0 1 -1 -1 25  0 7.90163 2.66215 4.41472 6.63605 1.46192 1.92353
2009  4 2  0 0 1 -1 -1 25  0 11.4395 3.76086 1.5466 2.41431 3.91862 1.92014
2010  4 2  0 0 1 -1 -1 25  0 13.4731 4.72239 1.87067 0.719013 1.39734 2.81752
2011  4 2  0 0 1 -1 -1 25  0 10.8403 6.96345 2.86252 1.05919 0.691744 2.58281
2013  4 2  0 0 1 -1 -1 25  0 13.9425 4.85159 2.47536 1.64608 0.818631 1.26584
2014  4 2  0 0 1 -1 -1 25  0 14.8581 5.24282 2.15653 1.03155 0.799938 0.911075
2015  4 2  0 0 1 -1 -1 25  0 12.3594 6.85007 3.00644 1.16955 0.668845 0.94571
2016  4 2  0 0 1 -1 -1 25  0 15.7836 4.07854 2.75568 1.19352 0.543277 0.645411
2017  4 2  0 0 1 -1 -1 25  0 15.6369 5.34795 1.83044 1.13788 0.555006 0.491854
2018  4 2  0 0 1 -1 -1 25  0 9.05459 8.9744 4.01437 1.30394 0.907659 0.745045
2019  4 2  0 0 1 -1 -1 25  0 13.8069 3.51974 4.23706 1.93101 0.718335 0.786959
2020  4 2  0 0 1 -1 -1 25  0 18.7075 3.06926 1.05241 1.17274 0.588285 0.409761
2021  4 2  0 0 1 -1 -1 25  0 10.2127 10.05 2.4425 0.721985 0.892843 0.679986
2022  4 2  0 0 1 -1 -1 25  0 9.71718 5.45606 6.57706 1.61889 0.589745 1.04106
2023  4 2  0 0 1 -1 -1 25  0 14.2227 3.60877 2.54038 3.04024 0.843456 0.744404
2024  4 2  0 0 1 -1 -1 25  0 7.37662 8.78881 3.05455 1.98485 2.56119 1.23398
2025  4 2  0 0 1 -1 -1 25  0 10.8009 3.59121 5.11757 1.81942 1.41144 2.25949
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

