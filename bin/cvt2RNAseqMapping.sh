#!/bin/bash

SAMPLEDIRS=$1

cat $SAMPLEDIRS | pyp 's[-1]' | sed 's/Sample_/s_/' >sampleNames
paste sampleNames $SAMPLEDIRS

