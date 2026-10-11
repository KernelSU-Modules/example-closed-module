#!/usr/bin/env bash
# Builds the module ZIP from ./module (your real build goes here: compile, strip, copy binaries, ...).
# Usage: ./build.sh <out.zip>
set -euo pipefail
out=${1:?usage: build.sh <out.zip>}
mkdir -p "$(dirname "$out")"
out="$(cd "$(dirname "$out")" && pwd)/$(basename "$out")"
rm -f "$out"
# Deterministic ZIP: fixed timestamps and sorted entries.
( cd module && find . -type f -print0 | sort -z | xargs -0 touch -d '2020-01-01T00:00:00Z' &&
  find . -type f | sed 's|^\./||' | LC_ALL=C sort | zip -X -q "$out" -@ )
echo "built $out"
