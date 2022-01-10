#!/usr/bin/env sh 

DIR=WWVCFParser_rerun/SubmittersDir


for i in $DIR/*
do
  subber=$(realpath $i) 
  for val in $(cat ${subber}/*_vcfparser.txt)
  do
    basename $val | tr - _ | cut -d_ -f 3 | cut -d. -f 1 | tr -d [:digit:]
  done | grep -v "*"| sort -u | xargs -I cody mkdir -p ${i}/cody
done
