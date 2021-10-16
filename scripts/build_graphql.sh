#!/bin/zsh

set -eu

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${SCRIPT_DIR}/../config.sh ${1-dev}

setopt +o nomatch
cd ${SCRIPT_DIR}/../lib/graphql && ls ./ | grep -v -E 'todo.query.graphql' | xargs rm -rf
mkdir ${SCRIPT_DIR}/../lib/graphql/__generated__
cp ${SCRIPT_DIR}/../lib/graphql/todo.query.graphql ${SCRIPT_DIR}/../lib/graphql/__generated__/
rm -rf ${SCRIPT_DIR}/../lib/graphql/schema.graphql
mv ${SCRIPT_DIR}/../lib/graphql/todo.query.graphql ${SCRIPT_DIR}/../lib/graphql/__generated__/todo.query.graphql

${SCRIPT_DIR}/get-graph-ql.sh

flutter pub run build_runner build --delete-conflicting-outputs

mv ${SCRIPT_DIR}/../lib/graphql/__generated__/schema.graphql ${SCRIPT_DIR}/../lib/graphql/schema.graphql
mv ${SCRIPT_DIR}/../lib/graphql/__generated__/todo.query.graphql ${SCRIPT_DIR}/../lib/graphql/todo.query.graphql
