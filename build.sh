#!/usr/bin/bash
#===============================================================================
# Project:   docker-builders
# Author:    Myhr, Andy
# Revised:   2018-02-01
# Created:   2017-12-28
# Copyright: 2017, awmyhr
# License:   Apache-2.0
#===============================================================================
PROJECT='awmyhr/builders'

for FILE in Dockerfile.* ; do
    TAG=$(echo "${FILE}" | cut -d'.' -f2)
    if [ "${*#*--no${TAG}}" != "${*}" ]; then
        printf 'Skipping %s.\n' "${PROJECT}:${TAG}"
    else
        printf 'Building %s...\n' "${PROJECT}:${TAG}"

        docker build -t "${PROJECT}:${TAG}" . -f "${FILE}"
    fi
done
