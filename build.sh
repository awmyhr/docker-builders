#!/usr/bin/bash
#===============================================================================
# Project:   docker-builders
# Author:    Myhr, Andy
# Revised:   2017-12-28
# Created:   2017-12-28
# Copyright: 2017, awmyhr
# License:   Apache-2.0
#===============================================================================
PROJECT='builders'
USER='awmyhr'

BASE_NAME="${USER}/${PROJECT}"

#-------------------------------------------------------------------------------
#-- Ubuntu Build Container
#-------------------------------------------------------------------------------
printf 'Building %s...\n' "${BASE_NAME}:ubuntu"

docker build -t "${BASE_NAME}:ubuntu" . -f Dockerfile.ubuntu

#-------------------------------------------------------------------------------
#-- Alpine Build Container
#-------------------------------------------------------------------------------
# printf 'Building %s...\n' "${BASE_NAME}:alpine"

# docker build -t "${BASE_NAME}:alpine" . -f Dockerfile.alpine

