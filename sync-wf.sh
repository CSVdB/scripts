#!/bin/bash

set -e
set -x


sync () {
  if [[ $1 == '' ]]
    then name='origin'
    else name=$1
  fi

  git fetch $name
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

cd ~/workflow
sync
cd ~/.wolf
sync
cd ~/scripts
sync 
cd ~/ref/sus-depot
sync 
cd ~/ref/personal_growth
sync 
cd ~/ref/food
sync 
cd ~/ref/fitness
sync 
cd ~/ref/talks
sync 
cd ~/ref/CV
sync 
cd ~/ref/website
sync 
cd ~/ref/swe/jobhunt
sync 
cd ~/ref/company
sync 
cd ~/ref/swe
sync 
cd ~/lumiguide
sync 
intray sync
