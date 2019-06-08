#!/bin/bash

# https://gist.github.com/mildmojo/48e9025070a2ba40795c
# needs apt install iio-sensor-proxy expect
# /usr/bin/monitor-sensor \
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

logger "rotate-touchscreen-launcher.sh: Init $DIR"

monitor-sensor \
| unbuffer -p grep -o -e right -e normal -e bottom -e left \
| unbuffer -p $DIR/rotate-touchscreen-loop.sh
