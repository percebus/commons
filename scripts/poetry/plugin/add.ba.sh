#!/bin/bash

set -e

filename="requirements.poetry-plugin.txt"
if [[ -z $(grep '[^[:space:]]' $filename) ]]; then
  echo "${filename} is empty, skipping..."
  exit 0
fi

set -v

cat ${filename} | sed 's/.*/"&"/' | xargs -n 1 poetry self add
poetry self show plugins

set +v
set +e
