import re
import sys

try:
    f = open(sys.argv[1])
except:
    sys.exit('Usage: python oplist_to_tex.py oplist.txt')

lines = f.read().splitlines()
f.close()

irrep_map = {
    'G1g_1' : 'G_{1g}',
    'G1u_1' : 'G_{1u}',
    'G2g_1' : 'G_{2g}',
    'G2u_1' : 'G_{2u}',
    'Hg_1' : 'H_g',
    'Hu_1' : 'H_u',
    'G1g' : 'G_{1g}',
    'G1u' : 'G_{1u}',
    'G2g' : 'G_{2g}',
    'G2u' : 'G_{2u}',
    'Hg' : 'H_g',
    'Hu' : 'H_u',
    'A1um' : 'A_{1u}^-',
    'A2m' : 'A_2^-',
    'G1' : 'G_1',
    'G2' : 'G_2',
    'G' : 'G',
    'A1' : 'A_1',
    'A2' : 'A_2',
    'A2p' : 'A_2^+',
    'E' : 'E',
    'T1u' : 'T_{1u}',
    'A1u' : 'A_{1u}',
    'Ep' : 'E^+',
    'B1' : 'B_1',
    'B2' : 'B_2',
    'T1up' : 'T_{1u}^+'
}

particle_map = {
    'pion' : r'\pi',
    'lambda' : r'\Lambda',
    'sigma' : r'\Sigma',
    'kbar' : r'\overline K',
    'kaon' : 'K',
    'nucleon' : 'N',
    'delta' : r'\Delta',
    'xi' : r'\Xi',
    'eta' : r'\eta'
}

mom_map = {
    '(0,0,0)' : '(0)',
    '(0,0,1)' : '(1)',
    '(0,1,0)' : '(1)',
    '(0,-1,0)' : '(1)',
    '(0,1,1)' : '(2)',
    '(1,1,1)' : '(3)',
    '(0,0,2)' : '(4)',
    '(0,2,0)' : '(4)',
    '(0,-2,0)' : '(4)',
    '(0,0,0)' : '(0)',
    '(0,0,-1)' : '(1)',
    '(0,-1,-1)' : '(2)',
    '(-1,-1,-1)' : '(3)',
    '(0,0,-2)' : '(4)'
}

sh_tex = []
mh_tex = []
for line in lines:
    match = re.match(r'sigma P=\(0,0,0\) (.*) (.*)', line)
    if match:
        sh_tex.append(r'$\Sigma_{' + irrep_map[match[1]] + r'}^{' + match[2].replace('_', '') + r'}$')
    else:
        match = re.match('isotriplet_(.*?)_(.*?) .*? \[P=(\(.*?\))? (.*?) (.*?)\] \[P=(\(.*?\))? (.*?) (.*?)\]', line)
        if match:
            mh_tex.append(f'${particle_map[match[1]]}{mom_map[match[3]]}' +\
                '_{' + irrep_map[match[4]] + '}^{' + match[5].replace('_','') + '}' +\
                    f'{particle_map[match[2]]}{mom_map[match[6]]}' +\
                        '_{' + irrep_map[match[7]] + '}^{' + match[8].replace('_','') + '}$')
        
tex = r''
for i in range(len(mh_tex)):
    if i < len(sh_tex):
        tex += sh_tex[i]
    tex += ' & '
    tex += mh_tex[i]
    if i < len(mh_tex) - 1:
        tex += r'\\'
    tex += '\n'
ff = open(sys.argv[1][:-4] + '_table.txt', 'w')
ff.write(tex)
ff.close()
