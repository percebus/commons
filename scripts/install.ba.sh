#!/bin/bash

parent_dir="$(dirname "$(readlink -f "$0")")"
echo "Parent directory: ${parent_dir}"

set -e
set -v

# TODO add install scripts here

set +v
set +e
