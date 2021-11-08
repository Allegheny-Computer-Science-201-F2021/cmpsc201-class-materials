#!/bin/bash
rm -rf Week12/cmpsc201-fall-21-lab09/.git
git rm -rf --cached Week12/cmpsc201-fall-21-lab09
git add .
git commit -m "added lab9 draft"
git push
