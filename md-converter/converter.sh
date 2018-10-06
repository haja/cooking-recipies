#!/bin/bash

# TODO replace with proper impl, e.g. in python + plumbum https://plumbum.readthedocs.io/en/latest/

OUTFILE=alle.html
cat template/pre.html.part > $OUTFILE
markdown rezepte/*/*.md >> $OUTFILE
cat template/post.html.part >> $OUTFILE

