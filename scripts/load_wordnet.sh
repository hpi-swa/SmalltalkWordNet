#!/bin/bash

WORDNET_URL="http://wordnetcode.princeton.edu/3.0/WNprolog-3.0.tar.gz"

wget $WORDNET_URL
tar -xzf WNprolog-3.0.tar.gz
mkdir -p ${SMALLTALK_CI_BUILD}/wordnet
mv prolog/ ${SMALLTALK_CI_BUILD}/wordnet 

exit 0
