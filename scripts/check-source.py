#!/usr/bin/env python3
"""Check Lean-resolved source closure and layer edges; this is not a test suite."""
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
ENTRY = ROOT / 'ECDSAAdd.lean'
LAYERS = {'Math': {'Math'}, 'Framework': {'Framework'},
          'Arithmetic': {'Math', 'Framework', 'Arithmetic'},
          'Circuit': {'Math', 'Framework', 'Arithmetic', 'Circuit'},
          'PointAdd': {'Math', 'Framework', 'Arithmetic', 'Circuit', 'PointAdd'},
          'Root': {'Math', 'Framework', 'Arithmetic', 'Circuit', 'PointAdd'}}

def layer(p):
    if p == ENTRY:
        return 'Root'
    parts = p.relative_to(ROOT).parts
    if len(parts) < 3 or parts[0] != 'ECDSAAdd' or parts[1] not in LAYERS:
        raise ValueError(f'Unapproved source path: {p}')
    return parts[1]

def deps(p):
    result = subprocess.run(['lake', 'env', 'lean', '--src-deps', str(p.relative_to(ROOT))],
                            cwd=ROOT, check=True, capture_output=True, text=True)
    return {Path(x).resolve() for x in result.stdout.splitlines() if x.strip()}

def main():
    files = [ENTRY, *sorted((ROOT / 'ECDSAAdd').rglob('*.lean'))]
    for p in files:
        if p.is_symlink() or p.resolve() != p:
            raise ValueError(f'Unexpected source symlink: {p}')
        layer(p)
    tracked = subprocess.check_output(['git', 'ls-files', '-z', '--', '*.lean'], cwd=ROOT)
    tracked = {ROOT / x.decode() for x in tracked.split(b'\0') if x}
    expected = set(files) | {ROOT / 'lakefile.lean'}
    if tracked != expected:
        raise ValueError(f'Untracked or out-of-tree Lean sources: {tracked ^ expected}')
    toolchain = Path(subprocess.check_output(['lean', '--print-prefix'], cwd=ROOT, text=True).strip()).resolve()
    packages = (ROOT / '.lake/packages').resolve()
    with ThreadPoolExecutor(max_workers=4) as pool:
        graph = dict(zip(files, pool.map(deps, files)))
    for src, edges in graph.items():
        for dest in edges:
            if dest in graph:
                if layer(dest) not in LAYERS[layer(src)]:
                    raise ValueError(f'Forbidden layer edge: {src} -> {dest}')
            elif not dest.is_relative_to(packages) and not dest.is_relative_to(toolchain):
                raise ValueError(f'External source outside pinned dependencies: {dest}')
    seen, todo = set(), [ENTRY]
    while todo:
        src = todo.pop()
        if src in seen:
            continue
        seen.add(src)
        todo.extend(graph[src] & graph.keys())
    if seen != set(files):
        raise ValueError(f'Sources not reachable from root: {set(files) - seen}')
    print(f'Source closure and layer policy: {len(files)}/{len(files)} modules')

if __name__ == '__main__':
    try:
        main()
    except (ValueError, subprocess.CalledProcessError) as exc:
        print(exc, file=sys.stderr)
        sys.exit(1)
