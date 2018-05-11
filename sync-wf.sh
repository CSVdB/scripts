#!/bin/bash

set -e
set -x


sync () {
  name=$1
  sep=$2
  runGit () {
    if [[ "$name" == "" ]]
    then
        git "$@"
    else
        $name git $1 $sep "${@:2}"
    fi
  }

  runGit fetch origin
  runGit status
  runGit merge --ff-only origin/master
  changes=$(runGit status --porcelain)
  if [[ "$changes" != "" ]]
  then
    runGit add .
    runGit commit -m "Sync commit from $(uname --nodename)"
  fi
  runGit push
}

cd ~/.wolf
sync
cd ~/workflow
sync
cd ~/scripts
sync 
cd ~/ref/sus-depot
sync 
cd ~/ref/personal_growth
sync 
cd ~/ref/food
sync 
cd ~/ref/talks
sync 
