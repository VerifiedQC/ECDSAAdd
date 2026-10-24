"""Check generated public declarations and the exact additive audit registry."""
import hashlib,json,re
from pathlib import Path
# Prefixes include the 173 main entries from 61311f7 and 4d0f000 before PR entries.
# Hash the complete merged prefix directly; no entries are excluded.
BASELINE_COUNT=23748
BASELINE_SHA256='c80d9a492aa800e3d36c3f93d03443d752cefa10d683db8a0bf983f623c48a66'
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
 return {'baseline_entries':BASELINE_COUNT,'baseline_sha256':BASELINE_SHA256,'first_step':64,'last_step':319,'files':files}

def verify_manifest(ROOT,outputs,manifest):
 base=ROOT/'ECDSAAdd/Arithmetic/Paper935'
 actualproofs=[]; checkpoint_proofs={96:[],128:[],160:[],192:[],224:[],256:[],288:[],320:[]}; old_defs=[]
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
  checkpoint=next(end for end in (96,128,160,192,224,256,288,320) if (number<=end if 'Prefix' in filename else number<end))
  checkpoint_proofs[checkpoint] += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if checkpoint!=96 or d['kind']=='theorem']
  if checkpoint==96:old_defs += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if d['kind']=='def']
 assert len(actualproofs)==len(set(actualproofs))
 entries=re.findall(r'^#print axioms (.+)$',(ROOT/'scripts/verify.sh').read_text(),re.M)
 baseline=''.join('#print axioms '+name+'\n' for name in entries[:BASELINE_COUNT])
 assert hashlib.sha256(baseline.encode()).hexdigest()==BASELINE_SHA256,'Existing audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:23928]).encode()).hexdigest()=='434b0e1478afa037eaae59a69a69e96dc94352422cab2f8c3348188bb75b7ccb','96-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24202]).encode()).hexdigest()=='f389888a2dce2a871b4ee1037787c3460181c9ae863d4b274be289e3d7c1a717','Corrected 96-step registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24656]).encode()).hexdigest()=='8e36c0ae03a686d8213ecc7d98e33cef92e0ea4cafce4d36518c70401cc48a2d','128-step merged audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:25110]).encode()).hexdigest()=='30a7312c887f5f1eca56e329ada42180c3d6583e3ab693b4f8c8afef0321ee5d','160-step merged audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:25564]).encode()).hexdigest()=='f332bd363c36e8a676cbc89910dc405c5eee806f0c8379c88ed3694faac7dba8','192-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:26018]).encode()).hexdigest()=='ae9171c0e55aaa3d08f6fa3b54cbc47190cfdd65d08ac5a5686a0e71c8e84b63','224-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:26472]).encode()).hexdigest()=='ebfb8aa4924f9576f064867cb86daa5b68e3a36ed2ec777a56242669d8c5a0f0','256-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:26926]).encode()).hexdigest()=='ce51a6dab224d689f860b26f5892dc46c9893318b763eb6ee01032032c45524c','288-step audit registry changed'
 assert entries[BASELINE_COUNT:]==sorted(checkpoint_proofs[96])+sorted(old_defs)+sorted(checkpoint_proofs[128])+sorted(checkpoint_proofs[160])+sorted(checkpoint_proofs[192])+sorted(checkpoint_proofs[224])+sorted(checkpoint_proofs[256])+sorted(checkpoint_proofs[288])+sorted(checkpoint_proofs[320]),'New public declarations and appended audit registry differ'
