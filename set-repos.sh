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
setRepo platonic-systems ref/platonic/personal
setRepo books ref/books
setRepo scripts .scripts
setRepo entrepreneurship ref/entrepreneur
setRepo body ref/body
setRepo travel ref/travel
setRepo CV ref/CV
setRepo ref/jobhunt
setRepo ref/company
setRepo ref/administration
setRepo ref/network
