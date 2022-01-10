#!/usr/bin/env sh 

DIR=/Drives/W/Projects/Project_Chrystal/2020_SARS-CoV-2_Sewage_Project/Analyses/WWVCFParser_rerun/SubmittersDir


for i in $DIR/*
do
  subber=$(realpath $i) 
  for val in $(cat ${subber}/*_vcfparser.txt)
  do
    basename $val | tr - _ | cut -d_ -f 3 | cut -d. -f 1 | tr -d [:digit:]
  done | grep -v "*"| sort -u | xargs -I cody mkdir -p ${i}/cody
done
