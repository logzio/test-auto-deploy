#!/usr/bin/env bash
echo '-----------------TRAVIS_TAG-------------------'
gpg --fast-import release/keys
echo $TRAVIS_TAG
echo $GPGKEY
./mvnw verify -Drevision=$TRAVIS_TAG -Dgpg.passphrase=$GPG_PASSPHRASE
echo '---------------------------------------------'