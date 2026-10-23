"""Compose selected observed fronts, relocations and control blocks."""
import sys
from generated_chunks import write_step_chunks
from certificate_steps import CERTIFICATE_STEPS
from repack_parts import repack_parts
from front_trace import ROOT, load
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitial',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceEarlyControlInitial',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial',
       'import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition',
       'import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition',
       'namespace ECDSAAdd.Arithmetic.Paper935']
r=load('resize');c=load('control')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        e=next(s for s in r if (s['phase'],s['step'],s['stage'])==(phase,t,'shift_exit'))
        entry=next(s for s in r if (s['phase'],s['step'],s['stage'])==(phase,t,'add'))
        ctl=next(s for s in c if (s['phase'],s['step'])==(phase,t))
        base=phase[:2]+'Step'+str(t);name=base+'Complete';front=base+'Front';A=base+'ExitGvAfter'
        early=t<498;kind='Early' if early else 'Armed';control=phase[:2]+('First' if t in (0,498) else 'Step'+str(t))+kind+'Control';C=control+'Arena'
        moves=[(m['old'],m['fresh']) for rp in e['repacks'] for m in rp['moves']]
        ms='['+','.join(f'({a},{b})' for a,b in moves)+']'
        lines += [f'def {name}Moves : List (Wire × Wire) := {ms}',
                  f'def {name}Out : WindowBank := {front}Out.repacked {name}Moves',
                  f'def {name}Log : Hmr{kind}StepLog := ⟨{front}Log,{name}Moves,{control}Log⟩']
        if len(moves)>1:
            before={q for lo,hi in e['resizes'][-1]['live_after'] for q in range(lo,hi)}
            after={q for lo,hi in ctl['live_before'] for q in range(lo,hi)}
            lines+=repack_parts(name+'Relocation',A,C,before,moves,after)
            lines += [f'theorem {name}_repack : {A}.checkRepack {name}Moves=some {C} := by',
                      f'  simpa only [{name}Moves] using {name}Relocation_checked']
        elif moves:
            old,fresh=moves[0]
            lines += [f'def {name}MoveArena : Arena := ⟨{A}.live∪{{{fresh}}},Finset.union_subset {A}.bounded (by norm_num [arenaWires])⟩',
                      f'theorem {name}_repack : {A}.checkRepack {name}Moves=some {C} := by',
                      f'  have owned : {old}∈{A}.live := by norm_num [{A},arenaWires]',
                      f'  have reserve : {A}.reserve {{{fresh}}}=some {name}MoveArena := by',
                      '    apply hmrArena_reserve_of_live', '    · norm_num [arenaWires]',f'    · norm_num [{A},arenaWires]', '    · rfl',
                      f'  have retired : {name}MoveArena.retireSet {{{old}}}={C} := by',
                      f'    unfold Arena.retireSet {C}', '    simp only [Arena.mk.injEq]', '    ext q',
                      f'    simp only [{name}MoveArena,{A},arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]',
                      '    simp only [Wire] at *','    omega',
                      f'  simp only [{name}Moves]', '  rw [Arena.checkRepack,if_pos owned,reserve]', f'  change ({name}MoveArena.retireSet {{{old}}}).checkRepack []=some {C}', '  rw [retired]', '  rfl']
        else:
            lines += [f'theorem {name}_repack : {A}.checkRepack {name}Moves=some {C} := by rfl']
        qs=ctl['counter'];record=ctl['record_before'];ts=ctl['timestamp'];frozen=ctl['frozen'] or 0;sigma,branch=ctl['retained_flags'];need=ctl['record_fits'][0]['need']
        rest=[sigma,branch]+([] if early else [frozen]+ts)+record
        pred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in ctl['live_before'])
        lines += [f'theorem {name}_owned : ({name}Out.rows.flatMap WindowRow.wires++{qs}).toFinset⊆{C}.live := by',
                  f'  apply hmrLayout_owned_of_filter {C} (fun q => {pred}) rfl','  decide +kernel',
                  f'theorem {name}_apart : List.Disjoint ({name}Out.rows.flatMap WindowRow.wires++{qs}) {rest} := by',
                  f'  have nd : (({name}Out.rows.flatMap WindowRow.wires++{qs})++{rest}).Nodup := by',
                  '    apply hmrLayout_nodup_of_sorted','    decide +kernel',"  exact (List.nodup_append'.mp nd).2.2"]
        fgw=entry['resizes'][0]['width'];vw=entry['resizes'][2]['width'];widths={x['row']:x['width'] for x in e['resizes']};ew='⟨'+','.join(str(widths[k]) for k in ('f','g','fv','gv'))+'⟩'
        params=f'{base}EntryFBefore {front}Bank {fgw} {vw} {ew} {frozen} {qs} '+('' if early else str(ts)+' ')+f'{record} '+('' if early else '1 ')+f'{need} {name}Log'
        proof_start=len(lines)
        lines += [f'theorem {name}_checked : (compileHmr{kind}StepLog {params}).map (fun _ => true)=some true := by',
                  f'  obtain ⟨Q,hq,_⟩ := Option.map_eq_some_iff.mp {control}_checked',
                  f'  have fv1 : {name}Out.fv.second={ctl["fv_reads"][0]} := by decide +kernel']
        for i in (2,3,4):
            lines += [f'  have fv{i} : {name}Out.fv.payload[{i}]?.getD {name}Out.fv.sign={ctl["fv_reads"][i-1]} := by decide +kernel']
        if not early:
            lines += [f'  have gEq : {name}Out.g.wires={control}G := by decide +kernel']
        lines += [f'  have result := compileHmr{kind}StepLog_of_parts {base}EntryFBefore {C} {front}Bank {fgw} {vw} {ew} {frozen} {qs} '+('' if early else str(ts)+' ')+f'{record} '+('' if early else '1 ')+f'{need} {name}Log {front}Plan Q',
                  f'    {front}_checked {name}_repack',
                  f'    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro {name}_owned {name}_apart)))',
                  '    (by']
        callargs=(f'{C} {qs} {record} {qs[-1]} {sigma} {name}Out.fv.second ' if early else f'{C} {name}Out.g.wires {qs} {ts} {record} {frozen} {qs[-1]} {sigma} {name}Out.fv.second ')
        callargs+=' '.join(f'({name}Out.fv.payload[{i}]?.getD {name}Out.fv.sign)' for i in (2,3,4))
        callargs+=f' {branch} '+('' if early else '1 ')+f'{need} {control}Log'
        lines += [f'      change compileHmr{kind}ControlLog {callargs}=some Q',
                  '      rw ['+','.join(['fv1','fv2','fv3','fv4']+([] if early else ['gEq']))+']',
                  '      exact hq)', '  rw [result]', '  rfl']
        if early:
            proof=lines[proof_start:]
            proof[0]=f'theorem {name}_explicit_checked : compileHmrEarlyStepLog {params}=some {name}Plan := by'
            proof[1]=f'  let Q := {control}Plan\n  have hq := {control}_plan_checked'
            proof[-2:]=['  exact result']
            lines[proof_start:]=[f'def {name}Plan : HmrEarlyStepPlan := ⟨{front}Plan,{C},{control}Plan,{name}Moves⟩']+proof+[
                f'theorem {name}_checked : (compileHmrEarlyStepLog {params}).map (fun _ => true)=some true := by',
                f'  rw [{name}_explicit_checked]', '  rfl']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceStepInitial.lean'
write_step_chunks(path,text,check='--check' in sys.argv)
