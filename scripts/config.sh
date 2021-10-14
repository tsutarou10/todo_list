#!/bin/zsh

set -eu

case "${1}" in
  "dev" );;
  "stg" );;
  "prd" );;
  * ) echo "Usage ${0} ('dev', 'stg' or 'prd')"; return 1;;
esac

readonly ENV=${1}

declare -A APPSYNC_APP_ID=(["dev"]="smqj3iav7bdtpngd2iglug6xuu" ["stg"]="" ["prd"]="")
declare -A APPSYNC_API_KEY=(["dev"]="da2-p4ehmits3vh2dbw24mdvp7eal4" ["stg"]="" ["prd"]="")
declare -A APPSYNC_URL=(["dev"]="https://jysbajoanvatjmvixye73inwse.appsync-api.ap-northeast-1.amazonaws.com/graphql" ["stg"]="" ["prd"]="")
