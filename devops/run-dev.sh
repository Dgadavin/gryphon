#!/usr/bin/env bash
set -eux
docker run \
    -p 3000:3000 \
    -e AWS_DEFAULT_PROFILE=glomex \
	-e DEBUG="1" \
	-e AWS_DEFAULT_REGION=eu-west-1 \
	-v "$(dirname "$(pwd)")":/web-server/ \
	-v ~/.aws:/root/.aws \
	-w /web-server/gryphon -i -t -P gryphon
