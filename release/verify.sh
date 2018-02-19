#!/usr/bin/env bash
echo '-----------------TRAVIS_TAG-------------------'
echo $TRAVIS_TAG
echo @GPG_KEY
./mvnw verify -Drevision=$TRAVIS_TAG -Ggpg_key=$GPG_KEY -Dgpg.skip
echo '---------------------------------------------'