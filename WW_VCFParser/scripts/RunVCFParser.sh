#!/usr/bin/env sh

for i in $1/SubmittersDir/*/*/*_vcfparser_sorted_ready.txt
do
  cd $(dirname $i) && vcfparser -f $(realpath $i)  -voc all -r $2 --annotate --dpi 1000 --subplots_mode oneplotperfile && cd $1
done
