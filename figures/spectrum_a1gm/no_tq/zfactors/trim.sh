#!/usr/bin/env bash
cd /Users/dannydarvish/Documents/tex/thesis/figures/spectrum_a1gm/no_tq/zfactors
a=(zfactor_isotriplet-S0-P000-A1gm_1-ROT-0.agr
zfactor_isotriplet-S0-P000-A1gm_1-ROT-1.agr
zfactor_isotriplet_phi_pion-A1gm_1-P000-A1up-SS_0-P000-A1um-SS_0.agr
zfactor_isotriplet_eta_pion-A1gm_1-P000-A1up-SS_0-P000-A1um-SS_0.agr
zfactor_isotriplet_kaon_kbar-A1gm_1-P000-A1u-SS_0-P000-A1u-SS_0.agr
zfactor_isotriplet_phi_pion-A1gm_1-P001-A2p-SS_1-P00-1-A2m-SS_1.agr
zfactor_isotriplet_kaon_kbar-A1gm_1-P001-A2-SS_1-P00-1-A2-SS_1.agr
zfactor_isotriplet_phi_pion-A1gm_1-P011-A2p-SS_0-P0-1-1-A2m-SS_0.agr
zfactor_isotriplet_eta_pion-A1gm_1-P001-A2p-SS_0-P00-1-A2m-SS_0.agr
zfactor_isotriplet_eta_pion-A1gm_1-P011-A2p-SS_1-P0-1-1-A2m-SS_1.agr
zfactor_isotriplet_kaon_kbar-A1gm_1-P011-A2-SS_0-P0-1-1-A2-SS_0.agr
zfactor_isotriplet_kaon_kbar-A1gm_1-P011-A2-SS_1-P0-1-1-A2-SS_1.agr)

for i in {0..8}
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} x
done

for i in 1 2 4 5 7 8 10 11
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} y keep_tick_labels
done