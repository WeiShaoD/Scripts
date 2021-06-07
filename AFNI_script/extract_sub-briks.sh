#!/bin/bash

for subj in `cat subjList.txt`; do

        3dbucket -aglueto Cash_betas+tlrc.HEAD ${subj}/${subj}.results/stats.${subj}+tlrc'[1]'
        3dbucket -aglueto Explode_betas+tlrc.HEAD ${subj}/${subj}.results/stats.${subj}+tlrc'[4]'

done
