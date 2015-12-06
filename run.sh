#!/bin/bash

if [ "$NPM_INSTALL" ] ; then
    npm install
fi

if [ "$RUN_SCRIPT" ] ; then
	echo 'running' 
	nodejs ${RUN_SCRIPT}
fi
