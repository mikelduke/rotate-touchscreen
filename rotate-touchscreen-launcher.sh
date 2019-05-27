#!/bin/bash

# https://gist.github.com/mildmojo/48e9025070a2ba40795c
# needs apt install iio-sensor-proxy expect
# /usr/bin/monitor-sensor \
monitor-sensor \
| unbuffer -p grep -o -e right -e normal -e bottom -e left \
| unbuffer -p ./rotate-touchscreen-loop.sh
