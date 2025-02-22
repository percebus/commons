# commons/scripts

This directory contains scripts that are used to setup any and all projects.

## Setup

All these setups assume that the `commons` repository is located in `repositories/commons`.

### scripts/prepare.ba.sh

1. Deletes `_scripts/`
1. Copies `{component}/common/scripts/` as `_scripts/`.
1. Copies `scripts/**` into `_scripts/` (overriding each and all files if applicable).

### w/ bower

#### .bowerrc

```json
{
  "directory": "repos"
}
```

#### .\*ignore files

```gitignore
# commons/scripts
repositories/
_scripts/
```

#### package.json

```json
"scripts": {
    "npm:install:global:ci": "npm install --force --location=global bower ...",
    "npm:install:global:all": "npm install --location=global yarn bower ...",

    "setup": "npm run npm:install:global:all",
    "setup:ci": "npm run npm:install:global:ci",

    "scripts:prepare": "bash repositories/commons/scripts/prepare.ba.sh",
    "bower:update": "bower update --allow-root",
    "prebower:install": "npm run bower:update",
    "bower:install": "bower install --allow-root",
    "postbower:install": "npm run scripts:prepare",

    "postinstall": "npm run bower:install",
}
```

#### npm install

Then

1. `$> npm run setup --if-present`
2. `$> npm install`

### w/ gil

For reference [see `references/gil`](../references/gil/)

#### via pip

```bash
$> pip install pip --upgrade
$> pip install gil
```

[See `requirements.upgrade.txt`](../references/gil/requirements.upgrade.txt)

#### .gitlinks

```
commons repositories/commons git@github.com:percebus/commons.git main
```

[See a `.gitlinks` example](../references/gil/commons.gitlinks)

#### gil clone

```bash
$> gil clone
```

#### scripts/prepare.ba.sh

```bash
$> bash repositories/commons/scripts/prepare.ba.sh
```
