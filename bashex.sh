#! /usr/bin/env bash

if test $# == 0  # note: = -eq
then
  echo "$0 <arg>"
elif test $# != 1
then
  echo "Your arg: $@"
else
  echo "Your arg is: $1"
fi
