#!/bin/bash

set -e

setRepo () {
  name=$1
  directory=$2
  mkdir -p ~/$directory
  git clone git@github.com:CSVdB/$name.git ~/$directory
}

setRepo my_workflow tmp/workflow
