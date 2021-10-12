#!/bin/sh

readonly APPSYNC_APP_ID="5xobbu4x7nh57czzptsh4tks4u"
aws appsync get-introspection-schema --api-id ${APPSYNC_APP_ID} --format SDL ./lib/graphql/__generated__/schema.graphql
