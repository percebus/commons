#!/bin/bash

# NOTE: Merges repositories/commons/scripts and scripts into _scripts

set -e
set -x

scripts_path='./_scripts'
echo "scripts directory: ${scripts_path}"

# clean up _scripts
rm -rf ${scripts_path}

# Copy commons scripts into _scripts
# FIX: https://unix.stackexchange.com/a/18718/103371
cp -R ./repositories/commons/scripts ${scripts_path}

# override _scripts with scripts in the other repo (if any)
# Or skip if the folder does NOT exist
cp -R ./scripts/* ${scripts_path} | true

# Make all scripts executable
find _scripts/ -name "*.sh" -exec chmod +x {} \;

ls -la ${scripts_path}
bash ${scripts_path}/bash/clean.ba.sh

set +x
set +e
