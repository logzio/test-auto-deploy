#!/usr/bin/env bash
echo '-----------------TRAVIS_TAG-------------------'
echo $TRAVIS_TAG
./mvnw verify -Drevision=$TRAVIS_TAG -Dgpg.skip
echo '---------------------------------------------'