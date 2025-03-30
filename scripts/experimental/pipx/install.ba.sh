#!/bin/bash

set -e

parent_folder="$(dirname "$(readlink -f "$0")")"
scripts_folder="$(dirname "${parent_folder}")"

set -x

bash ${scripts_folder}/batch_run.ba.sh 'pipx install' requirements.pipx.txt
pipx list

set +x
set +e
