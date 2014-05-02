#!/usr/bin/python

import sys
import re
import os
from subprocess import check_output

if len(sys.argv) != 2:
    print "usage: "+sys.argv[0]+" <page>"
    exit(1)

if not os.path.exists("pages"):
    os.makedirs("pages")

outf = "pages/"+sys.argv[1]
if os.path.isfile(outf):
    print outf+" already crawled!"
    exit(0)

err = open("err.txt", "a")
out = check_output(["curl", "http://en.wikipedia.org/w/index.php?title=Special:Export&action=submit&pages="+sys.argv[1]], stderr=err)

it = out.find("<text")
if it < 0:
    o = open(outf, "w")
    o.close()
    err.write("\n" + out + "\n")
    err.close
    exit(0)

err.close

ite = out.index(">", it)

rest = out[ite+1:]
ie = rest.index("</text>")
text = rest[: ie]

links = re.findall(r"\[\[(.*?)\]\]", text)

o = open(outf, "w")
for link in links:
    ip = link.find("|")
    if ip >= 0:
        link = link[:ip]
    link = link.replace(" ", "_")
    if not (link.startswith("File:") or link.startswith("#") or link.startswith("http://")):
        ih = link.find("#")
        if ih >= 0:
            link = link[:ih]
        link = link.replace("/", ".2F")
        o.write(link + "\n")

o.close()
