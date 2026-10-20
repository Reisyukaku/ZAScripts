"""Run the project's Lua ABI finalizer through its compatibility entry point."""
import importlib.util
from pathlib import Path
import sys

root = Path(__file__).resolve().parents[6]
script = root / 'tools/gfl_build/build_post_process.py'
spec = importlib.util.spec_from_file_location('gfl_post_process', script)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
if not module.lua_post_process(sys.argv[1], sys.argv[1]):
    raise RuntimeError('GFL Lua postprocessing failed')
