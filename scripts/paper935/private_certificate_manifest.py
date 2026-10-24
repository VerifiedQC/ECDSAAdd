"""Check generated public declarations and the exact additive audit registry."""
import hashlib,json,re
from pathlib import Path
BASELINE_COUNT=23575
BASELINE_SHA256='5947d8e8bda092b8e062bb47fd01f8d1547cd251082b7881a0b41b2dd11ec53c'
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
 return {'baseline_entries':BASELINE_COUNT,'baseline_sha256':BASELINE_SHA256,'first_step':64,'last_step':95,'files':files}

def verify_manifest(ROOT,outputs,manifest):
 base=ROOT/'ECDSAAdd/Arithmetic/Paper935'
 actualproofs=[]; actualdefs=[]
 expected_files=set(manifest['files'])
 actual_files={p.name for p in base.glob('HmrSource*Private*.lean')}
 assert actual_files==expected_files,'Unexpected private-certificate module set'
 for filename,expected in manifest['files'].items():
  text=(base/filename).read_text()
  assert text==outputs[Path(filename).stem],f'Stale generated private certificate {filename}'
  assert public_declarations(text)==expected,f'Public interface mismatch {filename}'
  actualproofs += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if d['kind']=='theorem']
  actualdefs += ['ECDSAAdd.Arithmetic.Paper935.'+d['name'] for d in expected if d['kind']=='def']
 assert len(actualproofs+actualdefs)==len(set(actualproofs+actualdefs))
 entries=re.findall(r'^#print axioms (.+)$',(ROOT/'scripts/verify.sh').read_text(),re.M)
 baseline=''.join('#print axioms '+name+'\n' for name in entries[:BASELINE_COUNT])
 assert hashlib.sha256(baseline.encode()).hexdigest()==BASELINE_SHA256,'Existing audit registry changed'
 assert entries[BASELINE_COUNT:]==sorted(actualproofs)+sorted(actualdefs),'New public declarations and appended audit registry differ'
