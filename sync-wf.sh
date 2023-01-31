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

rm -rf /home/nick/snap
sync /home/nick/workflow
sync /home/nick/ref/personal-growth
sync /home/nick/ref/platonic/personal
sync /home/nick/ref/platonic/floorboard
sync /home/nick/ref/platonic/devils
sync /home/nick/ref/books
sync /home/nick/.scripts
sync /home/nick/.install
sync /home/nick/ref/entrepreneur
sync /home/nick/ref/body
sync /home/nick/ref/travel
sync /home/nick/ref/administration
sync /home/nick/ref/sus-depot
sync /home/nick/ref/network
sync /home/nick/ref/job
# sync /home/nick/ref/code/deployment
intray sync
rm -f ~/ref/personal-growth/personal/today.md
