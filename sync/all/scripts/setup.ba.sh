#!/bin/bash

set -e
set -x

# copies commons/scripts to _scripts
bash repos/commons/scripts/prepare.ba.sh

scripts_path='./_scripts'
echo "scripts directory: ${scripts_path}"
bash ${scripts_path}/install.ba.sh

set +x
set +e
