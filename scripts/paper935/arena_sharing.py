"""Share identical observed arena definitions without changing their values.

Only literal, already-generated Arena expressions are shared. First occurrences
remain concrete; later names are direct aliases, never chains of aliases.
"""
import re

def share_arenas(text):
    seen={}
    aliases={}
    pattern=r'def (\w+) : Arena :=\s*(⟨arenaWires\.filter[^\n]+⟩)'
    def replace(match):
        name,body=match.groups()
        if body in seen:
            aliases[name]=seen[body]
            return f'def {name} : Arena := {seen[body]}'
        seen[body]=name
        return match.group()
    text=re.sub(pattern,replace,text)
    return expand_arena_aliases(text,aliases)

def expand_arena_aliases(text,aliases):
    lines=[]
    for line in text.splitlines():
        if ('simp' in line or 'norm_num' in line) and '[' in line:
            before,rest=line.split('[',1)
            args,after=rest.split(']',1)
            items=args.split(',')
            expanded=[]
            for item in items:
                expanded.append(item)
                if item.strip() in aliases:
                    target=aliases[item.strip()]
                    if target not in [x.strip() for x in items] and target not in expanded:
                        expanded.append(target)
            line=before+'['+','.join(expanded)+']'+after
        elif 'unfold ' in line:
            for name,target in aliases.items():
                if re.search(r'\b'+name+r'\b',line):
                    line+=' '+target
        lines.append(line)
    return '\n'.join(lines)+'\n'


def read_arena_aliases(folder):
    """Read the checked predecessor modules, following their chunk imports."""
    bases=('HmrSourceEntryParts','HmrSourceHeadroomParts','HmrSourceExitParts')
    seen=set();aliases={}
    def visit(name):
        if name in seen:return
        seen.add(name)
        text=(folder/(name+'.lean')).read_text()
        for dep in re.findall(r'^import ECDSAAdd.Arithmetic.Paper935.(\w+)',text,re.M):
            if any(dep.startswith(base+'Chunk') for base in bases):visit(dep)
        aliases.update(re.findall(r'^def (\w+) : Arena := (\w+)\s*$',text,re.M))
    for base in bases:visit(base)
    return aliases
