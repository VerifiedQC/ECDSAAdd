"""Narrow generated umbrella imports to explicit declaration providers.

Only import lines change. Concrete proof declarations and statements remain
byte-for-byte identical. Explicit predecessor imports are retained to bound
parallel elaboration. Lean and the full generator checks validate the result.
"""
from pathlib import Path
import re

_PREFIX = 'ECDSAAdd.Arithmetic.Paper935.'
_CACHE = {}
_DECL = re.compile(r'^(?:def|theorem|lemma|abbrev|structure|inductive)\s+([\w.]+)',re.M)
_LOCAL = re.compile(r'^(?:private )?(?:def|theorem|lemma|abbrev|structure|inductive)\s+([\w.]+)',re.M)
_IMPORT = re.compile(r'^import '+re.escape(_PREFIX)+r'(\w+)\s*$',re.M)

def _index(directory):
    directory=Path(directory)
    if directory not in _CACHE:
        texts={p.stem:p.read_text() for p in directory.glob('*.lean')}
        umbrella={m for m,t in texts.items()
                  if not re.sub(r'^import .*$', '', t,flags=re.M).strip()}
        declarations={m:set(_DECL.findall(t)) for m,t in texts.items()}
        _CACHE[directory]=(umbrella,declarations)
    return _CACHE[directory]

def narrow_imports(path,text):
    umbrellas,declarations=_index(Path(path).parent)
    old=_IMPORT.findall(text)
    removed=set(old)&umbrellas
    if not removed:return text
    providers={}
    for module,names in declarations.items():
        for name in names:providers.setdefault(name,set()).add(module)
    body='\n'.join(line for line in text.splitlines() if not line.startswith('import '))
    words=set(re.findall(r'\b[\w.]+',body))|set(re.findall(r'\b\w+\b',body))
    local=set(_LOCAL.findall(body))
    required=set()
    for name in words-local:
        if name in providers and len(providers[name])==1:
            required.update(providers[name]-{Path(path).stem})
    if not required:return text
    replacements=sorted(required-(set(old)-removed))
    output=[];inserted=False
    for line in text.splitlines(keepends=True):
        match=_IMPORT.fullmatch(line.rstrip('\n'))
        if match and match.group(1) in removed:
            if not inserted:
                output.extend('import '+_PREFIX+m+'\n' for m in replacements)
                inserted=True
        else:output.append(line)
    result=''.join(output)
    assert ''.join(x for x in text.splitlines(keepends=True) if not x.startswith('import ')) == ''.join(x for x in result.splitlines(keepends=True) if not x.startswith('import '))
    return result
