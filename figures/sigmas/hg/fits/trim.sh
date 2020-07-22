#/usr/bin/env bash

levels=(0 2 4 6 5 10 1 11 14 30 12 3 8 9 18 23 31 33 13 22 15 26 16 20 17 28 32 39 27 29 25 19 7 21 24 34 35 42 40 38 36 37 41)
for i in {0..42}
do
python ~/research/useful_scripts/set_agr_y_limits.py fit_${i}.agr 0.0 0.7
python ~/research/useful_scripts/set_agr_x_limits.py fit_${i}.agr 4 24
python ~/research/useful_scripts/set_agr_plotname.py fit_${levels[i]}.agr "Level ${i}"
python ~/research/useful_scripts/set_agr_major_x_tick_spacing.py fit_${i}.agr 5
python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py fit_${i}.agr 0.1
done

for i in {0..24}
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in {30..37}
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23 24 26 27 28 29 31 32 33 34 36 37 38 39 41 42
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr y
done

for i in {0..42}
do
echo \\includegraphics[width=0.18\\textwidth]{figures/sigmas/hg/fits/fit_${levels[i]}.pdf}
done