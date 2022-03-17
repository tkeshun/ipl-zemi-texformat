#!/bin/sh
FILEMAME="report"
platex ${FILENAME}.tex
platex ${FILENAME}.tex
dvipdfmx ${FILENAME}.dvi
