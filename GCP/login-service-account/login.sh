#!/bin/bash
echo "Login GCP"
echo "$GCP_JSON_FILE" > gcloud-service-account.json
gcloud auth activate-service-account --key-file=gcloud-service-account.json
ls -la
cat gcloud-service-account.json
echo "Login GCP project ${PROJECTID_GCP}"
gcloud config set project ${PROJECTID_GCP}
#export GOOGLE_APPLICATION_CREDENTIALS=gcloud-service-account.json
