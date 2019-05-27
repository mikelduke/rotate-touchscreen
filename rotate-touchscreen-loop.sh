#!/bin/bash

while read line
do
    if [ "$line" != "" ] ; then
        # echo "$line";
        ./rotate-touchscreen.sh "$line";
    fi
done < /dev/stdin
