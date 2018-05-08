#!/usr/bin/env bash
docker run \
  -e AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID> \
  -e AWS_DEFAULT_REGION=<AWS_DEFAULT_REGION> \
  -e AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY> \
  -p 3000:3000 \
  --name=gryphon \
  businessoptics/gryphon