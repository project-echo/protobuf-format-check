#!/bin/sh
set -e -x -o pipefail

git config --global --add safe.directory '*'

echo 'Files to be checked'
git ls-files '*.proto'

clang-format --dry-run -Werror `git ls-files '*.proto'`
