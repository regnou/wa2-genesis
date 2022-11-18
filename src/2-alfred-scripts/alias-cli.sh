#!/bin/sh
# .
# . "$GENESIS/2-alfred-scripts/alias-cli.sh"
# .

# PUBLISH PACKAGES (REUSABLE COMPONENTS)
PATH_REU_MOD="$GENESIS/src/1-reusable-modules"
PATH_REU_MOD_1="$PATH_REU_MOD/components/cell"
PATH_REU_MOD_2="$PATH_REU_MOD/components/header"
alias al-deploy="cd $PATH_REU_MOD_1 && spack " \
    "&& cd $PATH_REU_MOD_2  && spack"

# CREATE
PATH_FEAT_GEN="$GENESIS/src/2-alfred-scripts/1-gen-site/main.js"
alias al--create-site="node $PATH_FEAT_GEN"
alias al-create=al--create-site

# VIEW
PATH_FEAT_VIEW="$GENESIS/src/0-output/1-sites-generated/web-agency"
alias al-view="cd $PATH_FEAT_VIEW && nrs"
