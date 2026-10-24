"""Compose new private-step interfaces without changing previous prefix modules."""
from pathlib import Path
import runpy,re,sys

def prefix_outputs(ROOT):
 import certificate_steps,generated_imports
 outputs={};old_steps=certificate_steps.CERTIFICATE_STEPS;old_narrow=generated_imports.narrow_imports;old_write=Path.write_text;old_argv=sys.argv
 def capture(path,text,*args,**kwargs):
  assert path.parent==ROOT/'ECDSAAdd/Arithmetic/Paper935'
  outputs[path.stem]=text
  return len(text)
 try:
  certificate_steps.CERTIFICATE_STEPS=(*range(96),498)
  generated_imports.narrow_imports=lambda path,text:text
  Path.write_text=capture
  sys.argv=['generate_walk_prefix.py']
  runpy.run_path(str(ROOT/'scripts/paper935/generate_walk_prefix.py'))
 finally:
  certificate_steps.CERTIFICATE_STEPS=old_steps;generated_imports.narrow_imports=old_narrow;Path.write_text=old_write;sys.argv=old_argv
 result={};NS='namespace ECDSAAdd.Arithmetic.Paper935';END='end ECDSAAdd.Arithmetic.Paper935'
 def rewrite(text,p):
  for t in range(64,96):
   for old,new in [(f'{p}ObservedSpec{t}',f'{p}PrivateStep{t}Spec'),(f'{p}ObservedPlan{t}',f'{p}PrivateStep{t}Plan'),(f'{p}Step{t}EntryFBefore',f'{p}PrivateStep{t}Arena'),(f'{p}Step{t}FrontBank',f'{p}PrivateStep{t}Bank'),(f'{p}Observed_step{t}_checked',f'{p}PrivateStep{t}_checked')]:
    text=re.sub(r'\b'+old+r'\b',new,text)
  for old,new in [(f'{p}Observed_prefix_logs',f'{p}ObservedExtended96_logs'),(f'{p}ObservedPrefixPlan',f'{p}ObservedExtended96Plan'),(f'{p}Observed_prefix_checked',f'{p}ObservedExtended96_checked')]:text=re.sub(r'\b'+old+r'\b',new,text)
  return text
 for p in ('s2','s6'):
  for kind in ('Segment64','Segment80','Join'):
   name='HmrSource'+p.upper()+'Prefix'+kind
   body=outputs[name].split(NS,1)[1].rsplit(END,1)[0]
   marks=list(re.finditer(r'^(?:def|theorem) (\w+)',body,re.M));blocks=[]
   for i,m in enumerate(marks):
    n=m.group(1);block=body[m.start():marks[i+1].start() if i+1<len(marks) else len(body)]
    if kind=='Join':
     keep=bool(re.match(p+r'Observed(?:PrefixPart[45]|_boundary(?:63|79)_|_prefix_|PrefixPlan$)',n))
    else:keep=not bool(re.match(p+r'Observed(?:Spec|Plan|_step)',n))
    if not keep:continue
    if re.match(p+r'Observed_boundary',n):block='private '+block
    blocks.append(rewrite(block,p))
   if kind=='Join':
    imports=[f'HmrSource{p.upper()}PrefixJoin',f'HmrSource{p.upper()}PrivateSegment64',f'HmrSource{p.upper()}PrivateSegment80']
    module=f'HmrSource{p.upper()}PrivatePrefix96'
   else:
    start=int(kind.removeprefix('Segment'));imports=[f'HmrSource{p.upper()}PrivateStep{last}' for last in (start+14,start+15)];module=f'HmrSource{p.upper()}PrivateSegment{start}'
   result[module]='\n'.join('import ECDSAAdd.Arithmetic.Paper935.'+n for n in imports)+'\n\n'+NS+'\n'+''.join(blocks)+'\n'+END+'\n'
 result['HmrSourcePrivatePrefix96']=''.join(f'import ECDSAAdd.Arithmetic.Paper935.HmrSource{p}PrivatePrefix96\n' for p in ('S2','S6'))
 return result
