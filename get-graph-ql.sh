#!/bin/sh

readonly APPSYNC_APP_ID="pn7ri73nbvghhp73brqtc6m2sy"
aws appsync get-introspection-schema --api-id ${APPSYNC_APP_ID} --format SDL ./lib/graphql/__generated__/schema.graphql
