#!/usr/bin/env sh


for i in ../Submitter_Specific_Data/*_Reportables/*/variants;do dirname ${i} | rev | cut -d/ -f1 | rev | tr [:lower:] [:upper:];done | sort -u | xargs -I cody mkdir ./SubmittersDir/cody
