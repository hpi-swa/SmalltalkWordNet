#!/bin/bash

WORDNET_URL="http://wordnetcode.princeton.edu/3.0/WNprolog-3.0.tar.gz"

wget $WORDNET_URL
tar -xf WNprolog-3.0.tar.gz
mv prolog ${SMALLTALK_CI_BUILD}/wordnet 

exit 0
