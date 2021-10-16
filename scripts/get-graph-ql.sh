#!/bin/zsh

set -eu

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${SCRIPT_DIR}/../config.sh ${1-dev}

readonly APPSYNC_APP_ID=$(getSSMValue ${SSM_APPSYNC_APP_ID})
aws appsync get-introspection-schema --api-id ${APPSYNC_APP_ID} --format SDL ${SCRIPT_DIR}/../lib/graphql/__generated__/schema.graphql
