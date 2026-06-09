#!/bin/bash

set -e
set -x

# TODO take param for folder and default to either dist or tmp

mkdir -p dist

for file in assets/mmd/*.mmd; do
  base=$(basename "$file" .mmd)
  mmdc -i "$file" -o "dist/${base}.png"
  mmdc -i "$file" -o "dist/${base}.svg"
done

set +x
set +e
