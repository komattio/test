#!/bin/sh

mkdir `date '+%Y%m%d'`
touch `date '+%Y%m%d'`/`date '+%Y%m%d'`.txt
echo `date '+%Y%m%d'` > `date '+%Y%m%d'`/`date '+%Y%m%d'`.txt

git add .
git commit -m "add"
git push origin master 
