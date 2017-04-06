#!/bin/bash

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag dockerlogstash_logstash:latest kurron/logstash:latest
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/logstash:latest
