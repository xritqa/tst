#! /usr/bin/env python

import sys

def main():
  if len(sys.argv) != 2:
    print "usage: ", sys.argv[0], "<filename>"
  else:
    cfile(sys.argv[1])

def cfile(arg):
  counter = 0
  f = open(arg,'r')
  for line in f:
    # token = line.split(',') # comma as delimiter
    token = line.split()
    for word in token:
      print word
      counter = counter + 1
  print 'counter:',counter
  f.close()

if __name__ == '__main__':
  main()

