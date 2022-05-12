#!/bin/bash

set -e

repo=~/tmp

setRepo () {
  name=$1
  directory=$2
  mkdir -p $repo/$directory
  git clone git@github.com:CSVdB/$name.git $repo/$directory --recursive
}

setRepo my_workflow workflow
setRepo personal-growth ref/personal-growth
setRepo platonic-systems ref/platonic/personal
setRepo books ref/books
setRepo scripts .scripts
setRepo entrepreneurship ref/entrepreneur
setRepo body ref/body
setRepo travel ref/travel
setRepo administration ref/administration
setRepo network ref/network
setRepo PACT-deployment ref/code/deployment
setRepo PACT-personal ref/pact
setRepo platonic ref/platonic
git clone git@github.com:NorfairKing/salsa.git $repo/ref/code/salsa
