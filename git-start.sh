#!/bin/bash

echo "# tools" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ozirichigozie/tools.git
git push -u origin main
