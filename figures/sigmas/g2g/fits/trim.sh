#!/usr/bin/env bash

levels=(4 0 3 6 2 1 23 8 5 7 26 31 21 12 18 24 17 14 15 19 13 20 22 11 28 9 30 27 10 16 25 29 33 32)
for i in {0..33}
do
python ~/research/useful_scripts/set_agr_y_limits.py fit_${i}.agr 0.1 1.0
python ~/research/useful_scripts/set_agr_x_limits.py fit_${i}.agr 4 24
python ~/research/useful_scripts/set_agr_plotname.py fit_${levels[i]}.agr "Level ${i}"
python ~/research/useful_scripts/set_agr_major_x_tick_spacing.py fit_${i}.agr 5
python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py fit_${i}.agr 0.1
done

for i in {0..24}
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23 24 26 27 28 29 31 32 33
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr y
done

for i in {0..33}
do
echo \\includegraphics[width=0.18\\textwidth]{figures/sigmas/g2g/fits/fit_${levels[i]}.pdf}
done