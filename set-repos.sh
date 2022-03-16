#!/bin/bash

set -e

setRepo () {
  name = $1
  directory = $2
  git clone git@github.com:CSVdB/$name.git $directory
}

setRepo my_workflow workflow
