
set -e
set -v

# pip upgrades pip
pip install --verbose --upgrade pip

# pip upgrades pipx
pip install --verbose --upgrade --requirement requirements.upgrade.txt

set +v
set +e
