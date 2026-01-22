#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Thu Jan 22 12:06:19 2026
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
-999 1 1 135511 0.05
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
1996 4 2 1.42924e+07 0.25 #_orig_obs: 1.0171e+07 Acoustic_survey
1997 4 2 1.36732e+07 0.25 #_orig_obs: 1.46019e+07 Acoustic_survey
1998 4 2 1.05812e+07 0.25 #_orig_obs: 1.22141e+07 Acoustic_survey
1999 4 2 1.04372e+07 0.25 #_orig_obs: 1.21594e+07 Acoustic_survey
2000 4 2 9.17644e+06 0.25 #_orig_obs: 1.14899e+07 Acoustic_survey
2001 4 2 1.76855e+07 0.25 #_orig_obs: 1.66791e+07 Acoustic_survey
2002 4 2 1.66844e+07 0.25 #_orig_obs: 2.33413e+07 Acoustic_survey
2003 4 2 1.31054e+07 0.25 #_orig_obs: 1.5953e+07 Acoustic_survey
2005 4 2 2.05845e+07 0.25 #_orig_obs: 2.65705e+07 Acoustic_survey
2006 4 2 1.59281e+07 0.25 #_orig_obs: 1.79688e+07 Acoustic_survey
2007 4 2 1.00668e+07 0.25 #_orig_obs: 1.0355e+07 Acoustic_survey
2008 4 2 7.56634e+06 0.25 #_orig_obs: 6.29799e+06 Acoustic_survey
2009 4 2 6.53562e+06 0.25 #_orig_obs: 8.59685e+06 Acoustic_survey
2010 4 2 6.15067e+06 0.25 #_orig_obs: 6.72408e+06 Acoustic_survey
2011 4 2 4.27702e+06 0.25 #_orig_obs: 2.84834e+06 Acoustic_survey
2013 4 2 2.86912e+06 0.25 #_orig_obs: 2.57361e+06 Acoustic_survey
2014 4 2 2.99737e+06 0.25 #_orig_obs: 2.8611e+06 Acoustic_survey
2015 4 2 2.80057e+06 0.25 #_orig_obs: 2.24166e+06 Acoustic_survey
2016 4 2 3.91278e+06 0.25 #_orig_obs: 4.34935e+06 Acoustic_survey
2017 4 2 5.13548e+06 0.25 #_orig_obs: 2.39294e+06 Acoustic_survey
2018 4 2 4.1138e+06 0.25 #_orig_obs: 3.34799e+06 Acoustic_survey
2019 4 2 5.34738e+06 0.25 #_orig_obs: 4.62719e+06 Acoustic_survey
2020 4 2 1.11072e+07 0.25 #_orig_obs: 1.8106e+07 Acoustic_survey
2021 4 -2 9.88884e+06 0.25 #_orig_obs: 1.76414e+07 Acoustic_survey
2022 4 -2 1.29448e+07 0.25 #_orig_obs: 2.2989e+07 Acoustic_survey
2023 4 -2 1.48934e+07 0.25 #_orig_obs: 2.70607e+07 Acoustic_survey
2024 4 -2 1.61661e+07 0.25 #_orig_obs: 1.20946e+07 Acoustic_survey
2025 4 -2 1.71087e+07 0.25 #_orig_obs: 2.25473e+07 Acoustic_survey
1997 1 3 596772 0.25 #_orig_obs: 251387 DEPM_survey
1999 1 3 462081 0.25 #_orig_obs: 436919 DEPM_survey
2002 1 3 541849 0.25 #_orig_obs: 496379 DEPM_survey
2005 1 3 546372 0.25 #_orig_obs: 481447 DEPM_survey
2008 1 3 484540 0.25 #_orig_obs: 625026 DEPM_survey
2011 1 3 220773 0.25 #_orig_obs: 226372 DEPM_survey
2014 1 3 148611 0.25 #_orig_obs: 164613 DEPM_survey
2017 1 3 211928 0.25 #_orig_obs: 282714 DEPM_survey
2020 1 3 396320 0.25 #_orig_obs: 630692 DEPM_survey
2023 1 -3 597949 0.25 #_orig_obs: 640793 DEPM_survey
1997 10 4 2.15142e+06 0.25 #_orig_obs: 881535 Rec_survey
1998 10 4 3.78774e+06 0.25 #_orig_obs: 5.49658e+06 Rec_survey
1999 10 4 2.2296e+06 0.25 #_orig_obs: 2.39669e+06 Rec_survey
2000 10 4 2.0843e+07 0.25 #_orig_obs: 2.77392e+07 Rec_survey
2001 10 4 7.62769e+06 0.25 #_orig_obs: 2.86517e+06 Rec_survey
2003 10 4 1.69879e+06 0.25 #_orig_obs: 2.35569e+06 Rec_survey
2005 10 4 3.65525e+06 0.25 #_orig_obs: 7.45208e+06 Rec_survey
2006 10 4 375825 0.25 #_orig_obs: 397637 Rec_survey
2007 10 4 768843 0.25 #_orig_obs: 1.99369e+06 Rec_survey
2008 10 4 1.22164e+06 0.25 #_orig_obs: 3.11979e+06 Rec_survey
2013 10 4 428151 0.25 #_orig_obs: 547673 Rec_survey
2015 10 4 777062 0.25 #_orig_obs: 2.1151e+06 Rec_survey
2016 10 4 1.22058e+06 0.25 #_orig_obs: 114422 Rec_survey
2017 10 4 237629 0.25 #_orig_obs: 93955 Rec_survey
2018 10 4 1.06844e+06 0.25 #_orig_obs: 524781 Rec_survey
2019 10 4 7.53049e+06 0.25 #_orig_obs: 5.03918e+06 Rec_survey
2020 10 4 1.74277e+06 0.25 #_orig_obs: 6.4918e+06 Rec_survey
2021 10 -4 6.48108e+06 0.25 #_orig_obs: 656732 Rec_survey
2022 10 -4 6.97393e+06 0.25 #_orig_obs: 7.02053e+06 Rec_survey
2023 10 -4 7.40202e+06 0.25 #_orig_obs: 61011 Rec_survey
2024 10 -4 7.65882e+06 0.25 #_orig_obs: 6.02328e+06 Rec_survey
2025 10 -4 7.85084e+06 0.25 #_orig_obs: 819386 Rec_survey
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
1978  7 1  0 0 1 -1 -1 50  11.079 20.2849 11.3312 3.91304 1.78134 0.970591 0.639994
1979  7 1  0 0 1 -1 -1 50  10.0509 18.6216 14.269 4.12942 1.58381 0.811313 0.533955
1980  7 1  0 0 1 -1 -1 50  9.47383 18.0157 14.0288 5.41239 1.80422 0.781941 0.483094
1981  7 1  0 0 1 -1 -1 50  5.43236 19.1273 15.2692 5.97771 2.69403 0.991395 0.507985
1982  7 1  0 0 1 -1 -1 50  3.16065 13.5213 19.4378 7.81699 3.58733 1.76581 0.710113
1983  7 1  0 0 1 -1 -1 50  14.4169 7.25359 12.2918 8.58015 4.2896 2.15231 1.01563
1984  7 1  0 0 1 -1 -1 50  3.97069 27.6517 5.93479 4.75866 4.22355 2.28351 1.17713
1985  7 1  0 0 1 -1 -1 50  3.49077 9.62904 26.3368 3.78677 2.68616 2.58532 1.48519
1986  7 1  0 0 1 -1 -1 50  4.31406 10.9437 11.6616 15.5749 2.69922 2.36377 2.44278
1987  7 1  0 0 1 -1 -1 50  10.7889 10.2688 10.3339 5.45351 8.95864 1.81072 2.38552
1988  7 1  0 0 1 -1 -1 50  5.9126 16.2865 6.63285 6.25983 4.30207 7.69904 2.90712
1989  7 1  0 0 1 -1 -1 50  6.23078 10.5673 16.9691 7.13071 3.1885 2.35007 3.56354
1990  7 1  0 0 1 -1 -1 50  6.68137 9.95164 10.0789 15.4608 3.54938 1.6972 2.58064
1991  7 1  0 0 1 -1 -1 75  25.146 13.2866 11.9044 11.3697 8.74902 2.21366 2.33066
1992  7 1  0 0 1 -1 -1 75  14.0707 31.5124 10.5819 9.27725 4.49351 3.49756 1.56667
1993  7 1  0 0 1 -1 -1 75  5.74017 21.2669 28.932 10.6794 4.51254 2.22659 1.64242
1994  7 1  0 0 1 -1 -1 75  4.90341 9.61676 21.0715 29.2715 6.13049 2.45905 1.54735
1995  7 1  0 0 1 -1 -1 75  4.53853 9.40895 11.4946 24.8542 18.7937 4.02397 1.88601
1996  7 1  0 0 1 -1 -1 75  8.18158 9.3018 11.801 13.9785 16.2677 12.5244 2.94492
1997  7 1  0 0 1 -1 -1 75  6.8978 16.8818 11.7667 14.2402 8.82514 10.3821 6.00626
1998  7 1  0 0 1 -1 -1 75  11.1848 13.2858 18.844 12.5793 7.46857 5.0468 6.5907
1999  7 1  0 0 1 -1 -1 75  9.48745 18.9802 13.4882 17.8637 6.10439 3.92355 5.15249
2000  7 1  0 0 1 -1 -1 75  24.897 12.6128 14.9337 10.2482 6.63823 2.53281 3.13722
2001  7 1  0 0 1 -1 -1 75  12.6537 31.9234 10.1533 11.4687 4.09105 2.70778 2.00202
2002  7 1  0 0 1 -1 -1 75  7.00356 19.5997 29.382 10.0809 5.26697 1.97647 1.69039
2003  7 1  0 0 1 -1 -1 75  5.56357 11.4758 19.2152 28.8571 5.63247 2.7497 1.50625
2004  7 1  0 0 1 -1 -1 75  21.4985 8.32928 10.4693 16.9502 13.5755 2.72229 1.45491
2005  7 1  0 0 1 -1 -1 75  7.71027 32.7125 8.1862 9.7758 8.29003 6.71248 1.61273
2006  7 1  0 0 1 -1 -1 75  3.1949 18.3166 36.865 7.09208 3.43877 3.09853 2.99408
2007  7 1  0 0 1 -1 -1 75  6.15118 7.81713 18.6824 29.545 5.44335 3.07044 4.29054
2008  7 1  0 0 1 -1 -1 75  10.6381 13.4271 7.43937 13.648 20.6421 4.34005 4.8653
2009  7 1  0 0 1 -1 -1 75  14.2253 20.0996 10.8892 4.79631 7.68509 12.3274 4.97708
2010  7 1  0 0 1 -1 -1 75  9.88738 26.761 15.7413 6.73522 2.57925 4.85727 8.43859
2011  7 1  0 0 1 -1 -1 75  10.8035 20.2973 21.4522 9.71606 3.61827 2.12053 6.99206
2012  7 1  0 0 1 -1 -1 75  14.827 21.0963 15.451 11.8103 4.86513 2.34902 4.6013
2013  7 1  0 0 1 -1 -1 75  17.3947 24.5481 14.2185 7.85604 5.33674 2.55863 3.08735
2014  7 1  0 0 1 -1 -1 75  13.2927 28.3896 16.8398 7.57387 3.64542 2.76136 2.49734
2015  7 1  0 0 1 -1 -1 75  20.7235 19.5754 18.332 8.75996 3.4761 1.90426 2.22882
2016  7 1  0 0 1 -1 -1 75  20.3706 26.9536 11.7525 8.70579 3.83102 1.70625 1.68022
2017  7 1  0 0 1 -1 -1 75  8.21586 31.7835 19.4218 7.1846 4.55963 2.19449 1.64013
2018  7 1  0 0 1 -1 -1 75  16.1963 13.8948 23.9859 12.1806 4.02326 2.76827 1.95091
2019  7 1  0 0 1 -1 -1 75  29.218 18.7217 7.71803 10.571 5.11601 1.8719 1.78333
2020  7 1  0 0 1 -1 -1 75  10.6894 38.4211 12.1572 4.34614 5.10416 2.66511 1.61691
2021  7 1  0 0 1 -1 -1 75  17.3361 16.2335 26.5958 7.68308 2.26633 2.87622 2.00889
2022  7 1  0 0 1 -1 -1 75  15.5115 25.6347 11.3694 14.7204 4.04562 1.40937 2.30892
2023  7 1  0 0 1 -1 -1 75  13.9494 23.5483 18.3635 7.03383 7.86239 2.3853 1.85739
2024  7 1  0 0 1 -1 -1 75  13.0411 22.3072 17.6201 11.2474 3.93762 4.6715 2.17498
2025  7 -1  0 0 1 -1 -1 75  12.4697 21.5137 17.2543 11.1549 6.50311 2.59319 3.51112
1996  4 2  0 0 1 -1 -1 25  0 8.39557 5.08526 3.41307 3.80636 2.9971 1.30263
1997  4 2  0 0 1 -1 -1 25  0 12.1925 4.03426 2.78089 1.65518 2.0769 2.26027
1998  4 2  0 0 1 -1 -1 25  0 9.97662 6.93356 2.70326 1.49898 1.17505 2.71254
1999  4 2  0 0 1 -1 -1 25  0 13.2769 4.4697 3.37777 1.11269 0.830732 1.93224
2000  4 2  0 0 1 -1 -1 25  0 11.7064 6.718 2.66932 1.61561 0.711578 1.57908
2001  4 2  0 0 1 -1 -1 25  0 18.7164 2.82752 1.7916 0.612436 0.441081 0.610952
2002  4 2  0 0 1 -1 -1 25  0 12.2893 9.03426 1.88204 0.863481 0.358252 0.572708
2003  4 2  0 0 1 -1 -1 25  0 9.12401 7.27418 6.19172 1.16867 0.606564 0.634858
2005  4 2  0 0 1 -1 -1 25  0 18.6891 2.21994 1.46766 1.19394 0.989233 0.44015
2006  4 2  0 0 1 -1 -1 25  0 9.05772 11.1572 2.01925 0.949616 0.868086 0.948086
2007  4 2  0 0 1 -1 -1 25  0 4.47453 6.55264 9.61665 1.75697 1.01164 1.58756
2008  4 2  0 0 1 -1 -1 25  0 7.94927 2.63696 4.47017 6.70094 1.43399 1.80867
2009  4 2  0 0 1 -1 -1 25  0 11.5466 3.77979 1.5428 2.43201 3.9184 1.7804
2010  4 2  0 0 1 -1 -1 25  0 13.4569 4.8147 1.91439 0.721608 1.39586 2.69653
2011  4 2  0 0 1 -1 -1 25  0 10.8087 7.03997 2.97529 1.09183 0.674375 2.40984
2013  4 2  0 0 1 -1 -1 25  0 13.957 4.90859 2.51467 1.68471 0.822558 1.11247
2014  4 2  0 0 1 -1 -1 25  0 14.843 5.29075 2.2044 1.04382 0.800965 0.817065
2015  4 2  0 0 1 -1 -1 25  0 12.3091 6.89959 3.05535 1.1929 0.665264 0.877736
2016  4 2  0 0 1 -1 -1 25  0 15.7653 4.08671 2.7839 1.20939 0.546548 0.608165
2017  4 2  0 0 1 -1 -1 25  0 15.2902 5.55712 1.90343 1.18481 0.576313 0.488121
2018  4 2  0 0 1 -1 -1 25  0 8.65438 9.00688 4.23875 1.37777 0.956779 0.765451
2019  4 2  0 0 1 -1 -1 25  0 13.8631 3.35377 4.2102 2.01609 0.748378 0.808433
2020  4 2  0 0 1 -1 -1 25  0 18.0904 3.38348 1.11075 1.27835 0.673096 0.463942
2021  4 2  0 0 1 -1 -1 25  0 9.96352 9.85776 2.65563 0.765716 0.980569 0.776806
2022  4 2  0 0 1 -1 -1 25  0 14.3568 3.74765 4.45387 1.21178 0.433405 0.796535
2023  4 2  0 0 1 -1 -1 25  0 13.0777 6.05652 2.14837 2.35555 0.723045 0.638857
2024  4 2  0 0 1 -1 -1 25  0 12.4186 5.81678 3.42727 1.183 1.41014 0.7442
2025  4 2  0 0 1 -1 -1 25  0 11.9648 5.68657 3.39243 1.94949 0.794602 1.21214
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

