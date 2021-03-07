#!/bin/bash

set -e


sync () {
  name=$1

  cd $name
  git fetch origin
  git status
  git merge --ff-only origin/master
  changes=$(git status --porcelain)
  if [[ "$changes" != "" ]]
  then
    git add .
    git commit -m "Sync commit from $(uname --nodename)"
  fi
  git push --all --repo=origin
}

sync ~/workflow;
sync ~/ref/books;
sync ~/ref/sus-depot/shared/scripts;
sync ~/ref/sus-depot;
sync ~/ref/personal-growth;
sync ~/ref/body/food;
sync ~/ref/travel;
sync ~/ref/body/fitness;
sync ~/ref/relu;
sync ~/ref/talks;
sync ~/ref/CV;
sync ~/ref/jobhunt;
sync ~/ref/company;
# sync ~/ref/big-company;
sync ~/ref/administration;
sync ~/.scripts;
intray sync;
rm -rf ~/snap;
rm -rf ~/NoMachine;

# redshift &
