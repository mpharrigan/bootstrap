#!/bin/bash
git stash -q --keep-index

grunt dist
if [ $? -ne 0 ]
then
    exit 1
fi
git add dist/
git stash pop -q || true
