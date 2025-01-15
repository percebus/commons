#!/bin/bash

set -e

filename="requirements.pipx.txt"
if [[ -z $(grep '[^[:space:]]' $filename) ]]; then
  echo "${filename} is empty, skipping..."
  exit 0
fi

set -v

cat ${filename} | sed 's/.*/"&"/' | xargs -n 1 pipx install
pipx list

set +v
set +e
