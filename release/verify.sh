#!/usr/bin/env bash
echo '-----------------TRAVIS_TAG-------------------'
echo $TRAVIS_TAG
./mvnw verify -Drevision=$TRAVIS_TAG -Dgpg.passphrase=Asia2307
echo '---------------------------------------------'