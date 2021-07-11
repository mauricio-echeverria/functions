#!/bin/bash

echo "*************************************************"
gcloud config set project ${PROJECTID_GCP}
echo "Login Service Account GCP project ${PROJECTID_GCP}"
echo "$GCP_JSON_FILE" > gcloud-service-account.json
gcloud auth activate-service-account --key-file=gcloud-service-account.json
#export GOOGLE_APPLICATION_CREDENTIALS=gcloud-service-account.json
