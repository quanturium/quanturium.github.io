#!/bin/bash
cd $(dirname $(greadlink -f $0))
git add .
git commit -m "Update"
git push origin master
