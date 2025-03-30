#!/bin/bash

set -e
parent_folder="$(dirname "$(readlink -f "$0")")"

set -x

uv sync --all-extras --locked
bash "${parent_folder}/tool/install.ba.sh"
uv pip install -e .
uv pip freeze

set +x
set +e
