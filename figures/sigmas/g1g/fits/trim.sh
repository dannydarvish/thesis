#/usr/bin/env bash

levels=(0 7 3 4 21 5 9 19 14 6 23 1 13 22 16 11 20 8 15 12 10 17 2 18 25 24 26 27)
for i in {0..25}
do
python ~/research/useful_scripts/set_agr_y_limits.py fit_${i}.agr -0.5 0.65
python ~/research/useful_scripts/set_agr_x_limits.py fit_${i}.agr 4 25
python ~/research/useful_scripts/set_agr_plotname.py fit_${levels[i]}.agr "Level ${i}"
python ~/research/useful_scripts/set_agr_major_x_tick_spacing.py fit_${i}.agr 5
python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py fit_${i}.agr 0.1
done

for i in {0..
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in 1 2 4 5 7 8
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr y
done