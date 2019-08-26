#!/bin/bash

set -e
set -x


sync () {
  name=$1

  cd $name
  git fetch origin
  git status
  git merge --ff-only $name/master
  changes=$(git status --porcelain)
  if [[ "$changes" != "" ]]
  then
    git add .
    git commit -m "Sync commit from $(uname --nodename)"
  fi
  git push --all --repo=$name
}

sync ~/workflow
sync ~/ref/books
sync ~/.wolf
sync ~/ref/sus-depot/shared/scripts
sync ~/ref/sus-depot
sync ~/ref/personal_growth
sync ~/ref/food
sync ~/ref/travel
sync ~/ref/fitness
sync ~/ref/talks
sync ~/ref/CV
sync ~/ref/website
sync ~/ref/past/swe/jobhunt
sync ~/ref/company
sync ~/ref/big-company
sync ~/ref/administration
intray sync
