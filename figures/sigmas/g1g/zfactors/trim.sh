#!/usr/bin/env bash
a=(*agr)

for i in {0..22}
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23 24 26 27
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} y keep_tick_labels
done

for i in {0..27}
do echo "\\includegraphics[width=0.215\\textwidth]{figures/sigmas/g1g/zfactors/${a[i]}.pdf}"
done