#!/bin/bash

# FIXME make it work

set -e
set -x

cmd=${1}
filename=${2}

set +x

errors=0
if [[ -z ${cmd} ]]; then
    echo "cmd is empty, skipping..."
    errors=errors+1
fi

if [[ -z ${filename} ]]; then
    echo "filename is empty, skipping..."
    errors=errors+1
fi

if [[ ${errors} -ne 0 ]]; then
    echo "Errors found, exiting..."
    exit 1
fi

echo "Batch processing filename:'${filename}'"
if [[ -z $(grep '[^[:space:]]' $filename) ]]; then
  echo "${filename} is empty, skipping..."
  exit 0
fi

echo $(cat ${filename})
cat ${filename} | sed 's/.*/"&"/' | xargs -n 1 "${cmd}"

set +e
