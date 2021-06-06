> subjects = [01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20];

for subject=subjects

  subject=num2str(subject, '%02d');
  mkdir(['sub-' num2str(subject) '/anat'])
  mkdir(['sub-' num2str(subject) '/func'])
  movefile(['/home/wshao/Arithmetic/sub-' num2str(subject) '/anat/sub-' num2str(subject) '_T1w.nii'], ['sub-' num2str(subject) '/anat'])
  movefile(['/home/wshao/Arithmetic/sub-' num2str(subject) '/func/sub-' num2str(subject) '_task-rest_bold.nii.gz'], ['sub-' num2str(subject) '/func'])

end
