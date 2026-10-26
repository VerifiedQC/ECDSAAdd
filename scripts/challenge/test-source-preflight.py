#!/usr/bin/env python3
import importlib.util
import os
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch
HERE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location('source_root', HERE.parent / 'paper935/source_root.py')
resolver = importlib.util.module_from_spec(spec)
spec.loader.exec_module(resolver)

class Preflight(unittest.TestCase):
    def test_missing_environment(self):
        with patch.dict(os.environ, {}, clear=True):
            with self.assertRaisesRegex(ValueError, 'must explicitly'):
                resolver.pinned_source()

    def test_missing_directory(self):
        with tempfile.TemporaryDirectory() as root:
            with patch.dict(os.environ, ECDSA_PAPER_SOURCE=str(Path(root)/'missing')):
                with self.assertRaisesRegex(ValueError, 'not a directory'):
                    resolver.pinned_source()

    def test_wrong_revision(self):
        with tempfile.TemporaryDirectory() as root:
            subprocess.run(['git','init','-q',root],check=True)
            subprocess.run(['git','-C',root,'-c','user.name=Test','-c','user.email=test@example.test',
                            'commit','-q','--allow-empty','-m','different source'],check=True)
            with patch.dict(os.environ, ECDSA_PAPER_SOURCE=root):
                with self.assertRaisesRegex(ValueError, 'HEAD must be'):
                    resolver.pinned_source()

    def test_all_entries_check_source_before_build(self):
        for relative in ('scripts/benchmark.sh','scripts/challenge/validate.sh','scripts/challenge/verify.sh'):
            env = os.environ.copy()
            env.pop('ECDSA_PAPER_SOURCE', None)
            env['ECDSA_SOURCE_PYTHON'] = os.sys.executable
            result = subprocess.run(['bash',str(HERE.parents[1]/relative)],env=env,
                                    capture_output=True,text=True)
            self.assertNotEqual(result.returncode,0)
            self.assertIn('ECDSA_PAPER_SOURCE must explicitly',result.stderr)

if __name__ == '__main__':
    unittest.main()
