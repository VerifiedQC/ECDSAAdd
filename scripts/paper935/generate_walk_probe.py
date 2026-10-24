"""Generate a diagnostic execution using the library's exported journals.

#eval is not a kernel theorem and this probe stays outside the library.
"""
from pathlib import Path
import sys
if len(sys.argv) != 2:
    raise SystemExit('usage: python3.13 generate_walk_probe.py OUTPUT.lean')
lines = ['import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs',
         'import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs',
         'namespace ECDSAAdd.Arithmetic.Paper935']
for name in ('s2Observed','s6Observed'):
    lines.append(f'#eval (compileHmrSourceWalk {name}Counter 6 498 none {name}Arena {name}Bank {name}Record 0 {name}Logs).isSome')
lines.append('end ECDSAAdd.Arithmetic.Paper935')
Path(sys.argv[1]).write_text('\n'.join(lines)+'\n')
