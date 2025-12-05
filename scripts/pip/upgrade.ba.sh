#!/bin/bash

set -e
set -x

pip_cli_opts="--verbose --upgrade"

# pip upgrades pip
pip install ${pip_cli_opts} pip

# pip upgrades pipx
pip install ${pip_cli_opts} --requirement requirements.upgrade.txt

set +x
set +e
