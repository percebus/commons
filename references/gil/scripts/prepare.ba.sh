#!/bin/bash

set -e

scripts_path="$(dirname "$(readlink -f "$0")")"
echo "Script directory: ${scripts_path}"

set -x

# Upgrades top-level dependencies, like pipx
bash ${scripts_path}/gil/setup.ba.sh

bash ./repositories/commons/scripts/prepare.ba.sh

set +x
set +e
