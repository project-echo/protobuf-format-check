#!/bin/sh
set -e -x -o pipefail

echo 'Files to be checked'
git ls-files '*.proto'

clang-format --dry-run -Werror `git ls-files '*.proto'`
