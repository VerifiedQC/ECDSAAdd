"""Time a verification phase, preserving its input, output and exit status."""
import json
import os
from pathlib import Path
import subprocess
import sys
import time

phase = sys.argv[1]
started = time.monotonic()
result = subprocess.run(sys.argv[2:])
elapsed = time.monotonic() - started
record = {'phase': phase, 'elapsed_seconds': elapsed, 'exit_code': result.returncode}
if os.environ.get('ECDSA_VERIFY_PHASE_LOG'):
    with Path(os.environ['ECDSA_VERIFY_PHASE_LOG']).open('a') as output:
        output.write(json.dumps(record) + '\n')
print(f'Verification phase {phase}: {elapsed:.3f} seconds, exit {result.returncode}.',
      file=sys.stderr, flush=True)
sys.exit(result.returncode if result.returncode >= 0 else 128 - result.returncode)
