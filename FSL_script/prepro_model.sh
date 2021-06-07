#!/bin/bash

# Generate the subject list to make modifying this script
for id in `seq -w 1 16` ; do
    subj="sub-$id"
    echo "===> Starting processing of $subj"
    echo
    cd $subj

      # If the brain mask doesn’t exist, create it
      if [ ! -f anat/${subj}_T1w_brain.nii.gz ]; then
          echo "Skull-stripped brain not found, using bet with a fractional intensity threshold of 0.35"
          bet2 anat/${subj}_T1w.nii.gz \
              anat/${subj}_T1w_brain_f02.nii.gz -f 0.35
      fi

      # Copy the design files into the all the subject directory, and change “sub-01” content of original design files to different subject accordingly
      cp ../design_run1.fsf .
      cp ../design_run2.fsf .
      cp ../design_run3.fsf .

      # Change “sub-01” content of original design files to match different subjects accordingly
      sed -i "s|sub-01|${subj}|g" design_run1.fsf
      sed -i "s|sub-01|${subj}|g" design_run2.fsf
      sed -i "s|sub-01|${subj}|g" design_run3.fsf

      # Now everything is set up to run feat
      echo "===> Starting feat for run 1"
      feat design_run1.fsf
      echo "===> Starting feat for run 2"
      feat design_run2.fsf
      echo "===> Starting feat for run 2"
      feat design_run3.fsf
              echo

  # Go back to the directory containing all of the subjects, and repeat the loop
  cd ..
done

echo "job is done"
