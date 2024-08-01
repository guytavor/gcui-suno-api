#!/bin/bash
export GOOGLE_APPLICATION_CREDENTIALS=~/secrets/jukee-1-f9bd1225c645.json
export DOCKER_DEFAULT_PLATFORM=linux/amd64
docker compose build
gcloud auth login
gcloud config set project jukee-1
docker tag gcui-suno-api-suno-api:latest gcr.io/jukee-1/suno_api:v1.0
docker push gcr.io/jukee-1/suno_api:v1.0
gcloud container images list --repository=gcr.io/jukee-1
