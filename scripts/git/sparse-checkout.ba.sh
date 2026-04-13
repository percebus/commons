#!/usr/bin/env bash

set -euo pipefail
set -x

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <organization> <repository_name> <sub_folder> <tag>" >&2
    exit 1
fi

organization=${1}
repository_name=${2}
base_folder="repositories/${repository_name}"
sub_folder=${3}

# TODO default to main
tag=${4}
folder="${base_folder}/${tag}"
rm -rf -- "${folder}"
mkdir -p -- "${folder}"
git clone --filter=blob:none --no-checkout "https://github.com/${organization}/${repository_name}.git" "${folder}"
cd "${folder}"

git sparse-checkout init --cone

# correct path from the repo root
git sparse-checkout set "${sub_folder}"

# checkout the correct branch
git checkout "${tag}"

set +x
set +e
