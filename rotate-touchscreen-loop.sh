#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

while read line
do
    if [ "$line" != "" ] ; then
        # echo "$line";
        $DIR/rotate-touchscreen.sh "$line";
    fi
done < /dev/stdin
