#!/usr/bin/env python2.7

import sys
import fileinput
for line in fileinput.input():
    (folder,runType)=line.strip().split("\t")
    S=folder.split("/")
    out=["_1"]
    out.append("s_"+S[-1].replace("Sample_","").replace("-","_"))
    out.append(S[-3])
    out.append(folder)
    out.append(runType)
    print "\t".join(out)


