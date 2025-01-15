#!/bin/bash

set -e
set -v

find ./ -type f -exec sed -i 's/\r$//' {} \;

set +v
set +e
