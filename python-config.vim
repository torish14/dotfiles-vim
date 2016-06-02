if has('python')
py << EOF

# Load pythonpaths script to load extra python paths into vim's python interpreter instance.
# For use with jedi-vim to find all modules
# The ``pythonpaths`` script can be created with buildout
# See: https://github.com/davidhalter/jedi-vim/issues/31 
#      http://stackoverflow.com/questions/67631/how-to-import-a-module-given-the-full-path

import os
import sys
import vim

path_instance = os.path.join(os.getcwd(), 'bin', 'pythonpaths')
if os.path.isfile(path_instance):

    modname = "extrapythonpaths"

    mod = None
    if sys.version_info >= (3,5):
        import importlib.util
        spec = importlib.util.spec_from_file_location(modname, path_instance)
        mod = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(mod)
    elif sys.version_info >= (3,3):
        from importlib.machinery import SourceFileLoader
        mod = SourceFileLoader(modname, path_instance).load_module()
    else:
        import imp
        mod = imp.load_source(modname, path_instance)

EOF
endif
