#!/bin/bash

# For each file that has changed, create a fixup! commit for the last commit which changed that file
# This is useful when you've committed a bunch of work across multiple files,
# and you want to run an autoformatter, but you don't want to create a commit just for fixing formatting

git diff --name-only | while read filename;
do
  commit_sha=$(git log --pretty=format:"%H" "$filename" | head -n 1);
  git add "$filename" && git commit -m "fixup! $commit_sha"
done
