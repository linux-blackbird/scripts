#!/bin/bash

bin_path=/usr/local/rbin/bin
prf_path=/usr/local/rbin/prf

source $bin_path/sys/index
source $bin_path/cvt/index
source $bin_path/git/index

source $prf_path/base

## update os
read -p "Hello $USER, Do you want update your system right now ? ( Y/n ) " BLACKBIRD_UPDATE
if [[ $BLACKBIRD_UPDATE == "Y" || $BLACKBIRD_UPDATE == "y" ]];then
    update
fi