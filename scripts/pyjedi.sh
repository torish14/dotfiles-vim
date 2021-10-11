#!/bin/sh
# Usage: ./bin/zopepy pyjedi.sh
mkdir -p .vim
script_dir=$(dirname "$(readlink -f "$0")")
$1  $script_dir/pyjedi.py > .vim/coc-settings.json
