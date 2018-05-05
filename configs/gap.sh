#!/bin/bash

scriptDir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

export PULP_CURRENT_CONFIG=gap@user_config_file=${scriptDir}/json/gap.json

unset PULP_CURRENT_CONFIG_ARGS

if [ -e ${scriptDir}/../init.sh ]; then
    source ${scriptDir}/../init.sh
fi
