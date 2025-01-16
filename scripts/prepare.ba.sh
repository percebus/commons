#!/bin/bash

# NOTE: Merges repos/commons/scripts and scripts into _scripts

set -e
set -x

scripts_path='./_scripts'
echo "scripts directory: ${scripts_path}"

# clean up _scripts
rm -rf ${scripts_path}

# Copy commons scripts into _scripts
cp ./repos/commons/scripts ${scripts_path} -r

# override _scripts with scripts in the other repo (if any)
# Or skip if the folder does NOT exist
# FIX: https://unix.stackexchange.com/a/18718/103371
cp ./scripts/* ${scripts_path} -R | true

# Make all scripts executable
find _scripts/ -name "*.sh" -exec chmod +x {} \;

ls -la ${scripts_path}
bash ${scripts_path}/bash/clean.ba.sh
bash ${scripts_path}/setup.ba.sh

set +x
set +e
