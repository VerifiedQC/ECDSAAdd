"""Check generated public declarations and the exact additive audit registry."""
import hashlib,json,re
from pathlib import Path
# Prefixes include the 138 main 61311f7 entries inserted before PR entries.
# Hash the complete merged prefix directly; no entries are excluded.
BASELINE_COUNT=23713
BASELINE_SHA256='1ad9ee01295917e1c4149834096836ee3fcf5f2deecedfcb8eabd73007ebb48b'
PUBLIC=re.compile(r'^(?:(?:noncomputable|local)\s+)?(def|theorem|lemma|abbrev|instance|structure|inductive|opaque|axiom)\s+([\w.]+)',re.M)

def public_declarations(text):
 result=[]
 for kind,name in PUBLIC.findall(text):
  assert kind in ('def','theorem'),(kind,name)
  result.append({'name':name,'kind':kind})
 return result

def manifest_for(outputs):
 files={}
 for module,text in sorted(outputs.items()):
  declared=public_declarations(text)
  step=re.fullmatch(r'HmrSource(S[26])PrivateStep(\d+)',module)
  if step:
   p,t=step.groups();name=p.lower()+'PrivateStep'+t
   expected=[{'name':name+s,'kind':'def'} for s in ('Arena','Bank','Spec','Plan')]+[{'name':name+s,'kind':'theorem'} for s in ('_source','_checked')]
   assert declared==expected,(module,declared)
  files[module+'.lean']=declared
 return {'baseline_entries':BASELINE_COUNT,'baseline_sha256':BASELINE_SHA256,'first_step':64,'last_step':159,'files':files}

def verify_manifest(ROOT,outputs,manifest):
 base=ROOT/'ECDSAAdd/Arithmetic/Paper935'
 actualproofs=[]; checkpoint_proofs={96:[],128:[],160:[]}; old_defs=[]
 expected_files=set(manifest['files'])
 actual_files={p.name for p in base.glob('HmrSource*Private*.lean')}
 assert actual_files==expected_files,'Unexpected private-certificate module set'
 for filename,expected in manifest['files'].items():
  text=(base/filename).read_text()
  assert text==outputs[Path(filename).stem],f'Stale generated private certificate {filename}'
  assert public_declarations(text)==expected,f'Public interface mismatch {filename}'
  proofs=['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected ]
  actualproofs += proofs
  number=int(re.search(r'(\d+)\.lean$',filename).group(1))
  checkpoint=next(end for end in (96,128,160) if (number<=end if 'Prefix' in filename else number<end))
  checkpoint_proofs[checkpoint] += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if checkpoint!=96 or d['kind']=='theorem']
  if checkpoint==96:old_defs += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if d['kind']=='def']
 assert len(actualproofs)==len(set(actualproofs))
 entries=re.findall(r'^#print axioms (.+)$',(ROOT/'scripts/verify.sh').read_text(),re.M)
 baseline=''.join('#print axioms '+name+'\n' for name in entries[:BASELINE_COUNT])
 assert hashlib.sha256(baseline.encode()).hexdigest()==BASELINE_SHA256,'Existing audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:23893]).encode()).hexdigest()=='6e2a096b8dccbf7864a8441984a1ccbb228ae2192c683fd6dbc3ec532a2129ba','96-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24167]).encode()).hexdigest()=='d5780092d5afe42a5a830299e5ea66a1c0d14e9568bbd4c12ef5d0e578a72781','Corrected 96-step registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24621]).encode()).hexdigest()=='01388c88eeb7711b48148a7da970126aed0da142881d9aa566bcc5d495c67970','128-step merged audit registry changed'
 assert entries[BASELINE_COUNT:]==sorted(checkpoint_proofs[96])+sorted(old_defs)+sorted(checkpoint_proofs[128])+sorted(checkpoint_proofs[160]),'New public declarations and appended audit registry differ'
