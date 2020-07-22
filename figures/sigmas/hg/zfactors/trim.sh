#!/usr/bin/env bash
a=(*agr)

for i in {0..24}
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} x
done

for i in {30..37}
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} x
done

for i in 1 2 3 4 6 7 8 9 11 12 13 14 16 17 18 19 21 22 23 24 26 27 28 29 31 32 33 34 36 37 38 39 41 42
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} y keep_tick_labels
done

for i in {0..42}
do echo "\\includegraphics[width=0.18\\textwidth]{figures/sigmas/hg/zfactors/${a[i]}.pdf}"
done