#!/bin/bash

set -e
parent_folder="$(dirname "$(readlink -f "$0")")"

set -x

bash "${parent_folder}/tool/install.ba.sh"
uv sync --locked --all-extras
uv pip install -e .
uv pip freeze

set +x
set +e
