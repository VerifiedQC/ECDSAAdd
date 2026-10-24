"""Check generated public declarations and the exact additive audit registry."""
import hashlib,json,re
from pathlib import Path
# Prefixes include all main entries through d42cf0a before PR entries.
# Hash the complete merged prefix directly; no entries are excluded.
BASELINE_COUNT=23937
BASELINE_SHA256='e15d78869e16a10b26c6dd191178b7a96e809534c3559dfae634c5c3542baad6'
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
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24117]).encode()).hexdigest()=='e4bd411d6c839ab503ce0514055b18c3b6d1f60d48af88f3d381717530dcb925','96-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24391]).encode()).hexdigest()=='7e7e7518539f210a94990a71acdb0902379e366e12c1f9c39c6e856ddfeb3971','Corrected 96-step registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:24845]).encode()).hexdigest()=='78a565c3ec3c3d654864d4a2b2603c8e171416a159554f7fe654785ffb91672b','128-step merged audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:25299]).encode()).hexdigest()=='0493aca13a595d5da16146efca4004860be00a4c8bb4de7e9256f731b9dd96a8','160-step merged audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:25753]).encode()).hexdigest()=='c8d19715781323499b285cd0a9afa9f1262b07518bf5713b653cc35dc49d042a','192-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:26207]).encode()).hexdigest()=='5a369c9347567ee09777cbb9970282bad4ba7d1f85321952d6fef114a27a1e1a','224-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:26661]).encode()).hexdigest()=='da9e3b17f5bc4a77e1930900b4ba8d821e5599041ae9065aeb24b5dfacce59c4','256-step audit registry changed'
 assert hashlib.sha256(''.join('#print axioms '+name+'\n' for name in entries[:27115]).encode()).hexdigest()=='25b75ce9b4a27766982a66846f2c18e4096810e5f3a49146efad814ffe1c73ce','288-step audit registry changed'
 assert entries[BASELINE_COUNT:]==sorted(checkpoint_proofs[96])+sorted(old_defs)+sorted(checkpoint_proofs[128])+sorted(checkpoint_proofs[160])+sorted(checkpoint_proofs[192])+sorted(checkpoint_proofs[224])+sorted(checkpoint_proofs[256])+sorted(checkpoint_proofs[288])+sorted(checkpoint_proofs[320]),'New public declarations and appended audit registry differ'
