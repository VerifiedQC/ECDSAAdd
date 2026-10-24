"""Check generated public declarations and the exact additive audit registry."""
import hashlib,json,re
from pathlib import Path
# Prefixes include all main entries through 6c2a540 before PR entries.
# Hash the complete merged prefix directly; no entries are excluded.
BASELINE_COUNT=23956
BASELINE_SHA256='c417bd961fadde5dca64e4fb6476f7710d57194ad85b12936177275851e8c4e3'
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
 return {'baseline_entries':BASELINE_COUNT,'baseline_sha256':BASELINE_SHA256,'first_step':64,'last_step':351,'files':files}

def verify_manifest(ROOT,outputs,manifest):
 base=ROOT/'ECDSAAdd/Arithmetic/Paper935'
 actualproofs=[]; checkpoint_proofs={96:[],128:[],160:[],192:[],224:[],256:[],288:[],320:[],352:[]}; old_defs=[]
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
  checkpoint=next(end for end in (96,128,160,192,224,256,288,320,352) if (number<=end if 'Prefix' in filename else number<end))
  checkpoint_proofs[checkpoint] += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if checkpoint!=96 or d['kind']=='theorem']
  if checkpoint==96:old_defs += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if d['kind']=='def']
 assert len(actualproofs)==len(set(actualproofs))
 entries=re.findall(r'^#print axioms (.+)$',(ROOT/'scripts/verify.sh').read_text(),re.M)
 baseline=''.join('#print axioms '+name+'\n' for name in entries[:BASELINE_COUNT])
 assert hashlib.sha256(baseline.encode()).hexdigest()==BASELINE_SHA256,'Existing audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24136]).encode()).hexdigest()=='f674c4b18e307bc7e1135024475578002759768bcd5a712b3456d707247b3759','96-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24410]).encode()).hexdigest()=='b5f61065d009eeefc6edfb9480bade2918af63a42af0f04e175588c5c2dabeec','Corrected 96-step registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24864]).encode()).hexdigest()=='589d110e415c8eb7cd99896357d97d77bc4fa2afef9f60484f8c9c82d0b29960','128-step merged audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:25318]).encode()).hexdigest()=='b080d71275e36783db5e2599a6c5ad6b24da4f31889e1448583329de734d99a6','160-step merged audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:25772]).encode()).hexdigest()=='95c074730b43a090771e5aee6a95c9239b000d54a053ac739aabd2b022941f91','192-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:26226]).encode()).hexdigest()=='8bd26a11a94185961d06923cd38c150e384df804bbf7f817b66fb6b007997ca5','224-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:26680]).encode()).hexdigest()=='ca1479d8359af264c9b11eb694a294fd0dc099cbd3a59756a22eabfa1da009d0','256-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:27134]).encode()).hexdigest()=='40434f5ad31c220b5bf79dfd799a89aa78569e741919e17c3fc5a409e0b8d70d','288-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:27588]).encode()).hexdigest()=='0e3d2bd85dba44a8cad5f246f38cf15d193efe2460841131fd8c0c6e09693110','320-step merged audit registry changed'
 assert entries[BASELINE_COUNT:]==sorted(checkpoint_proofs[96])+sorted(old_defs)+sorted(checkpoint_proofs[128])+sorted(checkpoint_proofs[160])+sorted(checkpoint_proofs[192])+sorted(checkpoint_proofs[224])+sorted(checkpoint_proofs[256])+sorted(checkpoint_proofs[288])+sorted(checkpoint_proofs[320])+sorted(checkpoint_proofs[352]),'New public declarations and appended audit registry differ'
