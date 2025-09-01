#!/bin/bash

set -e
set -v

pip freeze

# Backup pip-installed dependencies
pip freeze --verbose > requirements.frozen.txt

set +v
set +e
