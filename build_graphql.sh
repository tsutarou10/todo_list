#!/bin/sh

rm -rf ./lib/graphql/__generated__/*
rm -rf lib/graphql/schema.graphql
mv lib/graphql/todo.query.graphql lib/graphql/__generated__/todo.query.graphql

./get-graph-ql.sh

flutter pub run build_runner build

mv lib/graphql/__generated__/schema.graphql lib/graphql/schema.graphql
mv lib/graphql/__generated__/todo.query.graphql lib/graphql/todo.query.graphql
