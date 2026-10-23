"""Connect selected complete steps to the source metadata-lifetime scheduler."""
import sys
from generated_chunks import write_step_chunks
from certificate_steps import CERTIFICATE_STEPS
from front_trace import ROOT, load
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitial',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun',
       'namespace ECDSAAdd.Arithmetic.Paper935']
a=load('allocations');r=load('resize');c=load('control')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        entry=next(s for s in r if (s['phase'],s['step'],s['stage'])==(phase,t,'add'))
        exit=next(s for s in r if (s['phase'],s['step'],s['stage'])==(phase,t,'shift_exit'))
        ctl=next(s for s in c if (s['phase'],s['step'])==(phase,t))
        base=phase[:2]+'Step'+str(t);name=base+'Lifecycle';complete=base+'Complete';front=base+'Front';A=base+'EntryFBefore';M=phase[:2]+'ArmBoundaryMetadata';before=phase[:2]+'ArmBoundaryArena'
        fgw=entry['resizes'][0]['width'];vw=entry['resizes'][2]['width'];widths={x['row']:x['width'] for x in exit['resizes']};ew='⟨'+','.join(str(widths[k]) for k in ('f','g','fv','gv'))+'⟩'
        qs=ctl['counter'];ts=ctl['timestamp'];record=ctl['record_before'];frozen=ctl['frozen'];need=ctl['record_fits'][0]['need']
        if t==498:
            stage=next(s for s in a if (s['phase'],s['step'],s['stage'])==(phase,t,'add'))
            pred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in stage['live_before'])
            lines += [f'theorem {name}_arm : compileHmrArmLog {before} 6 {M}=some {A} := by',
                      '  unfold compileHmrArmLog Arena.checkBorrow', '  rw [if_pos (by decide +kernel)]',
                      '  apply hmrArena_reserve_of_live',
                      f'  · norm_num [{M},HmrFreezeMetadata.wires,arenaWires,Finset.insert_subset_iff]',
                      f'  · apply hmrLayout_disjoint_of_filter {before} (fun q => {pred}) rfl', '    decide +kernel',
                      '  · ext q',f'    simp only [{A},{before},{M},HmrFreezeMetadata.wires,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,List.toFinset_append,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]',
                      '    simp only [Wire] at *','    omega']
            postpred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in entry['resizes'][0]['live_before'])
            lines += [f'theorem {name}_timestampOwned : ({ts} : List Wire).toFinset⊆{A}.live := by',
                      f'  apply hmrLayout_owned_of_filter {A} (fun q => {postpred}) rfl','  decide +kernel',
                      f'theorem {name}_timestampApart : List.Disjoint {ts} ({front}Bank.rows.flatMap WindowRow.wires++{qs}) := by',
                      f'  have nd : ({ts}++({front}Bank.rows.flatMap WindowRow.wires++{qs})).Nodup := by',
                      '    apply hmrLayout_nodup_of_sorted','    decide +kernel',"  exact (List.nodup_append'.mp nd).2.2",
                      f'theorem {name}_chronological : (compileHmrChronologicalStepLog {A} {front}Bank {fgw} {vw} {ew} {frozen} {qs} {ts} {record} 1 {need} {complete}Log).map (fun _ => true)=some true := by',
                      '  unfold compileHmrChronologicalStepLog',
                      f'  rw [if_pos (And.intro {name}_timestampOwned (And.intro {name}_timestampApart (by decide +kernel)))]',
                      f'  exact {complete}_checked',
                      f'theorem {name}_checked : (compileHmrSourceStepLog {before} {front}Bank {fgw} {vw} {ew} {qs} {record} 6 498 498 {need} none (.arm {M} {complete}Log)).map (fun _ => true)=some true := by',
                      f'  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp {name}_chronological',
                      f'  have result := compileHmrSourceStepLog_of_arm {before} {A} {front}Bank {fgw} {vw} {ew} {qs} {record} 6 498 {need} {M} {complete}Log P {name}_arm hp',
                      '  rw [result]', '  rfl']
        else:
            lines += [f'theorem {name}_checked : (compileHmrSourceStepLog {A} {front}Bank {fgw} {vw} {ew} {qs} {record} 6 498 {t} {need} none (.early {complete}Log)).map (fun _ => true)=some true := by',
                      f'  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp {complete}_checked',
                      f'  simp only [compileHmrSourceStepLog,if_pos (by decide : {t}<498)]', '  rw [hp]', '  rfl']
# Retain the exact compiler expression rather than recomputing or choosing a fallback.
for statement in list(lines):
    if statement.startswith('theorem ') and 'Lifecycle_checked :' in statement:
        name=statement.split()[1].split('_checked')[0]
        expr=statement.split(': (',1)[1].split(').map (fun _ => true)',1)[0]
        lines += [f'def {name}Plan : HmrSourceStepPlan := hmrAcceptedPlan ({expr}) {name}_checked',
                  f'theorem {name}_plan_checked : {expr}=some {name}Plan :=',
                  f'  hmrAcceptedPlan_checked ({expr}) {name}_checked']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceLifecycleInitial.lean'
write_step_chunks(path,text,check='--check' in sys.argv)
