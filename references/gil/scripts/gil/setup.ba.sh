#!/bin/bash

set -e
set -x

python -m pip install --upgrade pip
python -m pip install pipx
python -m pipx install gil
pipx run -- gil clone


set +x
set +e
