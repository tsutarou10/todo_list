#!/bin/zsh

set -eu

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${SCRIPT_DIR}/config.sh ${1-dev}

flutter clean && flutter pub get

${SCRIPT_DIR}/build_graphql.sh ${ENV}

flutter run --dart-define=FLAVOR=${ENV}
flutter build ios --dart-define=FLAVOR=${ENV}
