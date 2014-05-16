#!/usr/bin/python

import sys
import re
import os
from subprocess import check_output

if len(sys.argv) < 2 or len(sys.argv) > 3:
    print "usage: "+sys.argv[0]+" <output> [<filter>]"
    exit(1)

outf = sys.argv[1]

if len(sys.argv) >= 3:
    fil = sys.argv[2].lower()
else:
    fil = ""

matrix = {}
for f in os.listdir("authors"):
    a = open("authors/" + f, "r")
    lines = set(a.readlines())
    a.close()
    for line in lines:
        if fil and (line.lower().find(fil) >= 0):
            continue
        for other in lines:
            if fil and (other.lower().find(fil) >= 0):
                continue
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
