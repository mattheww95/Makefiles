#!/usr/bin/env sh

SubmittersDir=./SubmittersDir

for loc in $SubmittersDir/*/*/
do
  for i in $(cat $loc/*_loc_parser.txt)
  do
    basename $i | cut -d. -f1 | xargs -I cody echo -e cody"\t"$i  
  done | sort -u -k1,1 >> $loc/$(basename $loc)_vcfparser_sorted_ready.txt 
done
