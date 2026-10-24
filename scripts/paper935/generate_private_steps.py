"""Generate private component proofs and exact public certificates from source logs."""
from pathlib import Path
import json,re,runpy,sys,functools
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'scripts/paper935'))
import certificate_steps,generated_chunks,front_trace,arena_sharing
from early_fast_parts import generate_fast_early_parts
from interval_predicates import compact_predicate
front_trace.load=functools.lru_cache(None)(front_trace.load)
DECL=re.compile(r'^(?:private )?(?:def|theorem|lemma|abbrev) (s[26]\w+)\b',re.M)
NS='namespace ECDSAAdd.Arithmetic.Paper935'
END='end ECDSAAdd.Arithmetic.Paper935'
GENERATORS=[('generate_headroom_parts.py','--entry'),('generate_headroom_parts.py',),('generate_exit_parts.py',),('generate_headroom_bank.py','--entry'),('generate_headroom_bank.py',),('generate_headroom_bank.py','--exit'),('generate_arithmetic_parts.py',),('generate_f4_parts.py',),('generate_counter_parts.py',),('generate_front_parts.py',),('generate_step_parts.py',)]
IMPORTS=['Arena','HmrArenaFiniteChecks','HmrArithmeticComposition','HmrArmedControlCompiler','HmrBankOrder','HmrControlCheckParts','HmrControlDecidable','HmrEarlyControlCompiler','HmrFrontComposition','HmrHybridF4Compiler','HmrLoggedArmedCompiler','HmrLoggedBank','HmrLoggedBorrow','HmrLoggedCounter','HmrLoggedEarlyCompiler','HmrLoggedF4Compiler','HmrLoggedFront','HmrRepackComposition','HmrResizeComposition','HmrRowsSuffix','HmrSortedLayout','HmrSourceFront','HmrSourceStepCompiler','HmrSourceWalkCompiler','HmrSourceWalkComposition','HmrStepComposition','RowWindowResize','WindowAllocator','WindowBank','WindowRows']

def arena(name,live):
 ranges=[]
 for q in sorted(live):
  if ranges and ranges[-1][1]==q:ranges[-1][1]=q+1
  else:ranges.append([q,q+1])
 pred=compact_predicate(' ∨ '.join(f'({a}≤q ∧ q<{b})' for a,b in ranges) or 'False')
 return [f'def {name} : Arena := ⟨arenaWires.filter (fun q => {pred}),Finset.filter_subset _ _⟩','']

def components(t):
 """Run source generators afresh, capturing text without reading old instances."""
 texts={}
 def capture(path,text,**kwargs):
  if path.stem not in ('HmrSourceEntryParts','HmrSourceHeadroomParts','HmrSourceExitParts'):
   aliases={}
   for body in texts.values():aliases.update(re.findall(r'^def (\w+) : Arena := (\w+)\s*$',body,re.M))
   text=arena_sharing.expand_arena_aliases(text,aliases)
  texts[path.stem]=text
 old_steps=certificate_steps.CERTIFICATE_STEPS;old_writer=generated_chunks.write_step_chunks;old_argv=sys.argv
 try:
  certificate_steps.CERTIFICATE_STEPS=(t,)
  generated_chunks.write_step_chunks=capture
  control=front_trace.load('control')
  for phase in ('s2-walkA','s6-walkC'):
   stage=next(s for s in control if (s['phase'],s['step'])==(phase,t))
   text='\n'.join(generate_fast_early_parts(stage,phase[:2]+f'Step{t}EarlyControl',arena))
   texts[phase[:2]+'Control']=NS+'\n'+text+'\n'+END
  for args in GENERATORS:
   sys.argv=[args[0],*args[1:]]
   runpy.run_path(str(ROOT/'scripts/paper935'/args[0]))
 finally:
  certificate_steps.CERTIFICATE_STEPS=old_steps;generated_chunks.write_step_chunks=old_writer;sys.argv=old_argv
 decls={}
 for text in texts.values():
  body=text.split(NS,1)[1].rsplit(END,1)[0]
  marks=list(DECL.finditer(body))
  for i,m in enumerate(marks):
   n=m.group(1);assert n not in decls,n
   decls[n]=body[m.start():marks[i+1].start() if i+1<len(marks) else len(body)].strip()+'\n'
 return decls

def step_output(prefix,t,decls):
 name=prefix+f'PrivateStep{t}';base=prefix+f'Step{t}'
 ctl=next(s for s in front_trace.load('control') if (s['phase'][:2],s['step'])==(prefix,t))
 resize=next(s for s in front_trace.load('resize') if (s['phase'][:2],s['step'],s['stage'])==(prefix,t,'add'))
 end=next(s for s in front_trace.load('resize') if (s['phase'][:2],s['step'],s['stage'])==(prefix,t,'shift_exit'))
 fgw=resize['resizes'][0]['width'];vw=resize['resizes'][2]['width'];widths={r['row']:r['width'] for r in end['resizes']};ew='⟨'+','.join(str(widths[k]) for k in ('f','g','fv','gv'))+'⟩';need=ctl['record_fits'][0]['need']
 chosen=[];seen=set()
 def visit(n):
  if n in seen:return
  seen.add(n)
  for dep in sorted(set(re.findall(r'\bs[26]\w+\b',decls[n]))-{n}):
   if dep in decls:visit(dep)
  chosen.append(n)
 visit(base+'Complete_explicit_checked')
 for n in (base+'EntryFBefore',base+'FrontBank',base+'CompleteLog',base+'CompletePlan'):visit(n)
 header=['import ECDSAAdd.Arithmetic.Paper935.'+m for m in IMPORTS+[f'HmrSource{prefix.upper()}WalkLogs']]
 if t>=66:header.insert(0,'import ECDSAAdd.Arithmetic.Paper935.HmrSource'+prefix.upper()+f'PrivateStep{t-2}')
 header += ['',NS,'private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=','  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm','']
 blocks=[decls[n] if decls[n].startswith('private ') else 'private '+decls[n] for n in chosen]
 spec=f'⟨{fgw},{vw},{ew},{need},.early {base}CompleteLog⟩'
 footer=[f'def {name}Arena : Arena := {base}EntryFBefore',f'def {name}Bank : WindowBank := {base}FrontBank',f'def {name}Spec : HmrSourceWalkStepLog := {spec}',f'def {name}Plan : HmrSourceStepPlan := .early {base}CompletePlan',f'theorem {name}_source : {name}Spec={prefix}ObservedLogs{t//16*16}[{t%16}] := rfl',f'theorem {name}_checked : compileHmrSourceStepLog {name}Arena {name}Bank',f'    {name}Spec.fgWidth {name}Spec.vWidth {name}Spec.exitWidth {prefix}ObservedCounter {ctl["record_before"]}',f'    6 498 {t} {name}Spec.need none {name}Spec.log=some {name}Plan := by',f'  change compileHmrSourceStepLog {base}EntryFBefore {base}FrontBank {fgw} {vw} {ew} {ctl["counter"]} {ctl["record_before"]} 6 498 {t} {need} none (.early {base}CompleteLog)=some (.early {base}CompletePlan)',f'  simp only [compileHmrSourceStepLog,if_pos (by decide : {t}<498)]',f'  rw [{base}Complete_explicit_checked]', '  rfl',END,'']
 return '\n'.join(header+blocks+footer)

def main():
 from private_step_prefix import prefix_outputs
 from private_certificate_manifest import manifest_for, verify_manifest
 outputs={}
 for t in range(64,384):
  decls=components(t)
  for p in ('s2','s6'):
   outputs[f'HmrSource{p.upper()}PrivateStep{t}']=step_output(p,t,decls)
 outputs.update(prefix_outputs(ROOT))
 manifest=manifest_for(outputs)
 manifest_path=ROOT/'data/paper935/hmr-private-certificate-manifest.json'
 text=json.dumps(manifest,indent=2)+'\n'
 if '--check' in sys.argv:
  assert manifest_path.read_text()==text,'Private certificate manifest differs'
  verify_manifest(ROOT,outputs,manifest)
 else:
  for name,body in outputs.items():
   (ROOT/'ECDSAAdd/Arithmetic/Paper935'/f'{name}.lean').write_text(body)
  manifest_path.write_text(text)
 print(f'{len(outputs)} private-certificate modules match their source and public manifest.')

if __name__=='__main__':
 main()
