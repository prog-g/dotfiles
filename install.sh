#!/bin/sh -e

cd "$(dirname "$0")"
files=$(find . -type f ! -path '*/.git/*' ! -name 'install.sh' ! -name 'README.md' ! -name 'LICENSE')
IFS='
'
for file in $files; do
  target=~/${file#./}
  mkdir -p "${target%/*}"
  ln -is "${PWD}/${file#./}" "$target"
done
