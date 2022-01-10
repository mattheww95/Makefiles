#!/usr/bin/env sh

SubmittersDir=/Drives/W/Projects/Project_Chrystal/2020_SARS-CoV-2_Sewage_Project/Analyses/WWVCFParser_rerun/SubmittersDir

for dir_ in $SubmittersDir/*
do 
  for dirs in $(ls $(realpath $dir_/) -I "*.txt")
  do 
    grep "$dirs" $dir_/*_vcfparser.txt >> $dir_/$dirs/${dirs}_loc_parser.txt
  done
done
