#!/bin/bash

set -e
set -x

pip_cli_opts="--verbose --upgrade"

# pip upgrades pip
python -m pip install ${pip_cli_opts} pip

# pip upgrades pipx
python -m pip install ${pip_cli_opts} --requirement requirements.upgrade.txt

set +x
set +e
