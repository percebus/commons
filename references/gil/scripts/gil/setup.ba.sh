#!/bin/bash

set -e
set -x

pip install --upgrade pip
pip install pipx
pipx install gil
pipx run -- gil clone


set +x
set +e
