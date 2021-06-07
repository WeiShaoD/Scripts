subjects = [01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16]; % Replace with a list of all of the subjects you wish to analyze

user = getenv('USER'); % Will return the username for OSX operating systems

for subject=subjects

subject = num2str(subject, '%02d');

if exist(['/home/wshao//BART_spm/sub-' subject '/func/sub-' subject '_task-balloonanalogrisktask_run-01_bold.nii']) == 0
    display('Run 1 has not been unzipped; unzipping now')
    gunzip(['/home/wshao/BART_spm/sub-' subject '/func/sub-' subject '_task-balloonanalogrisktask_run-01_bold.nii.gz'])
else
    display('Run 1 is already unzipped; doing nothing')
end

if exist(['/home/wshao/BART_spm/sub-' subject '/func/sub-' subject '_task-balloonanalogrisktask_run-02_bold.nii']) == 0
    display('Run 2 has not been unzipped; unzipping now')
    gunzip(['/home/wshao/BART_spm/sub-' subject '/func/sub-' subject '_task-balloonanalogrisktask_run-02_bold.nii.gz'])
else
    display('Run 2 is already unzipped; doing nothing')
end

if exist(['/home/wshao/BART_spm/sub-' subject '/func/sub-' subject '_task-balloonanalogrisktask_run-03_bold.nii']) == 0
    display('Run 3 has not been unzipped; unzipping now')
    gunzip(['/home/wshao/BART_spm/sub-' subject '/func/sub-' subject '_task-balloonanalogrisktask_run-03_bold.nii.gz'])
else
  display('Run 3 is already unzipped; doing nothing')
end

if exist(['/home/wshao/BART_spm/sub-' subject '/anat/sub-' subject '_T1w.nii']) == 0
    display('Anatomical image has not been unzipped; unzipping now')
    gunzip(['/home/wshao/BART_spm/sub-' subject '/anat/sub-' subject '_T1w.nii.gz'])
else
    display('Anatomical image is already unzipped; doing nothing')
end
