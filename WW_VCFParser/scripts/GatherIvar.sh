#!/usr/bin/env sh

for i in ../Submitter_Specific_Data/*_Reportables/*/variants
do
  var=$(dirname $i | rev | cut -d/ -f1 | rev | tr [:lower:] [:upper:])
  for ii in $i/*.tsv
  do
    realpath $ii >> ./SubmittersDir/$var/${var}_vcfparser.txt
  done
done


