"""Generate selected F7/F16 checks from observed addresses, not an allocator."""
import gzip
import json
from pathlib import Path
import sys
import re
from control_trace import replay, zero_logs, free_logs, freeze_calls
root=Path(__file__).resolve().parents[2]
data=json.loads(gzip.decompress((root/'data/paper935/hmr-source-control.json.gz').read_bytes()))
assert data['source_commit']=='64b5a13aa249f1360846657392e6c66817b26d0f'
def intervals(live):
    rs=[]
    for q in sorted(live):
        if rs and rs[-1][1]==q:rs[-1][1]=q+1
        else:rs.append([q,q+1])
    return ' ∨ '.join(f'({a} ≤ q ∧ q < {b})' for a,b in rs) or 'False'
def arena(name,live):
    return [f'def {name} : Arena :=',f'  ⟨arenaWires.filter (fun q => {intervals(live)}),Finset.filter_subset _ _⟩','']
def lit(q,pol):return f'⟨{q},{str(pol).lower()}⟩'
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreeze','import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeEnd','','namespace ECDSAAdd.Arithmetic.Paper935','','/- Generated from the first armed step of each pinned walk. These are','selected accepted layouts, not a certificate for all 533 steps. -/','']
for phase in ('s2-walkA','s6-walkC'):
    s=next(s for s in data['stages'] if s['phase']==phase and not s['early'])
    states=replay(s);zero,fire,eq,w1,drop=freeze_calls(s)
    logs=zero_logs(s,zero);cleanup=free_logs(s,drop)
    name=phase[:2]+'FirstFreeze'
    lines+=arena(name+'Arena',states[zero['start']])
    lines+=arena(name+'EndArena',states[eq['start']])
    lines+=arena(name+'ReturnedArena',states[drop['end']])
    plans=[]
    for (_,keeper,block,prev),work in zip(zero['result'][1],logs):
        literals=([(prev,True)] if prev is not None else [])+[(q,False) for q in block]
        cells=', '.join('⟨'+lit(*l)+f',{q}⟩' for l,q in zip(literals[1:],work[:-1]))
        plans.append('⟨'+lit(*literals[0])+f', [{cells}], {keeper}⟩')
    lines += [f'def {name}Plans : List HmrBlockPlan :=', '  ['+',\n   '.join(plans)+']','',
              f'def {name}Logs : List (List Wire) := {logs}',
              f'def {name}CleanupLogs : List (List Wire) := {cleanup}','']
    offset=s['step']+1-s['tmin'];fw=fire['result'];zf=zero['result'][0]
    lines += [f'theorem {name}_checked :',
              f'    (compileHmrFreezeLog {name}Arena {s["g"]} {s["frozen"]} {s["timestamp"]} {offset}',
              f'      {name}Logs [{fw}]).map (fun (C,P) => (C.live.card,P.zeroPlans.map HmrBlockPlan.keeper,P.fire)) =',
              f'      some ({len(states[fire["end"]])},{name}Plans.map HmrBlockPlan.keeper,{fw}) := by',
              '  decide +kernel','']
    ew=[e['wire'] for e in s['events'][eq['start']:eq['end']]]
    lines += [f'theorem {name}_cleanup_checked :',
              f'    (compileHmrFreezeEndLog {name}EndArena {s["timestamp"]} {offset} {zf} {s["frozen"]} {fw}',
              f'      {name}Plans {ew} [{w1["result"]}] {name}CleanupLogs).map (fun (C,_) => C.live) =',
              f'      some {name}ReturnedArena.live := by', '  decide +kernel','']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
cleanup=re.findall(r'theorem s[26]FirstFreeze_cleanup_checked :[\s\S]*?  decide \+kernel\n',text)
assert len(cleanup)==2
for block in cleanup:text=text.replace(block+'\n','')
outputs={'HmrSourceFreezeInitial':text,'HmrSourceFreezeCleanupInitial':
    'import ECDSAAdd.Arithmetic.Paper935.HmrSourceFreezeInitial\n\nnamespace ECDSAAdd.Arithmetic.Paper935\n\n'+
    '\n'.join(cleanup)+'\nend ECDSAAdd.Arithmetic.Paper935\n'}
for name,body in outputs.items():
    path=root/'ECDSAAdd/Arithmetic/Paper935'/f'{name}.lean'
    if '--check' in sys.argv:assert path.read_text()==body,'Generated control instances differ from pinned traces.'
    else:path.write_text(body)
