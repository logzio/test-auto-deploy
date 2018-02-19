#!/usr/bin/env bash
echo '---------------------------------------------'
echo $TRAVIS_TAG
./mvnw verify -Drevision=$TRAVIS_TAG -Dgpg.skip
echo '---------------------------------------------'