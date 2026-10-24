"""Assemble selected complete source arithmetic fronts from checked transactions."""
import sys
from interval_predicates import compact_predicate, interval_predicate
from generated_chunks import write_step_chunks
from certificate_steps import CERTIFICATE_STEPS
from front_trace import ROOT, load, front_log
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBank',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBank',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4Parts',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterParts',
       'import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition',
       'namespace ECDSAAdd.Arithmetic.Paper935']
a=load('allocations');r=load('resize');c=load('control')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        def pick(ss,kind): return next(s for s in ss if (s['phase'],s['step'],s['stage'])==(phase,t,kind))
        add,counter,entry,exit=pick(a,'add'),pick(a,'counter'),pick(r,'add'),pick(r,'shift_exit')
        control=next(s for s in c if (s['phase'],s['step'])==(phase,t))
        log,_=front_log(add,counter,entry,exit)
        base=phase[:2]+'Step'+str(t);name=base+'Front';A=base+'EntryFBefore';B=base+'EntryGvAfter';V=base+'HeadGBefore';H=base+'HeadFvAfter';C=base+'ExitGvAfter'
        early=str(t<498).lower();frozen=control['frozen'] or 0;qs=control['counter'];sigma,branch=add['retained_flags']
        fgw=entry['resizes'][0]['width'];vw=entry['resizes'][2]['width']
        widths={x['row']:x['width'] for x in exit['resizes']};ew='⟨'+','.join(str(widths[k]) for k in ('f','g','fv','gv'))+'⟩'
        def bank(label,view):return '⟨'+','.join(base+label+k+view for k in ('F','G','Fv','Gv'))+'⟩'
        def pg(xs):return '('+xs[0]+' ++ '+pg(xs[1:])+')' if xs else '[]'
        pad=pg([f'growRow {x["sign"]} {base}Entry{x["row"].capitalize()}Fresh' for x in entry['resizes'][:4]])
        room=pg([f'growRow {x["sign"]} {base}Head{x["row"].capitalize()}Fresh' for x in entry['resizes'][4:]])
        shrink=pg([(f'shrinkRow {x["sign"]} {base}Exit{x["row"].capitalize()}Extra' if len(x['before'])>x['width'] else f'growRow {x["sign"]} []') for x in exit['resizes']])
        rowlog='⟨'+','.join(str(log['rows'][k]) for k in ('entry','headroom','exit'))+'⟩'
        fl='⟨'+','.join([rowlog]+[str(log[k]) for k in ('sigma','branch','flag','carry','first','second','counter')])+'⟩'
        lines += [f'def {name}Log : HmrFrontAllocationLog := {fl}',
                  f'def {name}Bank : WindowBank := {bank("Entry","Row")}',
                  f'def {name}Pair : WindowBank := {bank("Entry","Out")}',
                  f'def {name}Head : WindowBank := {bank("Head","Out")}',
                  f'def {name}Out : WindowBank := {bank("Exit","Out")}',
                  f'def {name}SigmaArena : Arena := ⟨{B}.live∪{{{sigma}}},Finset.union_subset {B}.bounded (by norm_num [arenaWires])⟩',
                  f'theorem {name}_sigma : {B}.checkBorrow 1 [{sigma}]=some {name}SigmaArena := by',
                  '  unfold Arena.checkBorrow','  rw [if_pos (by decide)]','  apply hmrArena_reserve_of_live',
                  '  · norm_num [arenaWires]',f'  · norm_num [{B},arenaWires]','  · rfl',
                  f'theorem {name}_branch : {name}SigmaArena.checkBorrow 1 [{branch}]=some {V} := by',
                  '  unfold Arena.checkBorrow','  rw [if_pos (by decide)]','  apply hmrArena_reserve_of_live',
                  '  · norm_num [arenaWires]',f'  · norm_num [{name}SigmaArena,{B},arenaWires]',
                  *([f'  · change {V}.live=({B}.live∪{{{sigma}}})∪{{{branch}}}',
                     f'    apply hmrArena_union_pair_of_filter_check {B} {V} (fun q => {interval_predicate(entry["resizes"][3]["live_after"])}) (fun q => {interval_predicate(entry["resizes"][4]["live_before"])}) {sigma} {branch} rfl rfl',
                     '    · norm_num [arenaWires,Finset.insert_subset_iff]', '    · decide +kernel']
                    if max(len(entry['resizes'][3]['live_after']),len(entry['resizes'][4]['live_before']))>30 else [
                  '  · ext q',f'    simp only [{name}SigmaArena,{B},{V},arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]',
                  '    simp only [Wire] at *','    omega'])]
        meta=qs+([] if t<498 else [frozen]);pred=compact_predicate(' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in entry['resizes'][0]['live_before']))
        lines += [f'theorem {name}_entry : HmrFrontEntryValid {A} {name}Bank {fgw} {vw} {ew} {early} {frozen} {qs} := by',
                  f'  have nd : ({meta}++({name}Bank.rows.flatMap WindowRow.wires)).Nodup := by',
                  '    apply hmrLayout_nodup_of_sorted','    decide +kernel',
                  f'  have owned : ({meta} : List Wire).toFinset⊆{A}.live := by',
                  f'    apply hmrLayout_owned_of_filter {A} (fun q => {pred}) rfl','    decide +kernel',
                  f'  have apart : Disjoint ({meta} : List Wire).toFinset ({name}Bank.rows.flatMap WindowRow.wires).toFinset := by',
                  '    apply Finset.disjoint_left.mpr','    intro q hq hr',
                  "    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)",
                  '  exact ⟨'+','.join(['by decide +kernel']*11)+",(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩",
                  f'def {name}Plan : HmrSourceFront := ⟨{B},{name}Pair,{pad},{name}SigmaArena,[{sigma}],{V},[{branch}],',
                  f'  {H},{name}Head,{room},{base}F4Plan,{base}CounterDuring,{base}CounterWork,{C},{name}Out,{shrink}⟩',
                  f'theorem {name}_checked : compileHmrSourceFrontLog {A} {name}Bank {fgw} {vw} {ew} {early} {frozen} {qs} {name}Log=some {name}Plan := by',
                  f'  have pairEq : {name}Pair={bank("Head","Row")} := by decide +kernel',
                  f'  have headEq : {name}Head={bank("Exit","Row")} := by decide +kernel']
        for fld,addfield in [('f','Add0A'),('g','Add0B'),('fv','Add1A'),('gv','Add1B')]:
            lines += [f'  have {fld}Eq : {base}{addfield}={name}Head.{fld}.wires := by decide +kernel']
        lines += [f'  apply compileHmrSourceFrontLog_of_parts {A} {name}Bank {fgw} {vw} {ew} {early} {frozen} {qs} {name}Log {name}Plan',
                  f'  · exact {name}_entry',f'  · exact {base}EntryBank_checked',f'  · exact {name}_sigma','  · rfl',f'  · exact {name}_branch','  · rfl',
                  f'  · simpa only [{name}Plan,pairEq] using {base}HeadBank_checked',
                  f'  · simpa only [{name}Plan,fEq,gEq,fvEq,gvEq] using {base}F4_checked',
                  f'  · exact {base}Counter_checked','  · rfl',
                  f'  · simpa only [{name}Plan,headEq] using {base}ExitBank_checked']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceFrontInitial.lean'
write_step_chunks(path,text,check='--check' in sys.argv)
