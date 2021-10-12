#!/bin/sh

readonly APPSYNC_APP_ID="smqj3iav7bdtpngd2iglug6xuu"
aws appsync get-introspection-schema --api-id ${APPSYNC_APP_ID} --format SDL ./lib/graphql/__generated__/schema.graphql
