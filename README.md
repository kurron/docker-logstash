# Overview
This project launches a Logstash service inside a Docker
container.  The configuration expects to forward the logging
data in Amazon's Elasticsearch Service.

# Prerequisites
* Valid set of AWS keys
* `aws configure` has been run
* a working Elasticsearch domain
* run `aws es list-domain-names` to verify your setup
* working Docker Engine installation

# Building
This project is just a collection of convenience scripts so
there is nothing to build.

# Installation
Nothing to install.

# Tips and Tricks

## Starting The Server
1. `./run-logstash-server.sh <my-elasticsearch-domain>` using one of the search domains
1. send your tracing calls to `localhost:9411`

## Configuring The Server
The `pipeline` and `config` directories hold the configuration files that get mounted into the container. You'll
need to modify those to point to an appropriate Elasticsearch instance.

# Troubleshooting

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

# List of Changes
