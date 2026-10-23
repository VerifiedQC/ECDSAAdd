"""Check the first observed two/three-move relocations in each source walk."""
import sys
from front_trace import ROOT,load
from repack_parts import arena,repack_parts
r=load('resize');c=load('control')
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout',
       'namespace ECDSAAdd.Arithmetic.Paper935']
def expand(ranges):return {q for lo,hi in ranges for q in range(lo,hi)}
for phase in ('s2-walkA','s6-walkC'):
    for count in (2,3):
        stage=next(s for s in r if s['phase']==phase and s['stage']=='shift_exit' and sum(len(rp['moves']) for rp in s['repacks'])==count)
        ctl=next(s for s in c if s['phase']==phase and s['step']==stage['step'])
        name=phase[:2]+'Step'+str(stage['step'])+'MultiRepack'
        before=expand(stage['resizes'][-1]['live_after']);after=expand(ctl['live_before'])
        moves=[(m['old'],m['fresh']) for rp in stage['repacks'] for m in rp['moves']]
        lines += [arena(name+'Before',before),arena(name+'After',after)]
        lines += repack_parts(name,name+'Before',name+'After',before,moves,after)
lines+=['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines);path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceMultiRepack.lean'
if '--check' in sys.argv:assert path.read_text()==text
else:path.write_text(text)
