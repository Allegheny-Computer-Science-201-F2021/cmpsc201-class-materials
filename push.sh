#!/bin/bash
rm -rf Week6/lab/cmpsc201-fall-21-lab05/.git
git rm -rf --cached Week6/lab/cmpsc201-fall-21-lab05
git add .
git commit -m "added lab5"
git push
