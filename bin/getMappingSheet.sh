#!/bin/bash
SDIR="$( cd "$( dirname "$0" )" && pwd )"
SAMPLEDIRS=$1
cat $SAMPLEDIRS | xargs -n 1 $SDIR/isPEorSERun.sh >sampleManifest 
$SDIR/cvtManifest2Mapfile.py sampleManifest
#rm sampleManifest
