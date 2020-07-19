#/usr/bin/env bash

levels=(0 2 1 3 4 5 6 7 8 9)
for i in {0..9}
do
python ~/research/useful_scripts/set_agr_y_limits.py fit_${i}.agr 0.05 0.57
python ~/research/useful_scripts/set_agr_x_limits.py fit_${i}.agr 4 26
python ~/research/useful_scripts/set_agr_plotname.py fit_${levels[i]}.agr "Level ${i}"
python ~/research/useful_scripts/set_agr_major_x_tick_spacing.py fit_${i}.agr 5
python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py fit_${i}.agr 0.1
done

for i in {0..6}
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in 1 2 4 5 7 8
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr y
done