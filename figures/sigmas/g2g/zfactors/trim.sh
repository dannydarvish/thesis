#!/usr/bin/env bash
a=(*agr)

for i in {0..24}
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23 24 26 27 28 29 31 32 33
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} y keep_tick_labels
done

for i in {0..33}
do python ~/research/useful_scripts/set_agr_major_y_tick_spacing.py ${a[i]} 0.1
echo "\\includegraphics[width=0.18\\textwidth]{figures/sigmas/g2g/zfactors/${a[i]}.pdf}"
done