#!/usr/bin/env python
# -*- coding: latin1 -*-

from doctest import *
import getopt, sys

verbose=False
try:
    opts, args = getopt.getopt(sys.argv[1:], "v", ["verbose"])
except getopt.GetoptError:
    pass
for o, a in opts:
    if o == "-v":
        verbose = True

testfile("testsuite.txt",
         verbose=verbose,
         optionflags=NORMALIZE_WHITESPACE|ELLIPSIS)
