#!/bin/bash

CHECK_HOME=`dirname $(realpath "$0")`/system

$CHECK_HOME/check_kernel_version.sh
if [ $? != 0 ]; then
    exit 1
fi

$CHECK_HOME/check_bpf.sh
if [ $? != 0 ]; then
    exit 1
fi

$CHECK_HOME/check_lsm.sh
if [ $? != 0 ]; then
    exit 1
fi

exit 0
