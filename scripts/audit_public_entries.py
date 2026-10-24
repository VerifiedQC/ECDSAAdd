"""Run the complete registered Lean axiom audit in bounded command batches.

The input remains the authoritative import/#print script in verify.sh. Every
batch uses the same imports, and stdout concatenates the original ordered
#print results for verify.sh's unchanged exact registry/whitelist comparison.
No Lean option or process stack limit is changed.
"""
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
    batch_size = 2000
    for offset in range(0, len(commands), batch_size):
        batch_started = time.monotonic()
        source = '\n'.join(imports + commands[offset:offset + batch_size]) + '\n'
        result = subprocess.run(['lake', 'env', 'lean', '/dev/stdin'],
                                input=source, text=True)
        if result.returncode:
            return result.returncode if result.returncode > 0 else 128 - result.returncode
        print(f'Public axiom audit batch: {min(offset + batch_size, len(commands))}/{len(commands)} entries checked in {time.monotonic() - batch_started:.3f} seconds.',
              file=sys.stderr, flush=True)
    print(f'Public axiom audit: {len(commands)} entries, '
          f'{time.monotonic() - started:.3f} seconds.', file=sys.stderr)
    return 0


if __name__ == '__main__':
    sys.exit(main())
