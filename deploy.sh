#!/bin/bash

echo -e "\033[0;32mDeploying updates...\033[0m"

# Build the project.
jekyll build
# Go To generator folder
cd _site
# Add changes to git.
git add .
# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
# Push source and build repos.
git push origin master
# Come Back up to the Project Root
cd ..
# add main folder
git add .
git commit -m "$msg"
git push origin master
