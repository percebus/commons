#!/bin/bash

set -e

target_config=$1
echo "target_config:'${target_config}'"

PIP_CLI_OPTS=""
requirements="requirements.txt"
if [[ "$target_config" == "release" ]]; then
    echo "Installing ONLY prd requirements..."
    requirements="requirements.release.txt"
else
    PIP_CLI_OPTS="-e"
    echo "Installing everything..."
fi

set -x

# all pip dependencies (generated w/ poetry)
pip install --verbose --requirement ${requirements}

# The project itself (to use src)
pip install --verbose ${PIP_CLI_OPTS} .

set +x
set +e
