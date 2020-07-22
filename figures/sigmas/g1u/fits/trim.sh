#/usr/bin/env bash

levels=(10 0 2 1 5 3 4 9 8 6 7 13 11 15 16 18 12 14 17 20 22 19 21 23)
for i in {0..23}
do
python ~/research/useful_scripts/set_agr_y_limits.py fit_${i}.agr 0.05 0.7
python ~/research/useful_scripts/set_agr_x_limits.py fit_${i}.agr 4 24
python ~/research/useful_scripts/set_agr_plotname.py fit_${levels[i]}.agr "Level ${i}"
python ~/research/useful_scripts/set_agr_major_x_tick_spacing.py fit_${i}.agr 5
python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py fit_${i}.agr 0.1
done

for i in {0..18}
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23
do python ~/research/useful_scripts/turn_off_agr_labels.py fit_${levels[i]}.agr y
done

for i in {0..23}
do
echo \\includegraphics[width=0.19\\textwidth]{figures/sigmas/g1u/fits/fit_${levels[i]}.pdf}
done