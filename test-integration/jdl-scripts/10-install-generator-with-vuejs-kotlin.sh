#!/bin/bash

set -e
source $(dirname $0)/00-init-env.sh

#-------------------------------------------------------------------------------
# Install JHipster Dependencies and Server-side library
#-------------------------------------------------------------------------------
npm install -g generator-jhipster@v6.6.0
npm install -g generator-jhipster-vuejs@v1.4.0
npm install -g generator-jhipster-kotlin@v1.4.0

#-------------------------------------------------------------------------------
# Override config
#-------------------------------------------------------------------------------

# replace 00-init-env.sh
cp "$JHI_CLONED"/test-integration/jdl-scripts/00-init-env.sh "$JHI_HOME"/test-integration/scripts/

# copy all samples
cp -R "$JHI_CLONED"/test-integration/samples/* "$JHI_HOME"/test-integration/samples/
mkdir "$JHI_HOME"/test-integration/jdl-samples
cp -R "$JHI_CLONED"/test-integration/jdl-samples/* "$JHI_HOME"/test-integration/jdl-samples/
