#!/bin/bash

GATLING_REPORT="$(/opt/gatling/bin/gatling.sh --run-description "$(date -Iseconds)" | grep "Please open" | cut -d'/' -f5)"

aws s3 sync /opt/gatling/results/ s3://awshackathon2018-team46/gatling/ --exclude ".keep"

echo "Please visit https://s3.us-east-2.amazonaws.com/awshackathon2018-team46/gatling/${GATLING_REPORT}/index.html to view report."
