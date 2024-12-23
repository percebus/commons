#!/bin/bash

set -e
remote=$1

errors=0
if [ -z "$remote" ]; then
  echo "Error: Remote name is required."
  errors=1
fi

if [ $errors -gt 0 ]; then
  echo "Errors found, exiting..."
  exit 1
fi

set -v

git remote set-url origin ${remote}

set +v
set +e
