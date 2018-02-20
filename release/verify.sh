#!/usr/bin/env bash
echo 'prepare private key to import'
openssl aes-256-cbc  -in release/codesigning.asc.enc -out release/codesigning.asc -d -k $CODESIGNING
gpg --fast-import release/codesigning.asc
echo 'Release version '$TRAVIS_TAG
./mvnw verify -Drevision=$TRAVIS_TAG -Dgpg_key=$GPG_KEY -Dgpg.passphrase=$GPG_PASSPHRASE
rm release/codesigning.asc
