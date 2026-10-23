"""Symbolic arena certificates for an arbitrary observed relocation list."""
def arena(name,live):
    ranges=[]
    for q in sorted(live):
        if ranges and ranges[-1][1]==q:ranges[-1][1]=q+1
        else:ranges.append([q,q+1])
    rs='['+','.join(f'({a},{b})' for a,b in ranges)+']'
    pred=f'({rs} : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true'
    return f'def {name} : Arena := ⟨arenaWires.filter (fun q => {pred}),Finset.filter_subset _ _⟩'

def repack_parts(name,initial,final,live,moves,expected):
    live=set(live);lines=[];before=initial;stages=[]
    for i,(old,fresh) in enumerate(moves):
        assert old in live and fresh not in live and 0<=fresh<935
        after=(live|{fresh})-{old}
        borrowed=f'{name}Move{i}Borrowed';target=final if i==len(moves)-1 else f'{name}Move{i}After'
        if target!=final:lines.append(arena(target,after))
        lines += [f'def {borrowed} : Arena := ⟨{before}.live∪{{{fresh}}},Finset.union_subset {before}.bounded (by norm_num [arenaWires])⟩',
                  f'theorem {name}_move{i}_owned : {old}∈{before}.live := by norm_num [{before},arenaWires]',
                  f'theorem {name}_move{i}_reserve : {before}.reserve {{{fresh}}}=some {borrowed} := by',
                  '  apply hmrArena_reserve_of_live','  · norm_num [arenaWires]',f'  · norm_num [{before},arenaWires]','  · rfl',
                  f'theorem {name}_move{i}_retire : {borrowed}.retireSet {{{old}}}={target} := by',
                  f'  unfold Arena.retireSet {target}', '  simp only [Arena.mk.injEq]', '  ext q',
                  f'  simp only [{borrowed},{before},arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]',
                  '  simp only [Wire] at *','  omega']
        stages.append((before,borrowed,target));before=target;live=after
    assert live==set(expected)
    def ms(xs):return '['+','.join(f'({a},{b})' for a,b in xs)+']'
    lines += [f'theorem {name}_checked : {initial}.checkRepack {ms(moves)}=some {final} := by',
              f'  have tail{len(moves)} : {final}.checkRepack []=some {final} := rfl']
    for i in reversed(range(len(moves))):
        A,B,C=stages[i];old,fresh=moves[i]
        lines += [f'  have tail{i} := Arena.checkRepack_cons_of_parts {A} {B} {C} {final} {old} {fresh} {ms(moves[i+1:])}',
                  f'    {name}_move{i}_owned {name}_move{i}_reserve {name}_move{i}_retire tail{i+1}']
    lines+=['  exact tail0']
    return lines
