#!/bin/bash

mkdir deploy
cd deploy
git config --global user.email "Travis@travis.org"
git config --global user.name "Travis CI"
git clone --quiet https://${GITHUB_TOKEN}@github.com/Akromx16/Akromx16.github.io.git
cd Akromx16.github.io
ls
rm -rf remote
ls
cp -r ../../remote .
ls
git add remote
git status
git commit -m "Deployed by Travis"
git log
git push --force --quiet origin master
