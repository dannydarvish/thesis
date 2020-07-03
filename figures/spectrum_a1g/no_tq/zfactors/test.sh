#!/usr/bin/env bash
cd /Users/dannydarvish/Documents/tex/thesis/figures/spectrum_a1g/no_tq/zfactors
a=(zfactor_isodoublet_kaon_pion-A1g_1-P000-A1u-SS_0-P000-A1um-SS_0.agr
zfactor_isodoublet_kaon_pion-A1g_1-P001-A2-SS_1-P00-1-A2m-SS_1.agr
zfactor_isodoublet_kaon_eta-A1g_1-P000-A1u-SS_0-P000-A1up-SS_0.agr
zfactor_isodoublet_kaon_phi-A1g_1-P000-A1u-SS_0-P000-A1up-SS_0.agr
zfactor_isodoublet_kaon_pion-A1g_1-P011-A2-SS_0-P0-1-1-A2m-SS_0.agr
zfactor_isodoublet_kaon_pion-A1g_1-P001-A2-SS_1-P00-1-A2m-SS_1.agr
zfactor_isodoublet_kaon_eta-A1g_1-P001-A2-SS_1-P00-1-A2p-SS_1.agr
zfactor_isodoublet_kaon_pion-A1g_1-P111-A2-SS_0-P-1-1-1-A2m-SS_0.agr
zfactor_kaon-P000-A1g_1-DDL_2.agr
zfactor_kaon-P000-A1g_1-TDO_3.agr
zfactor_kaon-P000-A1g_1-TDU_5.agr)

for i in {0..7}
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} x
done

for i in 1 2 4 5 7 8 10
do python ~/research/useful_scripts/turn_off_agr_labels.py ${a[i]} y keep_tick_labels
done