#!/bin/bash
rm -rf Week7/lab/cmpsc201-fall-21-lab06/.git
git rm -rf --cached Week7/lab/cmpsc201-fall-21-lab05
git add .
git commit -m "added lab5"
git push
