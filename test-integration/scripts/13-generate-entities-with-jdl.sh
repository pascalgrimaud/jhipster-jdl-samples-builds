#!/bin/bash

set -e
source $(dirname $0)/00-init-env.sh

cd "$JHI_FOLDER_APP"
jhipster import-jdl .jhipster/*.jh --no-insight --force

#-------------------------------------------------------------------------------
# Check folder where the app is generated
#-------------------------------------------------------------------------------
ls -al "$JHI_FOLDER_APP"
git --no-pager log -n 10 --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
