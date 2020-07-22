#/usr/bin/env bash

levels=(4 0 8 3 1 13 2 9 6 12 16 11 7 23 21 5 10 15 18 22 17 14 20 19 25 29 30 27 26 24 28 31)
for i in {0..31}
do
python ~/research/useful_scripts/set_agr_y_limits.py fit_${i}.agr 0.1 0.85
python ~/research/useful_scripts/set_agr_x_limits.py fit_${i}.agr 4 24
python ~/research/useful_scripts/set_agr_plotname.py fit_${levels[i]}.agr "Level ${i}"
python ~/research/useful_scripts/set_agr_major_x_tick_spacing.py fit_${i}.agr 5
python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py fit_${i}.agr 0.1
done

for i in {0..24}
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23 24 26 27 28 29 31
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr y
done

for i in {0..31}
do
echo \\includegraphics[width=0.18\\textwidth]{figures/sigmas/hu/fits/fit_${levels[i]}.pdf}
done