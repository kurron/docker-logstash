#!/bin/bash

# Will connect to an Amazon Elasticsearch Service

ES_DOMAIN=${1:-phoenix}

# I am using host networking to make exposing ports easier.
# If you know exactly what inboud ports the pipeline files require, you can specify them explicitly instead
docker run --detach \
           --interactive \
           --tty \
           --name logstash \
           --net host \
           --volume $(pwd)/pipeline:/usr/share/logstash/pipeline/:ro \
           --volume $(pwd)/config/jvm.options:/usr/share/logstash/config/jvm.options:ro \
           --volume $(pwd)/config/logstash.yml:/usr/share/logstash/config/logstash.yml:ro \
           docker.elastic.co/logstash/logstash:5.3.0

docker logs --follow logstash

