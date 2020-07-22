#!/usr/bin/env bash

levels=(1 18 4 2 14 0 7 5 3 11 9 6 25 10 17 8 12 13 15 16 21 22 24 19 20 23)
for i in {0..25}
do
python ~/research/useful_scripts/set_agr_y_limits.py fit_${i}.agr 0.1 0.85
python ~/research/useful_scripts/set_agr_x_limits.py fit_${i}.agr 4 24
python ~/research/useful_scripts/set_agr_plotname.py fit_${levels[i]}.agr "Level ${i}"
python ~/research/useful_scripts/set_agr_major_x_tick_spacing.py fit_${i}.agr 5
python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py fit_${i}.agr 0.1
done

for i in {0..20}
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23 24
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr y
done

for i in {0..25}
do
echo \\includegraphics[width=0.18\\textwidth]{figures/sigmas/g2u/fits/fit_${levels[i]}.pdf}
done