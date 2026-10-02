#!/usr/bin/env bash
# Checks the exact Skywalk development modules, not a completed point circuit.
set -euo pipefail
cd "$(dirname "$0")/.."
task_log_dir="${1:-skywalk-verification-logs}"
mkdir -p "$task_log_dir"
task_log_dir="$(cd "$task_log_dir" && pwd -P)"
task_start="$(date +%s)"
task_build_end=""
task_audit_start=""
task_audit_end=""
finish() {
  task_rc=$?
  task_end="$(date +%s)"
  python3 - "$task_log_dir" "$task_rc" "$task_start" "$task_end" \
    "$task_build_end" "$task_audit_start" "$task_audit_end" <<'PY'
import json,sys
from pathlib import Path
folder,rc,start,end,be,ast,ae=sys.argv[1:]
delta=lambda a,b: int(b)-int(a) if a and b else None
Path(folder,'timing.json').write_text(json.dumps({
 'scope':'Skywalk development modules; full point integration pending',
 'exit_code':int(rc),'start_utc':int(start),'end_utc':int(end),
 'total_seconds':int(end)-int(start),'build_seconds':delta(start,be),
 'axiom_seconds':delta(ast,ae)},indent=2)+'\n')
PY
  exit "$task_rc"
}
trap finish EXIT
task_modules=(
  ECDSAAdd.Math.SkywalkNat ECDSAAdd.Math.SkywalkRailsBridge
  ECDSAAdd.Math.SkywalkPayload ECDSAAdd.Arithmetic.SignedWord
  ECDSAAdd.Arithmetic.SignedHalf ECDSAAdd.Arithmetic.SkywalkSign
  ECDSAAdd.Arithmetic.SkywalkRoute ECDSAAdd.Arithmetic.SkywalkPayloadProgram
)
lake --wfail build "${task_modules[@]}" > "$task_log_dir/build.log" 2>&1
task_build_end="$(date +%s)"
python3 - "$task_log_dir" "${task_modules[@]}" <<'PY'
import hashlib,json,re,sys
from pathlib import Path
folder=Path(sys.argv[1]); modules=sys.argv[2:]
modules.insert(1,'ECDSAAdd.Math.SkywalkRails')
queries=[]; sources=[]; text=[]
for module in modules:
 path=Path(module.replace('.','/')+'.lean'); source=path.read_text()
 namespace=re.search(r'^namespace (\S+)',source,re.M).group(1)
 # Each module currently has one explicit namespace. Reject parser drift.
 assert len(re.findall(r'^namespace ',source,re.M))==1,path
 names=re.findall(r'^theorem ([A-Za-z_][A-Za-z_0-9]*)',source,re.M)
 queries.extend(namespace+'.'+name for name in names)
 sources.append({'path':str(path),'sha256':hashlib.sha256(path.read_bytes()).hexdigest()})
 text.append('import '+module)
assert len(set(queries))==len(queries)
text += ['#print axioms '+name for name in queries]
(folder/'audit.lean').write_text('\n'.join(text)+'\n')
(folder/'manifest.json').write_text(json.dumps({'sources':sources,'declarations':queries},indent=2)+'\n')
PY
task_audit_start="$(date +%s)"
lake env lean "$task_log_dir/audit.lean" > "$task_log_dir/axioms.log" 2>&1
python3 - "$task_log_dir" <<'PY'
import json,re,sys
from pathlib import Path
folder=Path(sys.argv[1]); wanted=json.loads((folder/'manifest.json').read_text())['declarations']
text=(folder/'axioms.log').read_text(); actual=re.findall(r"^'([^']+)'",text,re.M)
assert actual==wanted,(len(actual),len(wanted))
allowed={'propext','Classical.choice','Quot.sound'}
for line in text.splitlines():
 if 'depends on axioms:' in line:
  names=set(re.search(r'\[(.*?)\]',line).group(1).split(', '))
  assert names<=allowed,line
print('All',len(actual),'public Skywalk development declarations passed the axiom whitelist.')
PY
task_audit_end="$(date +%s)"
