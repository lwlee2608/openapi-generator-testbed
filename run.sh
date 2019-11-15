#!/bin/bash

GENERATOR_CLI=./openapi-generator-cli.jar

if [[ ! -f ${GENERATOR_CLI} ]]; then
    wget http://central.maven.org/maven2/org/openapitools/openapi-generator-cli/4.2.0/openapi-generator-cli-4.2.0.jar -O openapi-generator-cli.jar
fi

unset OPTS
#OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000"

SPEC=TS29507_Npcf_AMPolicyControl.yaml
GENERATOR=java-vertx-web
OUT_DIR=java-vertx-web

[[ -d $OUT_DIR ]] && rm -rf $OUT_DIR

java $OPTS -jar $GENERATOR_CLI generate \
         -i $SPEC \
         -g $GENERATOR \
         -o $OUT_DIR \
         --additional-properties ignoreAnyOfInEnum=true

