#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail

job-run-aggregator analyze-job-runs \
  --google-oauth-credential-file=${GOOGLE_OAUTH_CREDENTIAL_FILE} \
  --job=${VERIFICATION_JOB_NAME} --payload-tag=${PAYLOAD_TAG} \
  --job-start-time=${JOB_START_TIME} \
  --working-dir=${WORKING_DIR}