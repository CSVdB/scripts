#!/bin/bash

set -e

setRepo () {
  name=$1
  directory=$2
  mkdir -p ~/tmp/$directory
  git clone git@github.com:CSVdB/$name.git ~/tmp/$directory
}

setRepo my_workflow workflow
setRepo personal-growth personal-growth
setRepo ref/platonic/personal
setRepo ref/books
setRepo .scripts
setRepo ref/entrepreneur
setRepo ref/body
setRepo ref/travel
setRepo ref/CV
setRepo ref/jobhunt
setRepo ref/company
setRepo ref/administration
setRepo ref/network
