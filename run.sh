#!/bin/bash

GENERATOR_CLI=./openapi-generator-cli.jar

if [[ ! -f ${GENERATOR_CLI} ]]; then
    wget http://central.maven.org/maven2/org/openapitools/openapi-generator-cli/4.1.3/openapi-generator-cli-4.1.3.jar -O openapi-generator-cli.jar
fi

#OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000"

java $OPTS -jar $GENERATOR_CLI generate \
         -i api.yaml \
         -g java \
         -o example
