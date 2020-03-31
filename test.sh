#!/usr/bin/env bash

# set -x
# set -v
IGNORE_FILENAMES=""
FILE_ERE="^\..{1,2}"
for FILE in $(find . \( -type f -o -type d \) 2>/dev/null); do
    FILE=${FILE##*/}
    if echo $FILE | egrep $FILE_ERE >/dev/null; then
        IGNORE_FILENAMES=$FILE:$IGNORE_FILENAMES
    fi
done

echo "Ignore: $IGNORE_FILENAMES"
