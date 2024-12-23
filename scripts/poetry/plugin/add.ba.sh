#!/bin/bash

set -e
set -v

cat requirements.poetry-plugin.txt | sed 's/.*/"&"/' | xargs -n 1 poetry self add
poetry self show plugins

set +v
set +e
