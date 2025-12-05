#!/bin/bash

set -e
set -v

echo "Uninstalling all pip packages (except pip itself)..."
pip list

# Backup pip-installed dependencies
pip list | tail -n +3 | awk '{print $1}'  | grep -vw pip | xargs -n 1 pip uninstall --yes
pip list

set +v
set +e
