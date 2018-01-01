#!/usr/bin/bash
#===============================================================================
# Project:   docker-builders
# Author:    Myhr, Andy
# Revised:   2018-01-01
# Created:   2017-12-28
# Copyright: 2017, awmyhr
# License:   Apache-2.0
#===============================================================================
PROJECT='awmyhr/builders'

#-------------------------------------------------------------------------------
#-- Ubuntu Build Container
#-------------------------------------------------------------------------------
if [ "${*#*--noubuntu}" != "${*}" ]; then
    printf 'Skipping Ubuntu.\n'
else
    printf 'Building %s...\n' "${PROJECT}:ubuntu"

    docker build -t "${PROJECT}:ubuntu" . -f Dockerfile.ubuntu
fi

#-------------------------------------------------------------------------------
#-- Alpine Build Container
#-------------------------------------------------------------------------------
if [ "${*#*--noalpine}" != "${*}" ]; then
    printf 'Skipping Alpine.\n'
else
    printf 'Building %s...\n' "${PROJECT}:alpine"

    docker build -t "${PROJECT}:alpine" . -f Dockerfile.alpine
fi
