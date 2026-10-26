"""Run the complete registered Lean axiom audit in bounded command batches.

The input remains the authoritative import/#print script in verify.sh. Every
batch uses the same imports, and stdout concatenates the original ordered
#print results for verify.sh's unchanged exact registry/whitelist comparison.
At most four Lean processes run concurrently; ECDSA_AUDIT_WORKERS selects
one through four (default four). Contiguous small batches start from the tail
to spread expensive generated declarations across workers. Output stays ordered.
No Lean option or process stack limit is changed.
"""
from concurrent.futures import ThreadPoolExecutor
import os
import subprocess
import sys
import time


def main():
    lines = sys.stdin.read().splitlines()
    imports = []
    commands = []
    for line in lines:
        if not line.strip():
            continue
        if line.startswith('import ') and not commands:
            imports.append(line)
        elif line.startswith('#print axioms '):
            commands.append(line)
        else:
            raise ValueError(f'Unexpected public audit input: {line!r}')
    if not imports or not commands:
        raise ValueError('Public audit needs imports and registered commands')
    started = time.monotonic()
    batch_size = 250
    workers = int(os.environ.get('ECDSA_AUDIT_WORKERS', '4'))
    if workers not in (1, 2, 3, 4):
        raise ValueError('ECDSA_AUDIT_WORKERS must be 1, 2, 3, or 4')

    def run_batch(offset):
        batch_started = time.monotonic()
        source = '\n'.join(imports + commands[offset:offset + batch_size]) + '\n'
        result = subprocess.run(['lake', 'env', 'lean', '/dev/stdin'],
                                input=source, text=True, capture_output=True)
        return offset, result, time.monotonic() - batch_started

    # Start the historically expensive tail first. Each batch remains contiguous,
    # so restoring registry order needs no parser or modification of Lean stdout.
    offsets = list(range(0, len(commands), batch_size))
    with ThreadPoolExecutor(max_workers=workers) as executor:
        pending = {offset: executor.submit(run_batch, offset)
                   for offset in reversed(offsets)}
        for offset in offsets:
            _, result, elapsed = pending[offset].result()
            sys.stdout.write(result.stdout)
            sys.stderr.write(result.stderr)
            if result.returncode:
                return result.returncode if result.returncode > 0 else 128 - result.returncode
            print(f'Public axiom audit batch: {min(offset + batch_size, len(commands))}/{len(commands)} entries checked in {elapsed:.3f} seconds.',
                  file=sys.stderr, flush=True)
    print(f'Public axiom audit: {len(commands)} entries, '
          f'{time.monotonic() - started:.3f} seconds.', file=sys.stderr)
    return 0


if __name__ == '__main__':
    sys.exit(main())
