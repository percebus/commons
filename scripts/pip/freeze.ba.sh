#!/bin/bash

set -e
set -v

# Backup pip-installed dependencies
python -m pip freeze --verbose > requirements.frozen.txt

set +v
set +e
