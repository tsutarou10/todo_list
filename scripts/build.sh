#!/bin/zsh

set -eu

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${SCRIPT_DIR}/../config.sh ${1-dev}

flutter clean && flutter pub get

${SCRIPT_DIR}/build_graphql.sh ${ENV}

readonly APPSYNC_URL=$(getSSMValue ${SSM_APPSYNC_URL})
readonly APPSYNC_API_KEY=$(getSSMValue ${SSM_APPSYNC_API_KEY})

flutter run \
  --dart-define=FLAVOR=${ENV} \
  --dart-define=APPSYNC_URL=${APPSYNC_URL} \
  --dart-define=APPSYNC_API_KEY=${APPSYNC_API_KEY} \
#flutter build ios --dart-define=FLAVOR=${ENV}
