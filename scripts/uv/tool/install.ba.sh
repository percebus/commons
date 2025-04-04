#!/bin/bash

set -e

filename="requirements.uv.tool.txt"
if [[ -z $(grep '[^[:space:]]' $filename) ]]; then
  echo "${filename} is empty, skipping..."
  exit 0
fi

set -v

cat ${filename} | sed 's/.*/"&"/' | xargs -n 1 uv tool install
uv tool list

set +v
set +e
