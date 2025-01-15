#!/bin/bash

set -e

target_config=$1
echo "target_config:'${target_config}'"

parent_folder="$(dirname "$(readlink -f "$0")")"

set -x

bash ${parent_folder}/upgrade.ba.sh
bash ${parent_folder}/install.ba.sh ${target_config}

set +x
set +e
