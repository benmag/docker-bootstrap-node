#!/bin/bash

set -m
set -e

if [ "$NPM_INSTALL" ] ; then
    npm install
fi

if [ "$RUN_SCRIPT" ] ; then
	echo 'running' 
	node ${RUN_SCRIPT}
fi
