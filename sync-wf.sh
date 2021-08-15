#!/bin/bash

set -e


sync () {
  name=$1

  cd $name
  echo $name
  git fetch origin
  #git status
  git merge --ff-only origin/master
  changes=$(git status --porcelain)
  if [[ "$changes" != "" ]]
  then
    git add .
    git commit -m "Sync commit from $(uname --nodename)"
  fi
  git push --all --repo=origin
}

rm -rf /home/nick/snap;
sync /home/nick/workflow;
sync /home/nick/ref/books;
sync /home/nick/.scripts;
sync /home/nick/ref/sus-depot;
sync /home/nick/ref/personal-growth;
sync /home/nick/ref/entrepreneur;
sync /home/nick/ref/body/food;
sync /home/nick/ref/body/fitness;
sync /home/nick/ref/travel;
sync /home/nick/ref/past/relu;
sync /home/nick/ref/past/dsl;
sync /home/nick/ref/talks;
sync /home/nick/ref/CV;
sync /home/nick/ref/jobhunt;
sync /home/nick/ref/company;
sync /home/nick/ref/administration;
sync /home/nick/ref/network;
sync /home/nick/ref/strategy-consulting;
intray sync;
python3 /home/nick/Pictures/background/walltext.py &

# redshift &
