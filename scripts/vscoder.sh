#!/bin/sh
# Usage: vscoder.sh ./bin/zopepy
mkdir -p .vscode
script_dir=$(dirname "$(readlink -f "$0")")
$1  $script_dir/vscoder.py > .vscode/settings.json
mkdir -p .vim
cd .vim
ln -s ../.vscode/settings.json coc-settings.json
cd ..
