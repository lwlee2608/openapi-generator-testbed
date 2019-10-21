#!/bin/bash

#OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000"

GENERATOR_CLI=$1

java $OPTS -jar $GENERATOR_CLI generate \
         -i api.yaml \
         -g java \
         -o example
