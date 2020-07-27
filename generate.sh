#!/bin/bash

head -n $(grep -n '<!-- drop -->' README.md | cut -f1 -d:) README.md

COUNT=$(find . -name "*.md" -depth 2 | wc -l | bc)
echo -e "$COUNT TILs so far.\n"

DIRS=$(find . -name "*.md" -depth 2 -exec dirname {} \; | sed 's/\.\///' | sort -u)
for D in $DIRS; do
    echo "## $D" | tr '[:lower:]' '[:upper:]'
    for F in $(find $D -name "*.md"); do
        head -n 1 "$F" | sed -e "s/\# \(.*\)/ - [\1]/" | tr '\n' '('; echo "$F)";
    done
    echo ""
done
