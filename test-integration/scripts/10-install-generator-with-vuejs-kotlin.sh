#!/bin/bash

set -e
source $(dirname $0)/00-init-env.sh

#-------------------------------------------------------------------------------
# Install JHipster Dependencies and Server-side library
#-------------------------------------------------------------------------------
npm install -g generator-jhipster@6.6.0
npm install -g generator-jhipster-vuejs@1.4.0
npm install -g generator-jhipster-kotlin@1.4.0
