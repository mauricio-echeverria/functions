#!/bin/bash
echo "Login GCP"
echo "$GCP_JSON_FILE" > /tmp/gcloud-service-account.json
gcloud auth activate-service-account --key-file=/tmp/gcloud-service-account.json
gcloud config set project ${PROJECTID_GCP}
export GOOGLE_APPLICATION_CREDENTIALS=/tmp/gcloud-service-account.json
