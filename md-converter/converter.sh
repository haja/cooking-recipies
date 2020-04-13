#!/bin/bash

# TODO replace with proper impl, e.g. in python + plumbum https://plumbum.readthedocs.io/en/latest/

OUTFILE=alle.html
cat template/pre.html.part > $OUTFILE
for f in rezepte/*/*.md; do
    markdown "$f" >> $OUTFILE
done
cat template/post.html.part >> $OUTFILE

