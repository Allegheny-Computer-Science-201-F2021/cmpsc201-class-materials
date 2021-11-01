#!/bin/bash
rm -rf Week11/cmpsc201-fall-21-lab08/.git
git rm -rf --cached Week11/cmpsc201-fall-21-lab08
git add .
git commit -m "added lab8"
git push
