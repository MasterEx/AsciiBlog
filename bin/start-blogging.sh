#!/usr/bin/env bash

# Created by Periklis Ntanasis - Master_ex
# https://github.com/MasterEx

#http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in/179231#179231
SCRIPT_PATH="${BASH_SOURCE[0]}";
if ([ -h "${SCRIPT_PATH}" ]) then
  while([ -h "${SCRIPT_PATH}" ]) do SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
fi
pushd . > /dev/null
cd `dirname ${SCRIPT_PATH}` > /dev/null
SCRIPT_PATH=`pwd`;
popd  > /dev/null

PATH=$SCRIPT_PATH:$PATH
export PATH
