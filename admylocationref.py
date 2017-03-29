#! /usr/bin/env python

import sys

def main():
  if len(sys.argv) != 2:
    print "usage: ", sys.argv[0], "<filename>"
  else:
    xref(sys.argv[1])

def xref(arg):
  xyzcounter = 0
  infocounter = 0
  f = open(arg,'r')
  for eachline in f:
    if eachline.find('ref=admylocation.info') >= 0:
      infocounter = infocounter + 1
    elif eachline.find('ref=admylocation.xyz') >= 0:
      xyzcounter = xyzcounter + 1

  print 'admylocation.info counter:',infocounter
  print 'admylocation.xyz counter:', xyzcounter
  f.close()

if __name__ == '__main__':
  main()

