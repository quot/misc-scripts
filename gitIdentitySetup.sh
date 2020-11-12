#!/usr/bin/env bash

# Pulled from this HN comment:
# https://news.ycombinator.com/item?id=25070300

git config --global --unset user.name
git config --global --unset user.email
git config --global --unset user.signingkey

git config --global user.useConfigOnly true

### Setup a new identity:
# git config --global user.<id>.name "<name>"
# git config --global user.<id>.email "<email>"

git config --global user.personal.name "Alex Coté"
git config --global user.personal.email "alex.cote@tuta.io"

git config --global user.work.name "Alex Coté"
git config --global user.work.email "acote@cspire.com"

git config --global alias.identity '! git config user.name "$(git config user.$1.name)"; git config user.email "$(git config user.$1.email)"; :'

### Run `git identity <id>` to set identity for current repo

