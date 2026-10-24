"""Bound generated certificate modules by source-step count.

Chunks import their predecessor so literal arena aliases remain available.
The public umbrella and all declaration names stay stable.
"""
import re
from arena_sharing import expand_arena_aliases,read_arena_aliases

def write_step_chunks(path,text,check=False,limit=16,key_pattern=r'(s[26]Step\d+)\w*'):
    if path.stem not in ('HmrSourceEntryParts','HmrSourceHeadroomParts','HmrSourceExitParts'):
        text=expand_arena_aliases(text,read_arena_aliases(path.parent))
    namespace='namespace ECDSAAdd.Arithmetic.Paper935'
    ending='end ECDSAAdd.Arithmetic.Paper935'
    header,body=text.split(namespace,1)
    body=body.rsplit(ending,1)[0].strip()+'\n'
    starts=[];previous=None
    for match in re.finditer(r'^(?:def|theorem) '+key_pattern,body,re.M):
        key=match.group(1)
        if key!=previous:
            starts.append((match.start(),key));previous=key
    assert starts and starts[0][0]==0
    blocks=[body[pos:(starts[i+1][0] if i+1<len(starts) else len(body))]
            for i,(pos,_) in enumerate(starts)]
    outputs={};prior=None
    for offset in range(0,len(blocks),limit):
        name=path.stem+'Chunk'+str(offset//limit)
        imports=header
        if prior:imports+='import ECDSAAdd.Arithmetic.Paper935.'+prior+'\n'
        outputs[path.with_name(name+'.lean')]=imports+'\n'+namespace+'\n'+''.join(blocks[offset:offset+limit])+'\n'+ending+'\n'
        prior=name
    outputs[path]='import ECDSAAdd.Arithmetic.Paper935.'+prior+'\n'
    for output,content in outputs.items():
        if check:assert output.read_text()==content,f'Generated certificate chunk differs: {output}'
        else:output.write_text(content)
