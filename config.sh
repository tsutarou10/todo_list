#!/bin/zsh

set -eu

case "${1}" in
  "dev" );;
  "stg" );;
  "prd" );;
  * ) echo "Usage ${0} ('dev', 'stg' or 'prd')"; return 1;;
esac

readonly ENV=${1}

readonly REGION="ap-northeast-1"
readonly SERVICE_NAME="todo_list_app"

readonly SSM_APPSYNC_URL="/${SERVICE_NAME}/${ENV}/APPSYNC_URL"
readonly SSM_APPSYNC_API_KEY="/${SERVICE_NAME}/${ENV}/APPSYNC_API_KEY"
readonly SSM_APPSYNC_APP_ID="/${SERVICE_NAME}/${ENV}/APPSYNC_APP_ID"

function getSSMValue() {
  local value=$(aws --region ${REGION} ssm get-parameter --name ${1} --with-decryption --output text --query "Parameter.Value" 2>&1)
  echo ${value}
}
