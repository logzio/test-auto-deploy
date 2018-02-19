#!/usr/bin/env bash
echo '-----------------TRAVIS_TAG-------------------'
echo $TRAVIS_TAG
echo $GPG_KEY
./mvnw verify -Drevision=$TRAVIS_TAG -Dgpg_key=$GPG_KEY -Dgpg.passphrase=$GPG_PASSPHRASE
echo '---------------------------------------------'