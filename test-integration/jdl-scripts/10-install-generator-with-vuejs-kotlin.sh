#!/bin/bash

set -e
source $(dirname $0)/00-init-env.sh

#-------------------------------------------------------------------------------
# Install JHipster Dependencies and Server-side library
#-------------------------------------------------------------------------------
npm install -g generator-jhipster@v6.6.0
npm install -g generator-jhipster-vuejs@v1.4.0
npm install -g generator-jhipster-kotlin@v1.4.0
