#!/usr/bin/python

import sys
import re
import os
from subprocess import check_output

if len(sys.argv) != 2:
    print "usage: "+sys.argv[0]+" <output>"
    exit(1)

outf = sys.argv[1]

matrix = {}
for f in os.listdir("authors"):
    a = open("authors/" + f, "r")
    lines = set(a.readlines())
    a.close()
    for line in lines:
        for other in lines:
            if line != other:
                if line < other:
                    a = line
                    b = other
                else:
                    a = other
                    b = line
                if a not in matrix:
                    matrix[a] = {}
                if b not in matrix[a]:
                    matrix[a][b] = 1
                else:
                    matrix[a][b] = matrix[a][b] + 1

o = open(outf, "w")
for (k1, row) in matrix.items():
    for (k2, value) in row.items():
        if value > 5:
            o.write('"' + k1.strip() + '";"' + k2.strip() + '";"' + str(value) + '"\n')

o.close()
