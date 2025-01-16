# commons/scripts

This directory contains scripts that are used to setup any and all projects.

## Setup

### w/ bower

#### .bowerrc

```json
{
  "directory" : "repos"
}
```

#### .*ignore files

```gitignore
# commons/scripts
repos/
_scripts/
```

#### package.json

```json
"scripts": {
    "npm:install:global:ci": "npm install --force --location=global bower ...",
    "npm:install:global:all": "npm install --location=global yarn bower ...",

    "setup": "npm run npm:install:global:all",
    "setup:ci": "npm run npm:install:global:ci",
    "setup:release": "npm run pip:install:release",

    "bower:update": "bower update --allow-root",
    "prebower:install": "npm run bower:update",
    "bower:install": "bower install --allow-root",
    "scripts:prepare": "bash repos/commons/scripts/prepare.ba.sh",

    "postinstall": "npm run bower:install && npm run scripts:prepare",
}
```

Then

1. `$> npm run setup --if-present`
2. `$> npm install`

## scripts/prepare.ba.sh

1. Deletes `_scripts/`
1. Copies `{component}/common/scripts/` as `_scripts/`.
1. Copies `scripts/**` into `_scripts/` (overriding each and all files if applicable).
