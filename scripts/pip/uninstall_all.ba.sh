#!/bin/bash

set -e
set -v

echo "Uninstalling all pip packages (except pip itself)..."
python -m pip list

# Backup pip-installed dependencies
python -m pip list | tail -n +3 | awk '{print $1}'  | grep -vw pip | xargs -n 1 python -m pip uninstall --yes
python -m pip list

set +v
set +e
