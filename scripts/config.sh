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
