"""Compose new private-step interfaces without changing previous prefix modules."""
from pathlib import Path
import runpy,re,sys

def chunked_log_proof(p,end):
 start=end-32;last=end//16-1
 lengths=', '.join(f'{p}ObservedLogs{i}_length' for i in range(0,end,16))
 return f'''theorem {p}ObservedExtended{end}_logs : {p}ObservedLogs.take {end}={p}ObservedPrefixPart{last}Logs := by
  have first : {p}ObservedLogs{start}={p}ObservedSegment{start}Logs := rfl
  have second : {p}ObservedLogs{start+16}={p}ObservedSegment{start+16}Logs := rfl
  have split : {p}ObservedLogs.take {end}={p}ObservedLogs.take {start} ++ {p}ObservedLogs{start} ++ {p}ObservedLogs{start+16} := by
    simp [{p}ObservedLogs, List.take_append, {lengths}, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [{p}ObservedPrefixPart{last}Logs, {p}ObservedPrefixPart{last-1}Logs, split, {p}ObservedExtended{start}_logs, first, second, List.append_assoc]
'''

def checkpoint_outputs(ROOT, end):
 start=end-32
 import certificate_steps,generated_imports
 outputs={};old_steps=certificate_steps.CERTIFICATE_STEPS;old_narrow=generated_imports.narrow_imports;old_write=Path.write_text;old_argv=sys.argv
 def capture(path,text,*args,**kwargs):
  assert path.parent==ROOT/'ECDSAAdd/Arithmetic/Paper935'
  outputs[path.stem]=text
  return len(text)
 try:
  certificate_steps.CERTIFICATE_STEPS=(*range(end),498)
  generated_imports.narrow_imports=lambda path,text:text
  Path.write_text=capture
  sys.argv=['generate_walk_prefix.py']
  runpy.run_path(str(ROOT/'scripts/paper935/generate_walk_prefix.py'))
 finally:
  certificate_steps.CERTIFICATE_STEPS=old_steps;generated_imports.narrow_imports=old_narrow;Path.write_text=old_write;sys.argv=old_argv
 result={};NS='namespace ECDSAAdd.Arithmetic.Paper935';END='end ECDSAAdd.Arithmetic.Paper935'
 def rewrite(text,p):
  for t in range(64,end):
   for old,new in [(f'{p}ObservedSpec{t}',f'{p}PrivateStep{t}Spec'),(f'{p}ObservedPlan{t}',f'{p}PrivateStep{t}Plan'),(f'{p}Step{t}EntryFBefore',f'{p}PrivateStep{t}Arena'),(f'{p}Step{t}FrontBank',f'{p}PrivateStep{t}Bank'),(f'{p}Observed_step{t}_checked',f'{p}PrivateStep{t}_checked')]:
    text=re.sub(r'\b'+old+r'\b',new,text)
  for old,new in [(f'{p}Observed_prefix_logs',f'{p}ObservedExtended{end}_logs'),(f'{p}ObservedPrefixPlan',f'{p}ObservedExtended{end}Plan'),(f'{p}Observed_prefix_checked',f'{p}ObservedExtended{end}_checked')]:text=re.sub(r'\b'+old+r'\b',new,text)
  return text
 for p in ('s2','s6'):
  for kind in (f'Segment{start}',f'Segment{start+16}','Join'):
   name='HmrSource'+p.upper()+'Prefix'+kind
   body=outputs[name].split(NS,1)[1].rsplit(END,1)[0]
   marks=list(re.finditer(r'^(?:def|theorem) (\w+)',body,re.M));blocks=[]
   for i,m in enumerate(marks):
    n=m.group(1);block=body[m.start():marks[i+1].start() if i+1<len(marks) else len(body)]
    if kind=='Join':
     keep=bool(re.match(p+rf'Observed(?:PrefixPart(?:{start//16}|{start//16+1})|_boundary(?:{start-1}|{start+15})_|_prefix_|PrefixPlan$)',n))
    else:keep=not bool(re.match(p+r'Observed(?:Spec|Plan|_step)',n))
    if not keep:continue
    if re.match(p+r'Observed_boundary',n):block='private '+block
    block=rewrite(block,p)
    if end>=160 and kind=='Join' and n==p+'Observed_prefix_logs':
     block=chunked_log_proof(p,end)
    blocks.append(block)
   if kind=='Join':
    imports=[f'HmrSource{p.upper()}PrefixJoin' if start==64 else f'HmrSource{p.upper()}PrivatePrefix{start}',f'HmrSource{p.upper()}PrivateSegment{start}',f'HmrSource{p.upper()}PrivateSegment{start+16}']
    module=f'HmrSource{p.upper()}PrivatePrefix{end}'
   else:
    segment=int(kind.removeprefix('Segment'));imports=[f'HmrSource{p.upper()}PrivateStep{last}' for last in (segment+14,segment+15)];module=f'HmrSource{p.upper()}PrivateSegment{segment}'
   result[module]='\n'.join('import ECDSAAdd.Arithmetic.Paper935.'+n for n in imports)+'\n\n'+NS+'\n'+''.join(blocks)+'\n'+END+'\n'
 result[f'HmrSourcePrivatePrefix{end}']=''.join(f'import ECDSAAdd.Arithmetic.Paper935.HmrSource{p}PrivatePrefix{end}\n' for p in ('S2','S6'))
 return result

def prefix_outputs(ROOT):
 result={}
 for end in (96,128,160,192,224,256,288,320):
  result.update(checkpoint_outputs(ROOT,end))
 return result
