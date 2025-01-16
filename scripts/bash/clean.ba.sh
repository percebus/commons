#!/bin/bash

set -e
set -v

find ./_scripts -type f -exec sed -i 's/\r$//' {} \;

set +v
set +e
