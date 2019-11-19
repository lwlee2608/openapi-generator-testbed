#!/bin/bash

unset OPTS
#OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000"

GENERATOR_CLI=./openapi-generator-cli.jar
SPEC=TS29507_Npcf_AMPolicyControl.yaml
GENERATOR=java-vertx-web
OUT_DIR=java-vertx-web
VERSION=4.2.1


if [[ ! -f ${GENERATOR_CLI} ]]; then
    wget http://central.maven.org/maven2/org/openapitools/openapi-generator-cli/${VERSION}/openapi-generator-cli-${VERSION}.jar -O openapi-generator-cli.jar
fi

[[ -d $OUT_DIR ]] && rm -rf $OUT_DIR

java $OPTS -jar $GENERATOR_CLI generate \
         -i $SPEC \
         -g $GENERATOR \
         -o $OUT_DIR \
         --additional-properties ignoreAnyOfInEnum=true

