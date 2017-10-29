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

#sync /home/nick/.local/bin/wolf "--"
#sync pass
#cd /home/nick/workflow
#sync 
#cd /home/nick/ref/sus-depot
#sync 
#cd /home/nick/scripts
#sync 
