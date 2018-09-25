#!/usr/bin/env bash

#########################################
# Bash script to split the .faa file into
# individual .faa files, named by gene_id
#########################################

while read line
do
    if [[ ${line:0:1} == '>' ]]
    then
        outfile=${line#>}.faa
        echo $line > $outfile
    else
        echo $line >> $outfile
    fi
done < outfile.faa
