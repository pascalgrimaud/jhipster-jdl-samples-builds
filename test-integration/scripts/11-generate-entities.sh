#!/bin/bash

set -e
if [[ -a $(dirname $0)/00-init-env.sh ]]; then
    source $(dirname $0)/00-init-env.sh
else
    echo "*** 00-init-env.sh not found"
fi

#-------------------------------------------------------------------------------
# Functions
#-------------------------------------------------------------------------------
moveEntity() {
    local entity="$1"
    cp "$JHI_SAMPLES"/.jhipster/"$entity".jh "$JHI_FOLDER_APP"/.jhipster/
}

prepareFolder() {
    rm -rf "$JHI_FOLDER_APP"
    mkdir -p "$JHI_FOLDER_APP"/.jhipster/
}
#-------------------------------------------------------------------------------
# Copy entities json
#-------------------------------------------------------------------------------

if [[ $JHI_REPO != "" ]]; then
    prepareFolder
fi

if [[ "$JHI_ENTITY" == "21points" || "$JHI_ENTITY" == "blog" ]]; then
    moveEntity $JHI_ENTITY
fi

#-------------------------------------------------------------------------------
# Copy entities json
#-------------------------------------------------------------------------------
echo "*** Entities:"
ls -al "$JHI_FOLDER_APP"/.jhipster/
