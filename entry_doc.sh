#!/bin/sh

### Documentation ###

# The documentation is written using stampo (see https://github.com/digitalfondue/stampo).
# It currently reside in src/main/stampo .

echo "For building the doc:"

mvn clean stampo:build


# The output will be present in target/generated-docs

echo "For testing the documentation run"

mvn stampo:serve

echo "And go to http://localhost:45001/"