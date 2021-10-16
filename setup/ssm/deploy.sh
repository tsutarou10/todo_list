#!/usr/bin/env bash

set -e
set -u

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${SCRIPT_DIR}/../../config.sh ${1-dev}

read -sp "APPSYNC_URL: " url
echo ""
aws ssm put-parameter \
  --region ${REGION} \
  --overwrite \
  --name ${SSM_APPSYNC_URL} \
  --type "SecureString" \
  --value ${url}

read -sp "APPSYNC_API_KEY: " api_key
echo ""
aws ssm put-parameter \
  --region ${REGION} \
  --overwrite \
  --name ${SSM_APPSYNC_API_KEY} \
  --type "SecureString" \
  --value ${api_key}

read -sp "APPSYNC_APP_ID: " app_id
echo ""
aws ssm put-parameter \
  --region ${REGION} \
  --overwrite \
  --name ${SSM_APPSYNC_APP_ID} \
  --type "SecureString" \
  --value ${app_id}
