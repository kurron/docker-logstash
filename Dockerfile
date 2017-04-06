FROM docker.elastic.co/logstash/logstash:5.3.0

MAINTAINER Ron Kurr "kurr@jvmguy.com"

COPY config/jvm.options /usr/share/logstash/config/jvm.options
COPY config/logstash.yml /usr/share/logstash/config/logstash.yml
COPY pipeline/ /usr/share/logstash/pipeline/
