"""Compose the selected observed row certificates into bank transactions."""
import sys
from certificate_steps import CERTIFICATE_STEPS
from front_trace import ROOT, load
entry_mode = '--entry' in sys.argv
exit_mode = '--exit' in sys.argv
label = 'Exit' if exit_mode else ('Entry' if entry_mode else 'Head')
parts = 'HmrSourceExitParts' if exit_mode else ('HmrSourceEntryParts' if entry_mode else 'HmrSourceHeadroomParts')
lines=['import ECDSAAdd.Arithmetic.Paper935.'+parts,
       'namespace ECDSAAdd.Arithmetic.Paper935']
data=load('resize')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        stage=next(s for s in data if s['phase']==phase and s['step']==t and s['stage']==('shift_exit' if exit_mode else 'add'))
        rows=stage['resizes'] if exit_mode else (stage['resizes'][:4] if entry_mode else stage['resizes'][4:])
        ns=[phase[:2]+'Step'+str(t)+label+r['row'].capitalize() for r in rows]
        name=phase[:2]+'Step'+str(t)+label+'Bank'
        final=ns[-1]+'After'
        for n,r in zip(ns,rows):
            if not exit_mode: lines += [f'def {n}Out : WindowRow := ⟨{r["after"]},{r["sign"]}⟩']
        def l(xs): return '['+','.join(xs)+']'
        for i,(n,r) in enumerate(zip(ns,rows)):
            for suffix,arena,key,view in [('Incoming',n+'Before',r['live_before'],'Row'),
                                          ('Outgoing',final,rows[-1]['live_after'],'Out')]:
                rs=l([x+view for x in ns[i:]])
                pred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in key)
                lines += [f'theorem {n}_{suffix} : rowsOwned {arena} {rs} := by',
                          '  constructor', '  · apply hmrLayout_nodup_of_sorted', '    decide +kernel',
                          f'  · apply hmrLayout_owned_of_filter {arena} (fun q => {pred}) rfl',
                          '    decide +kernel']
        requests=l([f'({n}Row,{r["width"]})' for n,r in zip(ns,rows)])
        fresh=lambda n: '[]' if exit_mode else n+'Fresh'
        logs=l([fresh(n) for n in ns])
        outs=l([n+'Out' for n in ns])
        programs=[(f'shrinkRow {r["sign"]} {n}Extra' if exit_mode and len(r['before'])>r['width'] else f'growRow {r["sign"]} {fresh(n)}') for n,r in zip(ns,rows)]
        def pg(xs): return '('+xs[0]+' ++ '+pg(xs[1:])+')' if xs else '[]'
        program=pg(programs)
        lines += [f'theorem {name}_rows : planWindowRowsLog {ns[0]}Before {requests} {logs}=',
                  f'    some ({final},{outs},{program}) := by',
                  f'  have h4 : planWindowRowsLog {final} [] []=some ({final},[],[]) := rfl']
        for i in reversed(range(4)):
            n,r=ns[i],rows[i]
            tailreq=l([f'({m}Row,{rr["width"]})' for m,rr in zip(ns[i+1:],rows[i+1:])])
            taillog=l([fresh(m) for m in ns[i+1:]])
            tailouts=l([m+'Out' for m in ns[i+1:]])
            tailprogram=pg(programs[i+1:])
            lines += [f'  have h{i} := planWindowRowsLog_of_cons {n}Before {n}After {final}',
                      f'    {n}Row {n}Out {r["width"]} {fresh(n)} {tailreq} {taillog} {tailouts}',
                      f'    ({programs[i]}) ({tailprogram}) {n}_Incoming {n}_checked h{i+1} {n}_Outgoing']
        lines += ['  exact h0']
        bankbefore='⟨'+','.join(ns[j]+'Row' for j in ((1,0,2,3) if exit_mode else ((0,1,2,3) if entry_mode else (1,0,3,2))))+'⟩'
        bankafter='⟨'+','.join(ns[j]+'Out' for j in ((1,0,2,3) if exit_mode else ((0,1,2,3) if entry_mode else (1,0,3,2))))+'⟩'
        widths='⟨'+','.join(str(rows[j]['width']) for j in ((1,0,2,3) if exit_mode else ((0,1,2,3) if entry_mode else (1,0,3,2))))+'⟩'
        lines += [f'theorem {name}_checked : compileHmrBankResizeLog .{"exit" if exit_mode else ("entry" if entry_mode else "headroom")} {ns[0]}Before {bankbefore} {widths} {logs}=',
                  f'    some ({final},{bankafter},{program}) := by',
                  '  unfold compileHmrBankResizeLog', '  simp only [HmrBankOrder.requests]', f'  rw [{name}_rows]', '  rfl']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
path=ROOT/('ECDSAAdd/Arithmetic/Paper935/HmrSourceExitBank.lean' if exit_mode else ('ECDSAAdd/Arithmetic/Paper935/HmrSourceEntryBank.lean' if entry_mode else 'ECDSAAdd/Arithmetic/Paper935/HmrSourceHeadroomBank.lean'))
if '--check' in sys.argv:
    assert path.read_text()==text, 'Headroom bank certificates differ from source'
else:
    path.write_text(text)
