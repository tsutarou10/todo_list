#!/bin/zsh

set -eu

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${SCRIPT_DIR}/config.sh ${1-dev}

flutter clean && flutter pub get

${SCRIPT_DIR}/build_graphql.sh ${ENV}

flutter run \
  --dart-define=FLAVOR=${ENV} \
  --dart-define=APPSYNC_URL=${APPSYNC_URL[$ENV]} \
  --dart-define=APPSYNC_API_KEY=${APPSYNC_API_KEY[$ENV]} \
#flutter build ios --dart-define=FLAVOR=${ENV}
