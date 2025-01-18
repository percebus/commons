
#!/bin/bash

set -e

environment=${1}
echo "environment: ${environment}"

set -x

if [ "${environment}" == "ci" ]; then
    poetry config virtualenvs.create false
fi

poetry install

set +x
set +e
